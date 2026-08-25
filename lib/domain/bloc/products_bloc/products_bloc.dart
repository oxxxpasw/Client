import 'dart:async';

import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'products_bloc.freezed.dart';
part 'products_state.dart';

abstract class ProductsBloc extends SrCubit<ProductsState, ProductsSr> {
  ProductsBloc(super.state);

  Future<void> loadData({
    bool refresh = false,
  });

  Future<void> search(String query);
}

@injectable
class StoreProductsBloc extends ProductsBloc {
  StoreProductsBloc({
    required this.assortmentRepository,
    @factoryParam required this.storeFile,
  }) : super(const ProductsState(status: ProductsStateStatus.init));

  @protected
  final AssortmentRepository assortmentRepository;
  @protected
  final String storeFile;

  @override
  Future<void> loadData({
    bool refresh = false,
    bool isCoffee = false,
  }) async {
    try {
      var newState = state.copyWith(
        searchResult: null,
        status: ProductsStateStatus.ready,
      );
      final response = await assortmentRepository.getProductGroups(
        assortmentFile: storeFile,
      );

      if (response.hasError) {
        addError(response.error);
        addSr(ProductsSr.error(ErrorMessages.getMessage(response.error)));
        newState = newState.copyWith(
          status: ProductsStateStatus.error,
        );
      } else {
        if (isCoffee) {
          newState = newState.copyWith(
            searchResult: response.result
                .expand<Product>((e) => e.products ?? [])
                .toList(),
          );
        } else {
          newState = newState.copyWith(
            categoryWithProducts: response.result,
          );
        }
      }

      emit(newState);
    } catch (e) {
      addSr(ProductsSr.error(e.toString()));
      addError(e, e is Error ? e.stackTrace : null);
    }
  }

  @override
  Future<void> search(String query) async {
    query = query.trim().toLowerCase();

    if (query.length < 2) {
      emit(
        state.copyWith(
          searchResult: null,
        ),
      );
      return;
    }
    final response = await assortmentRepository.searchProductByName(
        assortmentFile: storeFile, query: query);

    if (response.hasError) {
      addError(response.error);
      addSr(ProductsSr.error(ErrorMessages.getMessage(response.error)));
    }
    emit(
      state.copyWith(
        searchResult: response.result,
      ),
    );
  }
}

@injectable
class HomeProductsBloc extends ProductsBloc {
  HomeProductsBloc({
    required this.assortmentRepository,
    required this.cityRepository,
  }) : super(const ProductsState(status: ProductsStateStatus.init)) {
    _subscription = cityRepository.selectedCityStream.listen(_handleCityChange);
  }

  StreamSubscription? _subscription;
  String? _fileName;

  @protected
  final AssortmentRepository assortmentRepository;
  @protected
  final CityRepository cityRepository;

  void _handleCityChange(City? city) {
    if (_fileName != city?.menuFileName) {
      _fileName = city?.menuFileName;
      loadData();
    }
  }

  @override
  Future<void> loadData({
    bool refresh = false,
  }) async {
    try {
      if (state.status == ProductsStateStatus.init || refresh) {
        emit(state.copyWith(status: ProductsStateStatus.loading));
      }

      var newState = state.copyWith(
        status: ProductsStateStatus.ready,
      );
      final response = await assortmentRepository.getProductGroups(
        refresh: refresh,
        assortmentFile: _fileName,
      );

      if (response.hasError) {
        addError(response.error);
        addSr(ProductsSr.error(ErrorMessages.getMessage(response.error)));
        newState = newState.copyWith(
          status: ProductsStateStatus.error,
        );
      } else {
        newState = newState.copyWith(
          categoryWithProducts: response.result,
        );
      }

      emit(newState);
    } catch (e, stack) {
      addSr(ProductsSr.error(e.toString()));
      addError(e, stack);
    }
  }

  @override
  Future<void> search(String query) async {
    if (_fileName == null) {
      return;
    }
    query = query.trim().toLowerCase();

    if (query.length < 2) {
      emit(
        state.copyWith(
          searchResult: null,
        ),
      );
      return;
    }
    final response = await assortmentRepository.searchProductByName(
      assortmentFile: _fileName!,
      query: query,
    );

    if (response.hasError) {
      addError(response.error);
      addSr(ProductsSr.error(ErrorMessages.getMessage(response.error)));
    }
    emit(
      state.copyWith(
        searchResult: response.result,
      ),
    );
  }

  @override
  Future<void> close() {
    _subscription?.cancel();
    return super.close();
  }
}

extension GetCategory on List<Group> {
  Group? getCategory(String? currentId) {
    return firstWhereOrNull(
          (element) => element.id == currentId,
        ) ??
        firstOrNull;
  }
}
