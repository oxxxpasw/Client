import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';

part 'current_city_bloc.freezed.dart';
part 'current_city_state.dart';

@injectable
class CurrentCityBloc extends Cubit<CurrentCityState> {
  CurrentCityBloc({
    required this.cityRepository,
  }) : super(const CurrentCityState()) {
    _subscription = cityRepository.selectedCityStream.listen(_onCityChanged);
  }

  @protected
  final CityRepository cityRepository;

  StreamSubscription? _subscription;

  void _onCityChanged(City? city) {
    emit(
      state.copyWith(
        city: city,
      ),
    );
  }

  @override
  Future<void> close() async {
    await _subscription?.cancel();
    return super.close();
  }
}
