import 'dart:io';

import 'package:sosedifedi/objectbox.g.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/runner.config.dart';
import 'package:sosedifedi/store.dart';
import 'package:flutter/services.dart';
import 'package:get_it/get_it.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path_provider_platform_interface/path_provider_platform_interface.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class TestRunner {
  static Future<void> initializeFlutterPluginsAndDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    const channel = MethodChannel(
      'plugins.flutter.io/path_provider_macos',
    );
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      switch (methodCall.method) {
        case 'getApplicationDocumentsDirectory':
          return kApplicationDocumentsPath;
        default:
      }
    });

    try {
      GetIt.I.get<ObjectBox>().store.close();
    } catch (_) {}
    await GetIt.I.reset();
    await configureDependencies(appEnvironment: appEnvironment);
    removeAllData();
  }

  static Future<void> configureDependencies({
    required AppEnvironment appEnvironment,
  }) async {
    GetIt.I.registerSingleton<AppEnvironment>(appEnvironment);
    final isOpen = Store._isOpen('objectbox');
    final objectBox = await ObjectBox.create();
    GetIt.I.registerSingleton<ObjectBox>(objectBox);
    await $initGetIt(
      GetIt.instance,
      environment: BuildType.test.getItEnvironmentKey,
    );
  }

  static void removeAllData() async {
    Directory dir = await getApplicationDocumentsDirectory();
    Directory(dir.path + '/objectbox').deleteSync(recursive: true);
  }
}

const String kTemporaryPath = 'temporaryPath';
const String kApplicationSupportPath = 'applicationSupportPath';
const String kDownloadsPath = 'downloadsPath';
const String kLibraryPath = 'libraryPath';
const String kApplicationDocumentsPath = '/Users/bsv/applicationDocumentsPath';
const String kExternalCachePath = 'externalCachePath';
const String kExternalStoragePath = 'externalStoragePath';

class FakePathProviderPlatform extends Fake
    with MockPlatformInterfaceMixin
    implements PathProviderPlatform {
  @override
  Future<String?> getTemporaryPath() async {
    return kTemporaryPath;
  }

  @override
  Future<String?> getApplicationSupportPath() async {
    return kApplicationSupportPath;
  }

  @override
  Future<String?> getLibraryPath() async {
    return kLibraryPath;
  }

  @override
  Future<String?> getApplicationDocumentsPath() async {
    return kApplicationDocumentsPath;
  }

  @override
  Future<String?> getExternalStoragePath() async {
    return kExternalStoragePath;
  }

  @override
  Future<List<String>?> getExternalCachePaths() async {
    return <String>[kExternalCachePath];
  }

  @override
  Future<List<String>?> getExternalStoragePaths({
    StorageDirectory? type,
  }) async {
    return <String>[kExternalStoragePath];
  }

  @override
  Future<String?> getDownloadsPath() async {
    return kDownloadsPath;
  }
}
