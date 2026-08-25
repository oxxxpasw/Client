import 'dart:async';

import 'package:collection/collection.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/geocoder_repository.dart';
import 'package:sosedifedi/data/repository/location_repository.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'product_map_bloc.freezed.dart';
part 'product_map_state.dart';

@injectable
class ProductMapBloc extends SrCubit<ProductMapState, ProductMapSr> {
  ProductMapBloc({
    required this.cityRepository,
    required this.geocoderRepository,
    required this.locationHelper,
    @factoryParam required this.product,
  }) : super(const ProductMapState()) {
    _subscription = cityRepository.selectedCityStream.listen(_loadData);
  }

  @protected
  final CityRepository cityRepository;
  @protected
  final GeocoderRepository geocoderRepository;
  @protected
  final Product product;
  @protected
  final LocationRepository locationHelper;

  StreamSubscription<City?>? _subscription;

  Future<void> _loadData(City? city) async {
    try {
      emit(
        state.copyWith(
          status: ProductMapStateStatus.loading,
        ),
      );
      if (city == null) {
        return emit(state.copyWith(
          status: ProductMapStateStatus.ready,
          stores: [],
        ));
      }

      final productStores = product.stores?.where(
            (element) => element.quantity != null && element.quantity! > 0,
          ) ??
          [];

      final stores = productStores
          .map((e) => city.stores[e.storeId])
          .whereNotNull()
          .toList();

      final result = (await _tryMapStoreListByUserPosition(stores)) ??
          stores.map((e) => StoreItem(store: e)).toList();
      emit(
        state.copyWith(
          stores: result,
          searchResult: result,
          status: ProductMapStateStatus.ready,
        ),
      );
      addSr(
        ProductMapSr.setCameraToInitPosition(
          stores,
        ),
      );
    } catch (e, stack) {
      addSr(ProductMapSr.error(
          ErrorMessages.getMessage(CommonResponseError.undefinedError(e))));
      addError(e, stack);
    }
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

  Future<void> search(String query) async {
    final stores = state.stores ??
        (await stream.firstWhere((element) => element.stores != null)).stores!;
    if (query.isEmpty) {
      emit(
        state.copyWith(
          searchResult: state.stores,
        ),
      );
      return;
    }
    query = query.toLowerCase();
    emit(
      state.copyWith(
        searchResult: stores
            .where(
              (element) =>
                  (element.store.name != null &&
                      element.store.name!.toLowerCase().contains(query)) ||
                  (element.store.address != null &&
                      element.store.address!.toLowerCase().contains(query)),
            )
            .toList(),
      ),
    );
  }

  void resetSearch() async {
    emit(
      state.copyWith(
        searchResult: state.stores,
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}
