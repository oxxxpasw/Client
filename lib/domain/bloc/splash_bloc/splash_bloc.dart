import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:in_app_update/in_app_update.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/update/update.dart';
import 'package:sosedifedi/data/repository/update_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/domain/interactor/startup_interactor.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

import 'store_navigator.dart';

part 'splash_bloc.freezed.dart';
part 'splash_state.dart';

@injectable
class SplashBloc extends SrCubit<SplashState, SplashSr> {
  SplashBloc({
    required this.updateRepository,
    required this.startupInteractor,
    required this.appEnvironment,
    required this.analystService,
    required this.storeNavigator,
  }) : super(const SplashState.init());

  @protected
  final UpdateRepository updateRepository;
  @protected
  final StartupInteractor startupInteractor;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final AnalystService analystService;
  @protected
  final StoreNavigator storeNavigator;

  Future<void> init() async {
    try {
      emit(const SplashState.loading());
      final deepLink = await getInitialDeepLink().timeout(
        const Duration(seconds: 2),
        onTimeout: () => null,
      );
      try {
        analystService.appOpen(deeplink: deepLink);
      } catch (_) {}

      try {
        await startupInteractor.initialize().timeout(
          const Duration(seconds: 4),
        );
      } catch (e, stack) {
        addError(e, stack);
      }

      try {
        final update = await updateRepository.checkUpdates().timeout(
          const Duration(seconds: 2),
          onTimeout: () => const UpdateData(type: UpdateType.none),
        );
        switch (update.type) {
          case UpdateType.immediate:
            addSr(const SplashSr.needUpdate());
            return;
          case UpdateType.optional:
          case UpdateType.none:
            break;
        }
      } catch (_) {}

      addSr(
        SplashSr.ready(
          initialDeepLink: deepLink,
        ),
      );
    } catch (e, stack) {
      addError(e, stack);
      addSr(
        const SplashSr.ready(),
      );
    }
  }

  Future<String?> getInitialDeepLink() {
    return startupInteractor.getInitialDeepLink();
  }

  Future<void> _tryUpdateAndroid(UpdateType updateType) async {
    try {
      if (defaultTargetPlatform != TargetPlatform.android) {
        return;
      }
      final update = await InAppUpdate.checkForUpdate();
      if ((updateType == UpdateType.immediate || update.updatePriority >= 5) &&
          update.updateAvailability == UpdateAvailability.updateAvailable &&
          update.immediateUpdateAllowed) {
        InAppUpdate.performImmediateUpdate();
        return;
      }
      if ((updateType == UpdateType.optional || update.updatePriority >= 2) &&
          update.updateAvailability == UpdateAvailability.updateAvailable &&
          update.flexibleUpdateAllowed) {
        InAppUpdate.completeFlexibleUpdate();
        return;
      }
    } catch (e, stack) {
      addError(e, stack);
    }
  }

  Future<void> sendUserToAppStore() async {
    await storeNavigator.sendUserToStore((e) {
      addError(e);
    });
  }
}
