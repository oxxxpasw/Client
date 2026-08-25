// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'store.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetSelectedStoreDataEntityCollection on Isar {
  IsarCollection<SelectedStoreDataEntity> get selectedStoreDataEntitys =>
      this.collection();
}

const SelectedStoreDataEntitySchema = CollectionSchema(
  name: r'SelectedStoreDataEntity',
  id: 3216820285938426083,
  properties: {
    r'address': PropertySchema(
      id: 0,
      name: r'address',
      type: IsarType.string,
    ),
    r'cityId': PropertySchema(
      id: 1,
      name: r'cityId',
      type: IsarType.string,
    ),
    r'cityName': PropertySchema(
      id: 2,
      name: r'cityName',
      type: IsarType.string,
    ),
    r'countryId': PropertySchema(
      id: 3,
      name: r'countryId',
      type: IsarType.string,
    ),
    r'countryName': PropertySchema(
      id: 4,
      name: r'countryName',
      type: IsarType.string,
    ),
    r'latitude': PropertySchema(
      id: 5,
      name: r'latitude',
      type: IsarType.double,
    ),
    r'longitude': PropertySchema(
      id: 6,
      name: r'longitude',
      type: IsarType.double,
    ),
    r'menuFileName': PropertySchema(
      id: 7,
      name: r'menuFileName',
      type: IsarType.string,
    ),
    r'storeId': PropertySchema(
      id: 8,
      name: r'storeId',
      type: IsarType.string,
    )
  },
  estimateSize: _selectedStoreDataEntityEstimateSize,
  serialize: _selectedStoreDataEntitySerialize,
  deserialize: _selectedStoreDataEntityDeserialize,
  deserializeProp: _selectedStoreDataEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _selectedStoreDataEntityGetId,
  getLinks: _selectedStoreDataEntityGetLinks,
  attach: _selectedStoreDataEntityAttach,
  version: '3.2.1',
);

int _selectedStoreDataEntityEstimateSize(
  SelectedStoreDataEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.address;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cityId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.cityName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.countryId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.countryName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.menuFileName;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.storeId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _selectedStoreDataEntitySerialize(
  SelectedStoreDataEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.address);
  writer.writeString(offsets[1], object.cityId);
  writer.writeString(offsets[2], object.cityName);
  writer.writeString(offsets[3], object.countryId);
  writer.writeString(offsets[4], object.countryName);
  writer.writeDouble(offsets[5], object.latitude);
  writer.writeDouble(offsets[6], object.longitude);
  writer.writeString(offsets[7], object.menuFileName);
  writer.writeString(offsets[8], object.storeId);
}

SelectedStoreDataEntity _selectedStoreDataEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = SelectedStoreDataEntity(
    address: reader.readStringOrNull(offsets[0]),
    cityId: reader.readStringOrNull(offsets[1]),
    cityName: reader.readStringOrNull(offsets[2]),
    countryId: reader.readStringOrNull(offsets[3]),
    countryName: reader.readStringOrNull(offsets[4]),
    latitude: reader.readDoubleOrNull(offsets[5]),
    longitude: reader.readDoubleOrNull(offsets[6]),
    menuFileName: reader.readStringOrNull(offsets[7]),
    storeId: reader.readStringOrNull(offsets[8]),
  );
  object.id = id;
  return object;
}

P _selectedStoreDataEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
    case 5:
      return (reader.readDoubleOrNull(offset)) as P;
    case 6:
      return (reader.readDoubleOrNull(offset)) as P;
    case 7:
      return (reader.readStringOrNull(offset)) as P;
    case 8:
      return (reader.readStringOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _selectedStoreDataEntityGetId(SelectedStoreDataEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _selectedStoreDataEntityGetLinks(
    SelectedStoreDataEntity object) {
  return [];
}

void _selectedStoreDataEntityAttach(
    IsarCollection<dynamic> col, Id id, SelectedStoreDataEntity object) {
  object.id = id;
}
