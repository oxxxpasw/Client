import 'package:isar_community/isar.dart';

part 'store.g.dart';

@collection
class SelectedStoreDataEntity {
  SelectedStoreDataEntity({
    this.storeId,
    this.cityId,
    this.countryId,
    this.address,
    this.latitude,
    this.longitude,
    this.cityName,
    this.countryName,
    this.menuFileName,
  }) : id = Isar.autoIncrement;
  Id id;

  String? cityId;

  String? cityName;

  String? address;

  double? latitude;

  double? longitude;

  String? countryId;

  String? countryName;

  String? storeId;

  String? menuFileName;
}
