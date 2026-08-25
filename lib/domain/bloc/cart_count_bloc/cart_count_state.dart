part of 'cart_count_bloc.dart';

@freezed
abstract class CartCountState with _$CartCountState {
  const factory CartCountState(int count) = _CartCountState;
}
