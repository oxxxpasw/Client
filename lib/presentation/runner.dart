import 'dart:async';

import 'package:easy_localization/easy_localization.dart' hide TextDirection;
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_displaymode/flutter_displaymode.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/bloc_observer.dart';
import 'package:sosedifedi/config.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/firebase_options.dart';
import 'package:sosedifedi/generated/codegen_loader.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/application.dart';
import 'package:sosedifedi/presentation/runner.config.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/domain/interactor/startup_interactor.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/router/guards/auth_guard.dart';
import 'package:sosedifedi/presentation/router/guards/city_guard.dart';
import 'package:sosedifedi/presentation/router/guards/has_unfinished_purchase_guard.dart';
import 'package:sosedifedi/presentation/router/guards/has_unpaid_order_guard.dart';
import 'package:sosedifedi/presentation/router/guards/init_guard.dart';
import 'package:sosedifedi/presentation/router/router_module.dart';
import 'package:sosedifedi/utils/flavor/flavor.dart';
import 'package:sosedifedi/utils/splash_control.dart';

enum FlavorKeys {
  test('apptest'),
  release('apprelease'),
  googlePlay('googleplay'),
  appGallery('appgallery'),
  ruStore('rustore');

  const FlavorKeys(this.key);

  final String key;
}

///Метод инициализации GetIt
@InjectableInit(
  initializerName: r'$initGetIt',
  preferRelativeImports: true,
  asExtension: false,
)
class Runner {
  static final _injectableInitCompleter = Completer<void>();

  static Future<void> get injectableInitFuture =>
      _injectableInitCompleter.future;

  static Future<void> run() async {
    runZonedGuarded(
      () async {
        print('MILESTONE 1: WidgetsBinding initialized');
        final appEnvironment = await getEnv();
        print('MILESTONE 2: Env retrieved: ${appEnvironment.configType}');
        try {
          await initializeFlutterPluginsAndDependencies(
            appEnvironment: appEnvironment,
          );
          print('MILESTONE 3: Plugins and dependencies initialized');
        } catch (e, stack) {
          // ignore: avoid_print
          print('Plugins init error: $e $stack');
        }
        ErrorWidget.builder = (FlutterErrorDetails details) {
          // ignore: avoid_print
          print('FLUTTER BUILD ERROR: ${details.exception}\n${details.stack}');
          return Material(
            child: Container(
              color: const Color(0xFF880000),
              padding: const EdgeInsets.all(16),
              alignment: Alignment.center,
              child: SingleChildScrollView(
                child: Text(
                  'BUILD ERROR:\n${details.exception}\n\n${details.stack}',
                  style: const TextStyle(color: Colors.white, fontSize: 11),
                ),
              ),
            ),
          );
        };
        FlutterError.onError = (FlutterErrorDetails details) {
          // ignore: avoid_print
          print('FLUTTER ROOT ERROR: ${details.exception}\n${details.stack}');
        };
        SplashControl.remove();
        Bloc.observer = CustomBlocObserver();
        print('MILESTONE 4: Calling runApp');
        return runApp(
          Builder(
            builder: (context) {
              final child = EasyLocalization(
                supportedLocales: const [Locale('ru')],
                path: 'assets/translations',
                fallbackLocale: const Locale('ru'),
                useOnlyLangCode: true,
                assetLoader: const CodegenLoader(),
                child: Application(
                  appEnvironment: appEnvironment,
                ),
              );
              if (appEnvironment.configType == ConfigType.release) {
                return child;
              }
              return Directionality(
                textDirection: TextDirection.ltr,
                child: Banner(
                  message: 'TEST',
                  location: BannerLocation.topStart,
                  child: child,
                ),
              );
            },
          ),
        );
      },
      (Object error, StackTrace stack) {
        // ignore: avoid_print
        print('ROOT ZONE ERROR: $error\n$stack');
        if (GetIt.I.isRegistered<AnalystService>()) {
          GetIt.I.get<AnalystService>().error('$error\n$stack');
        }
      },
      zoneSpecification: const ZoneSpecification(
        print: _print,
      ),
    );
  }

  static void _print(Zone self, ZoneDelegate parent, Zone zone, String line) {
    parent.print(zone, line);
  }

