part of 'search_bloc.dart';

@freezed
abstract class SearchState with _$SearchState {
  const factory SearchState.initial() = _Initial;

  const factory SearchState.loading() = _Loading;

  const factory SearchState.ready({
    @Default([]) List<Group> result,
  }) = _Ready;
}

@freezed
abstract class SearchSr with _$SearchSr {
  const factory SearchSr.error(String error) = _SearchSr;
}
