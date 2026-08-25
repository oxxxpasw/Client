part of 'search_value_bloc.dart';

@freezed
abstract class SearchValueState<T> with _$SearchValueState<T> {
  const factory SearchValueState({
    @Default([]) List<T> items,
    String? query,
  }) = _SearchValueState<T>;
}
