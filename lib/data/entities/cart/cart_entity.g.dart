// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cart_entity.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetCartEntityCollection on Isar {
  IsarCollection<CartEntity> get cartEntitys => this.collection();
}

const CartEntitySchema = CollectionSchema(
  name: r'CartEntity',
  id: -1125901979270655682,
  properties: {
    r'fridgeId': PropertySchema(
      id: 0,
      name: r'fridgeId',
      type: IsarType.string,
    ),
    r'storeId': PropertySchema(
      id: 1,
      name: r'storeId',
      type: IsarType.string,
    ),
    r'userId': PropertySchema(
      id: 2,
      name: r'userId',
      type: IsarType.string,
    )
  },
  estimateSize: _cartEntityEstimateSize,
  serialize: _cartEntitySerialize,
  deserialize: _cartEntityDeserialize,
  deserializeProp: _cartEntityDeserializeProp,
  idName: r'id',
  indexes: {
    r'userId': IndexSchema(
      id: 862896301323593321,
      name: r'userId',
      unique: true,
      replace: true,
      properties: [
        IndexPropertySchema(
          name: r'userId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {
    r'products': LinkSchema(
      id: 981629863059965709,
      name: r'products',
      target: r'CartItemEntity',
      single: false,
    )
  },
  embeddedSchemas: {},
  getId: _cartEntityGetId,
  getLinks: _cartEntityGetLinks,
  attach: _cartEntityAttach,
  version: '3.2.1',
);

int _cartEntityEstimateSize(
  CartEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.fridgeId;
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
  {
    final value = object.userId;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _cartEntitySerialize(
  CartEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.fridgeId);
  writer.writeString(offsets[1], object.storeId);
  writer.writeString(offsets[2], object.userId);
}

CartEntity _cartEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CartEntity(
    fridgeId: reader.readStringOrNull(offsets[0]),
    storeId: reader.readStringOrNull(offsets[1]),
    userId: reader.readStringOrNull(offsets[2]),
  );
  object.id = id;
  return object;
}

P _cartEntityDeserializeProp<P>(
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
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cartEntityGetId(CartEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cartEntityGetLinks(CartEntity object) {
  return [object.products];
}

void _cartEntityAttach(
    IsarCollection<dynamic> col, Id id, CartEntity object) {
  object.id = id;
  object.products.attach(col, col.isar.collection<CartItemEntity>(), r'products', id);
}

extension CartEntityQueryWhere
    on QueryBuilder<CartEntity, CartEntity, QWhere> {
  QueryBuilder<CartEntity, CartEntity, QAfterWhereClause> anyId() {
    return QueryBuilder.apply(this, (q) {
      return q.addWhereClause(const IdWhereClause.any());
    });
  }

  QueryBuilder<CartEntity, CartEntity, QAfterWhereClause> userIdEqualTo(
      String? userId) {
    return QueryBuilder.apply(this, (q) {
      return q.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [userId],
      ));
    });
  }

  QueryBuilder<CartEntity, CartEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (q) {
      return q.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }
}

extension CartEntityQueryWhereClause
    on QueryBuilder<CartEntity, CartEntity, QWhereClause> {
  QueryBuilder<CartEntity, CartEntity, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (q) {
      return q.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<CartEntity, CartEntity, QAfterWhereClause> userIdEqualTo(
      String? userId) {
    return QueryBuilder.apply(this, (q) {
      return q.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'userId',
        value: [userId],
      ));
    });
  }
}

extension CartEntityQueryFilter
    on QueryBuilder<CartEntity, CartEntity, QFilterCondition> {
  QueryBuilder<CartEntity, CartEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (q) {
      return q.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CartEntity, CartEntity, QAfterFilterCondition> userIdEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (q) {
      return q.addFilterCondition(FilterCondition.equalTo(
        property: r'userId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }
}

// **************************************************************************
// CartItemEntity Generator
// **************************************************************************

extension GetCartItemEntityCollection on Isar {
  IsarCollection<CartItemEntity> get cartItemEntitys => this.collection();
}

const CartItemEntitySchema = CollectionSchema(
  name: r'CartItemEntity',
  id: -2058360531079595637,
  properties: {
    r'amount': PropertySchema(
      id: 0,
      name: r'amount',
      type: IsarType.double,
    ),
    r'itemId': PropertySchema(
      id: 1,
      name: r'itemId',
      type: IsarType.string,
    ),
    r'name': PropertySchema(
      id: 2,
      name: r'name',
      type: IsarType.string,
    ),
  },
  estimateSize: _cartItemEntityEstimateSize,
  serialize: _cartItemEntitySerialize,
  deserialize: _cartItemEntityDeserialize,
  deserializeProp: _cartItemEntityDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {
    r'cart': LinkSchema(
      id: 6358618012652393729,
      name: r'cart',
      target: r'CartEntity',
      single: true,
      linkName: r'products',
    )
  },
  embeddedSchemas: {},
  getId: _cartItemEntityGetId,
  getLinks: _cartItemEntityGetLinks,
  attach: _cartItemEntityAttach,
  version: '3.2.1',
);

int _cartItemEntityEstimateSize(
  CartItemEntity object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.itemId.length * 3;
  bytesCount += 3 + object.name.length * 3;
  return bytesCount;
}

void _cartItemEntitySerialize(
  CartItemEntity object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeDouble(offsets[0], object.amount);
  writer.writeString(offsets[1], object.itemId);
  writer.writeString(offsets[2], object.name);
}

CartItemEntity _cartItemEntityDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = CartItemEntity(
    amount: reader.readDouble(offsets[0]),
    itemId: reader.readString(offsets[1]),
    name: reader.readString(offsets[2]),
    modifierGroups: const [],
    barcodeList: const [],
  );
  object.id = id;
  return object;
}

P _cartItemEntityDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readDouble(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _cartItemEntityGetId(CartItemEntity object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _cartItemEntityGetLinks(CartItemEntity object) {
  return [object.cart];
}

void _cartItemEntityAttach(
    IsarCollection<dynamic> col, Id id, CartItemEntity object) {
  object.id = id;
  object.cart.attach(col, col.isar.collection<CartEntity>(), r'cart', id);
}

extension CartItemEntityQueryWhere
    on QueryBuilder<CartItemEntity, CartItemEntity, QWhere> {
  QueryBuilder<CartItemEntity, CartItemEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (q) {
      return q.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }
}

extension CartItemEntityQueryWhereClause
    on QueryBuilder<CartItemEntity, CartItemEntity, QWhereClause> {
  QueryBuilder<CartItemEntity, CartItemEntity, QAfterWhereClause> idEqualTo(
      Id id) {
    return QueryBuilder.apply(this, (q) {
      return q.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }
}

extension CartItemEntityQueryFilter
    on QueryBuilder<CartItemEntity, CartItemEntity, QFilterCondition> {
  QueryBuilder<CartItemEntity, CartItemEntity, QAfterFilterCondition> idEqualTo(
      Id value) {
    return QueryBuilder.apply(this, (q) {
      return q.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<CartItemEntity, CartItemEntity, QAfterFilterCondition> cart(
      FilterQuery<CartEntity> q) {
    return QueryBuilder.apply(this, (query) {
      return query.link(q, r'cart');
    });
  }
}
