import 'package:flutter_test/flutter_test.dart';
import 'package:isar_community/isar.dart';
import 'package:sosedifedi/data/entities/cart/cart_entity.dart';
import 'package:sosedifedi/data/entities/store/store.dart';

void main() {
  test('Test Isar open schemas', () async {
    print('SelectedStoreDataEntitySchema id: ${SelectedStoreDataEntitySchema.id}');
    print('CartEntitySchema id: ${CartEntitySchema.id}');
    print('CartItemEntitySchema id: ${CartItemEntitySchema.id}');
  });
}
