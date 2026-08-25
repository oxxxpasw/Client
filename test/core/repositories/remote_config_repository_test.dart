import 'dart:async';

import 'package:sosedifedi/data/models/config/config.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/data/services/remote_config_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:fake_async/fake_async.dart';

class MockRemoteConfigService extends Mock implements RemoteConfigService {}

class FakeAppConfig extends Fake implements AppConfig {}

void main() {
  late RemoteConfigRepositoryImpl configRepository;
  late MockRemoteConfigService remoteConfigService;

  setUp(() async {
    remoteConfigService = MockRemoteConfigService();
  });

  group('init', () {
    tearDown(() {
      configRepository.dispose();
    });
    test('Должен вернуть config с сервера', () async {
      final config = FakeAppConfig();
      when(() => remoteConfigService.getConfig())
          .thenAnswer((_) async => ApiResponse.success(config));
      configRepository = (await RemoteConfigRepositoryImpl.init(
        remoteConfigService,
      )) as RemoteConfigRepositoryImpl;
      expect(configRepository.config, equals(config));
    });
    test('Должен вернуть config по умолчанию', () async {
      when(() => remoteConfigService.getConfig()).thenAnswer((_) async =>
          ApiResponse.error(CommonResponseError.undefinedError(Error())));
      configRepository = (await RemoteConfigRepositoryImpl.init(
        remoteConfigService,
      )) as RemoteConfigRepositoryImpl;
      expect(configRepository.config, equals(const AppConfig()));
    });
  });

  group('refresh config', () {
    final initConfig = FakeAppConfig();
    setUp(() async {
      when(() => remoteConfigService.getConfig())
          .thenAnswer((_) async => ApiResponse.success(initConfig));
    });
    tearDown(() {
      configRepository.dispose();
    });
    test('После повторного запроса конфига должен вернуть актуальную версию',
        () {
      final config = FakeAppConfig();
      Future<AppConfig> testFuture() async {
        configRepository = (await RemoteConfigRepositoryImpl.init(
          remoteConfigService,
        )) as RemoteConfigRepositoryImpl;
        when(() => remoteConfigService.getConfig())
            .thenAnswer((_) async => ApiResponse.success(config));
        await Future.delayed(const Duration(seconds: 11));
        return configRepository.config;
      }

      fakeAsync((async) {
        final result = testFuture();
        expect(result, completion(equals(config)));

        async.elapse(const Duration(
          seconds: 11,
        ));
      });
    });
    test(
        'configStream после повторного запроса конфига должен эмитить актуальную версию',
        () {
      final config = FakeAppConfig();

      Future<Stream<AppConfig>> testFuture() async {
        configRepository = (await RemoteConfigRepositoryImpl.init(
          remoteConfigService,
        )) as RemoteConfigRepositoryImpl;
        when(() => remoteConfigService.getConfig())
            .thenAnswer((_) async => ApiResponse.success(config));
        return configRepository.configStream;
      }

      fakeAsync((async) {
        testFuture().then((stream) {
          expect(stream, emits(equals(config)));
        });
        async.elapse(const Duration(
          seconds: 11,
        ));
      });
    });
  });
}
