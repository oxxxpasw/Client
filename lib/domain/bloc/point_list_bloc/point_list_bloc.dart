import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/location_repository.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'point_list_bloc.freezed.dart';
part 'point_list_state.dart';

@injectable
class PointListBloc extends SrCubit<PointListState, PointListSr> {
  PointListBloc({
    required this.locationHelper,
    required this.cityRepository,
  }) : super(const PointListState());
  @protected
  final LocationRepository locationHelper;
  @protected
  final CityRepository cityRepository;

  StreamSubscription? _subscription;

  List<StoreItem>? _result;

  ///Если [value] не передано, берет список точек из [cityRepository.getSelectedCity().storeList]
  Future<void> init([List<Store>? value]) async {
    try {
      emit(const PointListState(status: PointListStatus.loading));

      if (value == null) {
        _initSelectedCitySubscription();
        return;
      }

      _createNewState(value);
    } catch (e) {
      addError(e);
      addSr(PointListSr.error(ErrorMessages.undefinedError));
    }
  }

  void _initSelectedCitySubscription() {
    _subscription = cityRepository.selectedCityStream.listen(_onCityChanged);
  }

  Future<void> _onCityChanged(City? city) =>
      _createNewState(city?.storeList ?? []);

  Future<void> _createNewState(List<Store> stores) async {
    final result = (await _tryMapStoreListByUserPosition(stores)) ??
        stores.map((store) => StoreItem(store: store)).toList();

    _result = result;

    emit(
      state.copyWith(points: result, status: PointListStatus.ready),
    );
  }

  Future<List<StoreItem>?> _tryMapStoreListByUserPosition(
      List<Store> stores) async {
    try {
      final userPositionResponse = await locationHelper.getUserLatLng();
      if (userPositionResponse.hasError) {
        addError(userPositionResponse.error);
        return null;
      }

      if (userPositionResponse.result == null) {
        return null;
      }

      final userPosition = userPositionResponse.result!;
      final result = stores
          .map(
            (store) => StoreItem(
              store: store,
              distance: locationHelper.calculateDistanceInKM(
                userPosition,
                (lat: store.latitude, lng: store.longitude),
              ),
            ),
          )
          .toList();

      result.sort((a, b) => a.distance!.compareTo(b.distance!));
      return result;
    } catch (e, stack) {
      addError(e, stack);
    }
    return null;
  }

  void search(String query) {
    final data = _result;
    if (data == null) {
      return;
    }
    query = query.trim().toLowerCase();
    if (query.length < 2) {
      emit(PointListState(points: data, status: PointListStatus.ready));
      return;
    }
    emit(
      PointListState(
        points: data
            .where(
              (element) =>
                  (element.store.address?.toLowerCase().contains(query) ??
                      false) ||
                  (element.store.name?.toLowerCase().contains(query) ?? false),
            )
            .toList(),
        status: PointListStatus.ready,
      ),
    );
  }

  void onPointPressed(Store store) {
    addSr(PointListSr.selected(store));
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
