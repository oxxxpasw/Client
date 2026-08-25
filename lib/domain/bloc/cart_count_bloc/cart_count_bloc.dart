import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'cart_count_state.dart';
part 'cart_count_bloc.freezed.dart';

@injectable
class CartCountBloc extends Cubit<CartCountState> {
  CartCountBloc({
    required this.cartRepository,
  }) : super(const CartCountState(0)) {
    countSubscription = cartRepository.countStream.listen((count) {
      emit(CartCountState(count));
    });
  }

  @protected
  final CartRepository cartRepository;

  StreamSubscription<int>? countSubscription;

  @override
  Future<void> close() {
    countSubscription?.cancel();
    return super.close();
  }
}
