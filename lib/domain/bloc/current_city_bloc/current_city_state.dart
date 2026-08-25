part of 'current_city_bloc.dart';

@freezed
abstract class CurrentCityState with _$CurrentCityState {
  const factory CurrentCityState({
    City? city,
  }) = _CurrentCityState;
}
