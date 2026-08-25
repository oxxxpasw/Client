// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'assortment_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_AssortmentResponse _$AssortmentResponseFromJson(Map<String, dynamic> json) =>
    _AssortmentResponse(
      datetime: json['datetime'] == null
          ? null
          : DateTime.parse(json['datetime'] as String),
      groups:
          (json['groups'] as List<dynamic>?)
              ?.map((e) => GroupResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      modifiersGroups:
          (json['modifiers_groups'] as List<dynamic>?)
              ?.map(
                (e) =>
                    ModifierGroupResponse.fromJson(e as Map<String, dynamic>),
              )
              .toList() ??
          const [],
      products:
          (json['products'] as List<dynamic>?)
              ?.map((e) => ProductResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      modifiers:
          (json['modifiers'] as List<dynamic>?)
              ?.map((e) => ModifierResponse.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$AssortmentResponseToJson(
  _AssortmentResponse instance,
) => <String, dynamic>{
  'datetime': instance.datetime?.toIso8601String(),
  'groups': instance.groups.map((e) => e.toJson()).toList(),
  'modifiers_groups': instance.modifiersGroups.map((e) => e.toJson()).toList(),
  'products': instance.products.map((e) => e.toJson()).toList(),
  'modifiers': instance.modifiers.map((e) => e.toJson()).toList(),
};

_GroupResponse _$GroupResponseFromJson(Map<String, dynamic> json) =>
    _GroupResponse(
      id: json['id'] as String,
      name: json['label'] as String? ?? '',
      groupId: json['parentGroupId'] as String?,
      products:
          (json['products'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          const [],
      image: json['image'] as String?,
    );

Map<String, dynamic> _$GroupResponseToJson(_GroupResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'label': instance.name,
      'parentGroupId': instance.groupId,
      'products': instance.products,
      'image': instance.image,
    };

_ModifierResponseRestrictions _$ModifierResponseRestrictionsFromJson(
  Map<String, dynamic> json,
) => _ModifierResponseRestrictions(
  minQuantity: (json['minQuantity'] as num?)?.toInt() ?? 0,
  maxQuantity: (json['maxQuantity'] as num?)?.toInt() ?? 999,
  freeQuantity: (json['freeQuantity'] as num?)?.toInt() ?? 999,
  byDefault: (json['byDefault'] as num?)?.toInt() ?? 0,
  required: json['required'] as bool? ?? false,
);

Map<String, dynamic> _$ModifierResponseRestrictionsToJson(
  _ModifierResponseRestrictions instance,
) => <String, dynamic>{
  'minQuantity': instance.minQuantity,
  'maxQuantity': instance.maxQuantity,
  'freeQuantity': instance.freeQuantity,
  'byDefault': instance.byDefault,
  'required': instance.required,
};

_ModifierResponse _$ModifierResponseFromJson(Map<String, dynamic> json) =>
    _ModifierResponse(
      id: json['id'] as String,
      name: json['name'] as String? ?? '',
      groupId: json['groupId'] as String?,
      restrictions: ModifierResponseRestrictions.fromJson(
        json['restrictions'] as Map<String, dynamic>,
      ),
      price: (json['price'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$ModifierResponseToJson(_ModifierResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'groupId': instance.groupId,
      'restrictions': instance.restrictions.toJson(),
      'price': instance.price,
    };

_ModifierGroupResponse _$ModifierGroupResponseFromJson(
  Map<String, dynamic> json,
) => _ModifierGroupResponse(
  id: json['id'] as String,
  name: json['name'] as String? ?? '',
  restrictions: ModifierGroupResponseRestriction.fromJson(
    json['restrictions'] as Map<String, dynamic>,
  ),
  modifierSelectionType:
      $enumDecodeNullable(
        _$ModifierSelectionTypeEnumMap,
        json['modifierSelectionType'],
      ) ??
      ModifierSelectionType.dropdown,
);

Map<String, dynamic> _$ModifierGroupResponseToJson(
  _ModifierGroupResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'restrictions': instance.restrictions.toJson(),
  'modifierSelectionType':
      _$ModifierSelectionTypeEnumMap[instance.modifierSelectionType]!,
};

const _$ModifierSelectionTypeEnumMap = {
  ModifierSelectionType.toggleSwitch: 0,
  ModifierSelectionType.dropdown: 1,
  ModifierSelectionType.switchButton: 2,
};

_ModifierGroupRestriction _$ModifierGroupRestrictionFromJson(
  Map<String, dynamic> json,
) => _ModifierGroupRestriction(
  minQuantity: (json['minQuantity'] as num?)?.toInt() ?? 0,
  maxQuantity: (json['maxQuantity'] as num?)?.toInt() ?? 999,
  required: json['required'] as bool? ?? false,
);

Map<String, dynamic> _$ModifierGroupRestrictionToJson(
  _ModifierGroupRestriction instance,
) => <String, dynamic>{
  'minQuantity': instance.minQuantity,
  'maxQuantity': instance.maxQuantity,
  'required': instance.required,
};

_DefaultProductResponse _$DefaultProductResponseFromJson(
  Map<String, dynamic> json,
) => _DefaultProductResponse(
  id: json['id'] as String,
  barcodes: (json['barcodes'] as List<dynamic>?)
      ?.map((e) => e as String)
      .toList(),
  sku: (json['sku'] as num?)?.toInt(),
  name: json['name'] as String? ?? '',
  groupId: json['groupId'] as String?,
  folderId: json['folderId'] as String?,
  price: (json['price'] as num).toDouble(),
  image: json['image'] as String?,
  modifiersGroup:
      (json['modifiers_group'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList() ??
      const [],
  currencySymbol: json['currencySymbol'] as String? ?? 'BYN',
  description: json['description'] as String?,
  calorieIntake: json['calorieIntake'] == null
      ? const CalorieIntake()
      : CalorieIntake.fromJson(json['calorieIntake'] as Map<String, dynamic>),
  shortName: json['shortName'] as String?,
  isDefault: json['isDefault'] as bool? ?? false,
  ingredientsDescription: json['ingredientsDescription'] as String?,
  sizeDescription: json['sizeDescription'] as String?,
  stores: (json['stores'] as List<dynamic>?)
      ?.map((e) => StoreQuantityResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
  itemCode: json['itemCode'] as String?,
  descriptionHTML: json['descriptionHTML'] as String?,
  quantity: (json['quantity'] as num?)?.toDouble() ?? 0,
  quantityText: json['quantityText'] as String?,
  weight: json['weight'] as bool? ?? false,
  volume: json['volume'] as String?,
);

Map<String, dynamic> _$DefaultProductResponseToJson(
  _DefaultProductResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'barcodes': instance.barcodes,
  'sku': instance.sku,
  'name': instance.name,
  'groupId': instance.groupId,
  'folderId': instance.folderId,
  'price': instance.price,
  'image': instance.image,
  'modifiers_group': instance.modifiersGroup,
  'currencySymbol': instance.currencySymbol,
  'description': instance.description,
  'calorieIntake': instance.calorieIntake.toJson(),
  'shortName': instance.shortName,
  'isDefault': instance.isDefault,
  'ingredientsDescription': instance.ingredientsDescription,
  'sizeDescription': instance.sizeDescription,
  'stores': instance.stores?.map((e) => e.toJson()).toList(),
  'itemCode': instance.itemCode,
  'descriptionHTML': instance.descriptionHTML,
  'quantity': instance.quantity,
  'quantityText': instance.quantityText,
  'weight': instance.weight,
  'volume': instance.volume,
};

_ProductProperty _$ProductPropertyFromJson(Map<String, dynamic> json) =>
    _ProductProperty(
      name: json['name'] as String,
      value: readProductPropertyValue(json, 'value') as String,
    );

Map<String, dynamic> _$ProductPropertyToJson(_ProductProperty instance) =>
    <String, dynamic>{'name': instance.name, 'value': instance.value};

_CalorieIntake _$CalorieIntakeFromJson(Map<String, dynamic> json) =>
    _CalorieIntake(
      fatAmount: (json['fatAmount'] as num?)?.toDouble(),
      proteinsAmount: (json['proteinsAmount'] as num?)?.toDouble(),
      carbohydratesAmount: (json['carbohydratesAmount'] as num?)?.toDouble(),
      energyAmount: (json['energyAmount'] as num?)?.toDouble(),
      fatFullAmount: (json['fatFullAmount'] as num?)?.toDouble(),
      proteinsFullAmount: (json['proteinsFullAmount'] as num?)?.toDouble(),
      carbohydratesFullAmount: (json['carbohydratesFullAmount'] as num?)
          ?.toDouble(),
      energyFullAmount: (json['energyFullAmount'] as num?)?.toDouble(),
      weightMeasure: json['weightMeasure'] as String? ?? '',
      weight: (json['weight'] as num?)?.toDouble(),
    );

Map<String, dynamic> _$CalorieIntakeToJson(_CalorieIntake instance) =>
    <String, dynamic>{
      'fatAmount': instance.fatAmount,
      'proteinsAmount': instance.proteinsAmount,
      'carbohydratesAmount': instance.carbohydratesAmount,
      'energyAmount': instance.energyAmount,
      'fatFullAmount': instance.fatFullAmount,
      'proteinsFullAmount': instance.proteinsFullAmount,
      'carbohydratesFullAmount': instance.carbohydratesFullAmount,
      'energyFullAmount': instance.energyFullAmount,
      'weightMeasure': instance.weightMeasure,
      'weight': instance.weight,
    };