  static Future<AppEnvironment> getEnv() async {
    // Параметры окружения переданные при сборке/запуске проекта
    const debugInstrumentsEnv = bool.fromEnvironment('debugInstruments');
    const geocoderApiKeyEnv = String.fromEnvironment('GEOCODER_API_KEY');

    WidgetsFlutterBinding.ensureInitialized();

    final env = await FlavorApi.instance.containsKey(FlavorKeys.test.key)
        ? testAppEnvironment
        : releaseAppEnvironment;

    const buildType = !kReleaseMode || debugInstrumentsEnv
        ? BuildType.debug
        : BuildType.release;

    return env.copyWith(
      buildType: buildType,
      debugOptions: const DebugOptions(
        debugShowCheckedModeBanner: buildType == BuildType.debug,
      ),
      debugPaintOptions: const DebugPaintOptions(),
      geocoderApiKey:
          geocoderApiKeyEnv.isEmpty ? env.geocoderApiKey : geocoderApiKeyEnv,
    );
  }

  static Future<void> initializeFlutterPluginsAndDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    FlutterError.onError = (FlutterErrorDetails details) {
      FlutterError.presentError(details);
      try {
        GetIt.I
            .get<AnalystService>()
            .error('${details.exception}\n${details.stack}');
      } catch (_) {}
    };
    configureSystemChrome();

    try {
      await EasyLocalization.ensureInitialized();
    } catch (_) {}

    try {
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      ).timeout(const Duration(seconds: 3));
    } catch (e) {
      // ignore: avoid_print
      print('Firebase init: $e');
    }

    await configureDependencies(appEnvironment: appEnvironment);

    try {
      if (GetIt.I.isRegistered<StartupInteractor>()) {
        await GetIt.I.get<StartupInteractor>().initialize();
      }
    } catch (e) {
      // ignore: avoid_print
      print('StartupInteractor init error: $e');
    }

    try {
      await configureNotifications();
    } catch (_) {}

    try {
      await setRefreshRate();
    } catch (_) {}
  }

  static Future<void> configureDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);
    try {
      await $initGetIt(
        GetIt.instance,
        environment: appEnvironment.buildType.getItEnvironmentKey,
      );
    } catch (e, stack) {
      // ignore: avoid_print
      print('GetIt init warning: $e\n$stack');
    }
    if (!GetIt.I.isRegistered<AppRouter>()) {
      try {
        SharedPreferences prefs;
        if (GetIt.I.isRegistered<SharedPreferences>()) {
          prefs = GetIt.I.get<SharedPreferences>();
        } else {
          prefs = await SharedPreferences.getInstance();
          GetIt.I.registerSingleton<SharedPreferences>(prefs);
        }
        final authGuard = GetIt.I.isRegistered<AuthGuard>()
            ? GetIt.I.get<AuthGuard>()
            : AuthGuard(isAuthorized: () => false, prefs: prefs);
        final initGuard = GetIt.I.isRegistered<InitGuard>()
            ? GetIt.I.get<InitGuard>()
            : InitGuard(isInited: () => true);
        final cityGuard = GetIt.I.isRegistered<CityGuard>()
            ? GetIt.I.get<CityGuard>()
            : CityGuard(hasCity: () => false, prefs: prefs);
        final hasUnpaid = GetIt.I.isRegistered<HasUnpaidOrderGuard>()
            ? GetIt.I.get<HasUnpaidOrderGuard>()
            : HasUnpaidOrderGuard(hasUnpaidOrder: () => false);
        final hasUnfinished = GetIt.I.isRegistered<HasUnfinishedPurchaseGuard>()
            ? GetIt.I.get<HasUnfinishedPurchaseGuard>()
            : HasUnfinishedPurchaseGuard(hasUnfinishedPurchase: () => false);
        GetIt.I.registerSingleton<AppRouter>(
          AppRouter(
            authGuard: authGuard,
            initGuard: initGuard,
            cityGuard: cityGuard,
            hasUnpaidOrderGuard: hasUnpaid,
            hasUnfinishedPurchaseGuard: hasUnfinished,
          ),
        );
      } catch (e) {
        // ignore: avoid_print
        print('Manual AppRouter fallback registration: $e');
      }
    }
    _injectableInitCompleter.complete();
  }

  static void configureSystemChrome() {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.edgeToEdge);
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  }

  static Future<void> configureNotifications() async {
    const AndroidNotificationChannel channel = AndroidNotificationChannel(
      'high_importance_sosedifedi_channel',
      'High Importance Notifications',
      description: 'This channel is used for important notifications.',
      importance: Importance.max,
    );
    final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
        FlutterLocalNotificationsPlugin();
    await flutterLocalNotificationsPlugin
        .resolvePlatformSpecificImplementation<
            AndroidFlutterLocalNotificationsPlugin>()
        ?.createNotificationChannel(channel);
  }

  static Future<void> setRefreshRate() async {
    try {
      if (defaultTargetPlatform == TargetPlatform.android) {
        await FlutterDisplayMode.setHighRefreshRate();
      }
    } catch (error, stack) {
      GetIt.I.get<AnalystService>().error('$error\n$stack');
    }
  }
}
