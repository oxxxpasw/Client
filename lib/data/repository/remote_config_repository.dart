import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/models/config/config.dart';
import 'package:sosedifedi/data/services/remote_config_service.dart';

abstract class RemoteConfigRepository {
  AppConfig get config;
  Stream<AppConfig> get configStream;

  void dispose() {}
}

@preResolve
@Singleton(as: RemoteConfigRepository)
class RemoteConfigRepositoryImpl extends RemoteConfigRepository {
  RemoteConfigRepositoryImpl._(
    AppConfig initConfig,
    this.remoteConfigService,
  ) : _config = BehaviorSubject.seeded(initConfig) {
    _timer = Timer.periodic(const Duration(seconds: 10), _refreshConfig);
  }

  @factoryMethod
  static Future<RemoteConfigRepository> init(
    RemoteConfigService remoteConfigService,
  ) async {
    try {
      final response = await remoteConfigService
          .getConfig()
          .timeout(const Duration(seconds: 2));

      if (response.hasError) {
        return RemoteConfigRepositoryImpl._(
          const AppConfig(),
          remoteConfigService,
        );
      }
      return RemoteConfigRepositoryImpl._(
        response.result,
        remoteConfigService,
      );
    } catch (e) {
      return RemoteConfigRepositoryImpl._(
        const AppConfig(),
        remoteConfigService,
      );
    }
  }

  @protected
  final RemoteConfigService remoteConfigService;

  final BehaviorSubject<AppConfig> _config;

  late final Timer _timer;

  @override
  get config => _config.value.copyWith(
        bonusesEnabled: true,
        technicalSupportPhone: null,
        showFeedbackBanner: false,
        feedbackUrl: null,
        userXEnabled: false,
      );

  @override
  get configStream => _config.stream.map(
        (config) => config.copyWith(
          bonusesEnabled: true,
          technicalSupportPhone: null,
          showFeedbackBanner: false,
          feedbackUrl: null,
          userXEnabled: false,
        ),
      );

  void _refreshConfig(_) async {
    final response = await remoteConfigService.getConfig();
    if (response.isSuccess && response.result != _config.valueOrNull) {
      _config.add(response.result);
    }
  }

  @disposeMethod
  @override
  void dispose() {
    _timer.cancel();
  }
}
