part of '../assortment_response.dart';

@freezed
abstract class ProductResponse with _$ProductResponse {
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory ProductResponse({
    required String id,
    List<String>? barcodes,
    int? sku,
    @Default('') String name,
    String? groupId,
    String? folderId,
    required double price,
    String? image,
    @JsonKey(name: 'modifiers_group') @Default([]) List<String> modifiersGroup,
    @Default('BYN') String currencySymbol,
    String? description,
    @Default(CalorieIntake()) CalorieIntake calorieIntake,
    String? shortName,
    @Default(false) bool isDefault,
    String? ingredientsDescription,
    String? sizeDescription,
    List<StoreQuantityResponse>? stores,
    String? itemCode,
    String? descriptionHTML,
    @Default(0) double quantity,
    String? quantityText,
    @Default(false) bool weight,
    String? volume,
  }) = _DefaultProductResponse;

  factory ProductResponse.fromJson(Map<String, dynamic> json) =>
      _$ProductResponseFromJson(json);
}

@freezed
abstract class ProductProperty with _$ProductProperty {
  const factory ProductProperty({
    required String name,
    @JsonKey(readValue: readProductPropertyValue) required String value,
  }) = _ProductProperty;

  factory ProductProperty.fromJson(Map<String, dynamic> json) =>
      _$ProductPropertyFromJson(json);
}

@freezed
abstract class CalorieIntake with _$CalorieIntake {
  const CalorieIntake._();
  @JsonSerializable(fieldRename: FieldRename.none)
  const factory CalorieIntake({
    double? fatAmount,
    double? proteinsAmount,
    double? carbohydratesAmount,
    double? energyAmount,
    double? fatFullAmount,
    double? proteinsFullAmount,
    double? carbohydratesFullAmount,
    double? energyFullAmount,
    @Default('') String weightMeasure,
    double? weight,
  }) = _CalorieIntake;

  factory CalorieIntake.fromJson(Map<String, dynamic> json) =>
      _$CalorieIntakeFromJson(json);

  CalorieIntake operator +(CalorieIntake other) {
    double? sum(double? a, double? b) => a != null ? a + (b ?? 0.0) : b;
    return CalorieIntake(
      fatAmount: sum(fatAmount, other.fatAmount),
      proteinsAmount: sum(proteinsAmount, other.proteinsAmount),
      carbohydratesAmount: sum(carbohydratesAmount, other.carbohydratesAmount),
      energyAmount: sum(energyAmount, other.energyAmount),
      fatFullAmount: sum(fatFullAmount, other.fatFullAmount),
      proteinsFullAmount: sum(proteinsFullAmount, other.proteinsFullAmount),
      carbohydratesFullAmount:
          sum(carbohydratesFullAmount, other.carbohydratesFullAmount),
      energyFullAmount: sum(energyFullAmount, other.energyFullAmount),
      weightMeasure: weightMeasure,
      weight: weight != null ? weight! + (other.weight ?? 0.0) : other.weight,
    );
  }
}

double? readWeight(Map<dynamic, dynamic> json, String key) {
  var value = json['weight'];
  if (value == null || (value is String && value.isEmpty)) {
    value = json['weight_price'];
  }
  if (value is num) {
    return value.toDouble();
  }
  if (value is String) {
    return double.parse(value);
  }
  return null;
}

double? readWeightPrice(Map<dynamic, dynamic> json, String key) {
  var value = json['weight_price'];
  if (value == null || (value is String && value.isEmpty)) {
    value = json['weight'];
  }
  if (value is num) {
    return value.toDouble();
  }
  if (value is String) {
    return double.parse(value);
  }
  return null;
}

String readImageUrl(Map<dynamic, dynamic> json, String key) {
  return json['image_name_md5'] is String && json['image_name_md5'].isNotEmpty
      ? json['image_name_md5']
      : json['id'];
}

String readProductPropertyValue(Map<dynamic, dynamic> json, String key) =>
    json[key].toString();
