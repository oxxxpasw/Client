import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'cart_search_bloc.freezed.dart';
part 'cart_search_event.dart';
part 'cart_search_state.dart';

typedef SearchEmitter = Emitter<CartSearchState>;

@injectable
class CartSearchBloc
    extends SrBloc<CartSearchEvent, CartSearchState, CartSearchSr> {
  CartSearchBloc({
    required this.productsRepository,
    required this.cityRepository,
    @factoryParam required this.store,
  }) : super(const CartSearchState()) {
    on<_OnSearch>(
      _onSearch,
      transformer: droppable(),
    );
    on<_OnProductIncrement>(
      _onProductIncrement,
    );
    on<_OnProductDecrement>(
      _onProductDecrement,
    );
    on<_OnNextButtonPressed>(
      _onNextButtonPressed,
    );
  }

  @protected
  final AssortmentRepository productsRepository;
  @protected
  final CityRepository cityRepository;
  @protected
  final Store store;

  List<Product>? _products;

  Future<void> _onSearch(_OnSearch event, SearchEmitter emit) async {
    try {
      if (event.value.length < 2) {
        emit(state.copyWith(status: CartSearchStatus.init));
        return;
      }

      emit(state.copyWith(status: CartSearchStatus.loading));

      var products = _products;
      if (products == null) {
        final productsResponse = await productsRepository.getProducts(
          assortmentFile: store.menuFileName,
        );
        if (productsResponse.hasError) {
          addSr(CartSearchSr.error(
              ErrorMessages.getMessage(productsResponse.error)));
          addError(productsResponse.error);
          return;
        }
        _products = products = productsResponse.result;
      }
      final query = event.value.trim().toLowerCase();
      emit(
        state.copyWith(
          searchResult: products
              .where((element) => element.keywords.contains(query))
              .toList(),
          status: CartSearchStatus.ready,
        ),
      );
    } catch (e, stack) {
      addError(e, stack);
      addSr(
        CartSearchSr.error(
          ErrorMessages.getMessage(
            CommonResponseError.undefinedError(e),
          ),
        ),
      );
    }
  }

  void _onProductIncrement(_OnProductIncrement event, SearchEmitter emit) {
    if (event.product.weight) {
      addSr(const CartSearchSr.showWeightProductMessage());
      return;
    }

    final current = state.productsToAddToCart[event.product] ?? 0;
    if (current > 999) return;
    if (current > 0) {
      emit(
        state.copyWith(
          productsToAddToCart: {
            ...state.productsToAddToCart,
            event.product: current + 1,
          },
        ),
      );
      return;
    }
    emit(
      state.copyWith(productsToAddToCart: {
        ...state.productsToAddToCart,
        event.product: 1,
      }),
    );
  }

  void _onProductDecrement(_OnProductDecrement event, SearchEmitter emit) {
    final current = state.productsToAddToCart[event.product];
    if (current == null) return;
    if (current > 1) {
      emit(
        state.copyWith(
          productsToAddToCart: {
            ...state.productsToAddToCart,
            event.product: current - 1,
          },
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        productsToAddToCart: Map.from(state.productsToAddToCart)
          ..remove(event.product),
      ),
    );
  }

  void _onNextButtonPressed(_OnNextButtonPressed event, SearchEmitter emit) {
    addSr(CartSearchSr.addToCart(state.productsToAddToCart));
  }
}
