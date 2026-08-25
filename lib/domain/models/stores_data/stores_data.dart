import 'package:sosedifedi/data/models/stores/stores.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'stores_data.freezed.dart';

@freezed
abstract class StoresData with _$StoresData {
  const StoresData._();

  const factory StoresData({
    SelectedStoreData? selectedStore,
    @Default({}) Map<String, Country> countryList,
  }) = _StoresData;
}

@freezed
abstract class SelectedStoreData with _$SelectedStoreData {
  const factory SelectedStoreData({
    required Store store,
    required City city,
    required Country country,
  }) = _SelectedStoreData;
}
