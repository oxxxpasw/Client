import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:mobile_scanner/mobile_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/fridge_repository.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/event_transformer.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'fridge_qr_scanner_bloc.freezed.dart';
part 'fridge_qr_scanner_event.dart';
part 'fridge_qr_scanner_state.dart';

const kFridgeIdKey = 'fridge-id';
const kCoffeeMachineIdKey = 'coffee-machine-id';

const _kQrScannerOnboardingKey = 'FridgeQrScannerBloc_QrScannerOnboardingKey';

@injectable
class FridgeQrScannerBloc extends SrBloc<FridgeQrScannerEvent,
    FridgeQrScannerState, FridgeQrScannerSr> {
  FridgeQrScannerBloc({
    required this.fridgeRepository,
    required this.cityRepository,
    required this.remoteConfigRepository,
    required this.prefs,
    required this.cartRepository,
    @factoryParam bool? shouldOpenFridge,
  })  : shouldOpenFridge = shouldOpenFridge ?? true,
        super(const FridgeQrScannerState()) {
    on<_OnInit>(_onInit);
    on<OnScanQr>(
      _onScanQr,
      transformer: throttle(
        const Duration(seconds: 3),
      ),
    );
    on<OnReopenOpenFridge>(
      _onReopenFridge,
      transformer: throttle(
        const Duration(seconds: 3),
      ),
    );
    on<OnOpenFridge>(
      _onOpenFridge,
    );
    on<_OnFridgeTimerTick>(_fridgeTimerTick);
    on<_OnHaveProductsPressed>(_onHaveProducts);
    on<_OnCartOpened>(_onCartOpened);
    on<_OnQrScannerOnboardingComplete>(_onQrScannerOnboardingComplete);
    on<_FridgeQrScannerStoreSelected>(_onFridgeQrScannerStoreSelected);
  }

  Timer? _timer;

  @protected
  final FridgeRepository fridgeRepository;
  @protected
  final CityRepository cityRepository;
  @protected
  final RemoteConfigRepository remoteConfigRepository;
  @protected
  final SharedPreferences prefs;
  @protected
  final CartRepository cartRepository;
  @protected
  final bool shouldOpenFridge;

  String? _lastFridgeId;

  Future<void> _checkQrScannerOnboarding() async {
    try {
      if (prefs.getBool(_kQrScannerOnboardingKey) ?? false) {
        return;
      }
      addSr(const FridgeQrScannerSr.showQrScannerOnboarding());
    } catch (_) {}
  }

  void _onInit(_OnInit event, Emitter<FridgeQrScannerState> emit) async {
    emit(
      state.copyWith(
        fridgeTimerSecondsLeft: 0,
        banner: FridgeScanQrBanner.openFridge,
      ),
    );

    if (cartRepository.hasUnfinishedPurchase()) {
      addSr(const FridgeQrScannerSr.restoreCart());
      return;
    }
    _checkQrScannerOnboarding();
  }

  void _initTimer(Store store, String fridgeId) {
    _timer?.cancel();
    final duration = remoteConfigRepository.config.fridgeOpenTimeInSeconds;
    add(FridgeQrScannerEvent.onFridgeTimerTick(secondsLeft: duration));
    _timer = Timer.periodic(
      const Duration(seconds: 1),
      (timer) {
        if (timer.tick >= duration) {
          timer.cancel();
          add(
            const FridgeQrScannerEvent.onFridgeTimerTick(secondsLeft: 0),
          );
          return;
        }
        add(
          FridgeQrScannerEvent.onFridgeTimerTick(
            secondsLeft: duration - timer.tick,
          ),
        );
      },
    );
  }

  void _fridgeTimerTick(
      _OnFridgeTimerTick event, Emitter<FridgeQrScannerState> emit) {
    if (event.secondsLeft == 0) {
      emit(
        state.copyWith(
          fridgeTimerSecondsLeft: event.secondsLeft,
          banner: FridgeScanQrBanner.fridgeOpened,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        fridgeTimerSecondsLeft: event.secondsLeft,
        banner: FridgeScanQrBanner.waitOpenFridge,
      ),
    );
  }

  void _onHaveProducts(
      _OnHaveProductsPressed event, Emitter<FridgeQrScannerState> emit) {
    emit(
      state.copyWith(
        storeListOpened: true,
      ),
    );
    addSr(const FridgeQrScannerSr.showStoreList());
  }

  void _onCartOpened(_OnCartOpened event, Emitter<FridgeQrScannerState> emit) {
    if (state.banner != FridgeScanQrBanner.waitOpenFridge) {
      emit(
        state.copyWith(
          banner: FridgeScanQrBanner.fridgeOpened,
        ),
      );
    }
  }

  Future<void> _onScanQr(
    OnScanQr event,
    Emitter<FridgeQrScannerState> emit,
  ) async {
    if (state.storeListOpened) {
      return;
    }

    final barcode = event.data.barcodes.firstOrNull;

    if (barcode == null) {
      return;
    }

    if (barcode.format != BarcodeFormat.qrCode) {
      emit(
        state.copyWith(
          storeListOpened: true,
        ),
      );
      return addSr(FridgeQrScannerSr.showStoreList(event.data));
    }

    final url = Uri.tryParse(barcode.rawValue ?? '');
    if (url == null) {
      return;
    }

    final fridgeId = url.queryParameters[kFridgeIdKey];
    if (fridgeId != null) {
      return _openFridge(fridgeId, emit).then((value) {
        addSr(const FridgeQrScannerSr.fridgeScanned());
      });
    }

    final coffeeMachineId = url.queryParameters[kCoffeeMachineIdKey];
    if (coffeeMachineId != null) {
      return _initCoffeeMachine(coffeeMachineId, emit).then((value) {
        addSr(const FridgeQrScannerSr.fridgeScanned());
      });
    }
  }

  Future<void> _onOpenFridge(
    OnOpenFridge event,
    Emitter<FridgeQrScannerState> emit,
  ) =>
      _openFridge(event.fridgeId, emit);

  Future<void> _onReopenFridge(
    OnReopenOpenFridge event,
    Emitter<FridgeQrScannerState> emit,
  ) async {
    try {
      if (state.status == FridgeQrScannerStatus.loading) {
        return;
      }

      final fridgeId = event.fridgeId ?? _lastFridgeId;

      if (fridgeId == null) {
        return;
      }

      emit(
        state.copyWith(status: FridgeQrScannerStatus.loading),
      );

      final response = await fridgeRepository.openFridge(fridgeId);

      if (response.hasError) {
        return _handleError(response.error);
      }
    } catch (e, stack) {
      addError(e, stack);
      addSr(FridgeQrScannerSr.error(ErrorMessages.undefinedError));
    } finally {
      emit(state.copyWith(status: FridgeQrScannerStatus.ready));
    }
  }

  Future<void> _openFridge(
    String fridgeId,
    Emitter<FridgeQrScannerState> emit,
  ) async {
    try {
      fridgeId = fridgeId.trim();

      if (fridgeId.isEmpty) {
        return;
      }

      if (state.status == FridgeQrScannerStatus.loading ||
          (_timer?.isActive ?? false)) {
        return;
      }

      emit(
        state.copyWith(status: FridgeQrScannerStatus.loading),
      );

      final city = cityRepository.getSelectedCity();
      if (city == null) {
        return;
      }
      final storeResponse = await cityRepository.storeByFridgeId(fridgeId);
      if (storeResponse.hasError) {
        addError(storeResponse.error);
        addSr(
          FridgeQrScannerSr.error(
            ErrorMessages.getMessage(storeResponse.error),
          ),
        );
        return;
      }

      final store = storeResponse.result;
      if (store == null) {
        addError('Fridge not found: $fridgeId');
        addSr(FridgeQrScannerSr.error(ErrorMessages.fridgeNotFound));
        return;
      }

      if (shouldOpenFridge) {
        final response =
            await fridgeRepository.openFridge(store.fridge[fridgeId]!.id);
        if (response.hasError) {
          return _handleError(response.error);
        }
      }

      _lastFridgeId = fridgeId;

      _initTimer(store, fridgeId);
      addSr(
        FridgeQrScannerSr.openStore(
          store: store,
          fridgeId: fridgeId,
        ),
      );
      addSr(const FridgeQrScannerSr.fridgeScanned());
    } catch (e, stack) {
      addError(e, stack);
      addSr(FridgeQrScannerSr.error(ErrorMessages.undefinedError));
    } finally {
      emit(state.copyWith(status: FridgeQrScannerStatus.ready));
    }
  }

  Future<void> _initCoffeeMachine(
    String coffeeMachineId,
    Emitter<FridgeQrScannerState> emit,
  ) async {
    try {
      coffeeMachineId = coffeeMachineId.trim();

      if (coffeeMachineId.isEmpty) {
        return;
      }

      if (state.status == FridgeQrScannerStatus.loading ||
          (_timer?.isActive ?? false)) {
        return;
      }

      emit(
        state.copyWith(status: FridgeQrScannerStatus.loading),
      );

      final city = cityRepository.getSelectedCity();
      if (city == null) {
        return;
      }
      final storeResponse =
          await cityRepository.storeAndCoffeeMachineById(coffeeMachineId);
      if (storeResponse.hasError) {
        addError(storeResponse.error);
        addSr(
          FridgeQrScannerSr.error(
            ErrorMessages.getMessage(storeResponse.error),
          ),
        );
        return;
      }

      final result = storeResponse.result;
      if (result == null) {
        addError('Coffee machine not found: $coffeeMachineId');
        addSr(FridgeQrScannerSr.error(ErrorMessages.fridgeNotFound));
        return;
      }

      addSr(
        FridgeQrScannerSr.openCoffeeMachine(
          store: result.store,
          coffeeMachine: result.coffeeMachine,
        ),
      );
      addSr(const FridgeQrScannerSr.fridgeScanned());
    } catch (e, stack) {
      addError(e, stack);
      addSr(FridgeQrScannerSr.error(ErrorMessages.undefinedError));
    } finally {
      emit(state.copyWith(status: FridgeQrScannerStatus.ready));
    }
  }

  void _handleError(CommonResponseError<DefaultApiError> error) {
    addError(error);
    final userBanned = error.maybeWhen<bool>(
      orElse: () => false,
      //Код 171 - пользователь забанен.
      customError: (error) => error.code == '171',
    );
    if (userBanned) {
      return addSr(const FridgeQrScannerSr.userBanned());
    }
    return addSr(
      FridgeQrScannerSr.error(ErrorMessages.getMessage(error)),
    );
  }

  Future<bool> _onQrScannerOnboardingComplete(
          _OnQrScannerOnboardingComplete event,
          Emitter<FridgeQrScannerState> emit) =>
      prefs.setBool(_kQrScannerOnboardingKey, true);

  Future<void> _onFridgeQrScannerStoreSelected(
      _FridgeQrScannerStoreSelected event,
      Emitter<FridgeQrScannerState> emit) async {
    emit(
      state.copyWith(
        storeListOpened: false,
      ),
    );

    if (event.store == null) {
      return;
    }

    addSr(
      FridgeQrScannerSr.openStore(
        store: event.store!,
        barcode: event.barcode,
      ),
    );
  }
}
