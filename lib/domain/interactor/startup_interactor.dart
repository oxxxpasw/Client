import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/barcode_parser_repository/barcode_parser_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/data/repository/fridge_repository.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/data/repository/unpaid_orders_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/data/services/push_notification_service.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/router/current_route_to_stream_observer.dart';
import 'package:sosedifedi/presentation/router/guards/auth_guard.dart';
import 'package:sosedifedi/presentation/router/guards/has_unpaid_order_guard.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:synchronized/synchronized.dart';

/// Протокол для работы с репозиторием, отвечающим за состояния инициализации приложения
abstract class StartupInteractor {
  Future<DefaultResponse<void>> initialize();

  Future<void> dispose();

  Future<String?> getInitialDeepLink();

  bool isInited();
}

/// Базовая реализация [StartupInteractor]
@Singleton(as: StartupInteractor)
class StartupInteractorImpl implements StartupInteractor {
  bool _isInited = true;

  @override
  bool isInited() => true;

  @protected
  final AuthRepository authRepository;
  @protected
  final CartRepository cartRepository;
  @protected
  final AssortmentRepository productsRepository;
  @protected
  final AuthGuard authGuard;
  @protected
  final HasUnpaidOrderGuard hasUnpaidOrderGuard;
  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  final CityRepository cityRepository;
  @protected
  final FridgeRepository fridgeRepository;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final AnalystService analystService;
  @protected
  final CurrentRouteToStreamObserver currentRouteToStreamObserver;
  @protected
  final RemoteConfigRepository remoteConfigRepository;
  @protected
  final UnpaidOrdersRepository unpaidOrdersRepository;
  @protected
  final BarcodeParserRepository barcodeParserRepository;

  final Lock _initializeLock = Lock();
  final CompositeSubscription _compositeSubscription = CompositeSubscription();

  StartupInteractorImpl({
    required this.authRepository,
    required this.authGuard,
    required this.cartRepository,
    required this.productsRepository,
    required this.customerAccountRepository,
    required this.cityRepository,
    required this.fridgeRepository,
    required this.appEnvironment,
    required this.analystService,
    required this.currentRouteToStreamObserver,
    required this.remoteConfigRepository,
    required this.unpaidOrdersRepository,
    required this.barcodeParserRepository,
    required this.hasUnpaidOrderGuard,
  });

  @override
  Future<DefaultResponse<void>> initialize() => _initializeLock.synchronized(
        () async {
          try {
            _listenGlobalBroadcasts();
            try {
              await Future.wait([
                authRepository.init(),
                cityRepository.init(),
                barcodeParserRepository.init(),
              ]).timeout(
                const Duration(seconds: 4),
                onTimeout: () => [],
              );
            } catch (_) {}
            _isInited = true;
            return const ApiResponse.success(null);
          } catch (e) {
            return ApiResponse.error(CommonResponseError.undefinedError(e));
          }
        },
      );

  @override
  @disposeMethod
  Future<void> dispose() async {
    await _compositeSubscription.cancel();
  }

  void _listenGlobalBroadcasts() {
    _compositeSubscription.add(
      authRepository.tokenStream.listen((auth) {
        GetIt.I.get<AppRouter>().reevaluateGuards();
        customerAccountRepository.setUser(auth?.user);
        fridgeRepository.user = auth?.user;
        // UserX.setUserId(auth?.user.userId ?? '');
        unpaidOrdersRepository.refreshUnpaidOrder();
      }),
    );
    // _compositeSubscription.add(
    //   currentRouteToStreamObserver.currentRouteStream.listen(
    //     (event) {
    //       UserX.addScreenName(event.settings.name ?? '');
    //     },
    //   ),
    // );
    // _compositeSubscription.add(
    //   remoteConfigRepository.configStream.listen(
    //     (config) {
    //       if (config.userXEnabled && !_hasUserXSeesion && !kDebugMode) {
    //         UserX.start(appEnvironment.userXApiKey);
    //         _hasUserXSeesion = true;
    //       }
    //     },
    //   ),
    // );
    _compositeSubscription.add(
      unpaidOrdersRepository.unpaidOrderStream.listen(
        (event) {
          GetIt.I.get<AppRouter>().reevaluateGuards();
        },
      ),
    );
  }

  ///call only after [initialize]
  @override
  Future<String?> getInitialDeepLink() async {
    try {
      return await PushNotificationService.getInitialDeepLinkFromNotification();
    } catch (_) {
      return null;
    }
  }
}
