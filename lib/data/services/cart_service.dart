import 'dart:async';
import 'package:collection/collection.dart';
import 'package:injectable/injectable.dart';
import 'package:isar_community/isar.dart';
import 'package:sosedifedi/data/entities/cart/cart_entity.dart';

abstract class CartService {
  Stream<void> get cartChangeStream;

  Future<CartEntity> getCart([String? userId]);

  Future<int> addToCart(CartItemEntity item, [String? userId]);

  Future<List<int>> addAllToCart(List<CartItemEntity> items, [String? userId]);

  Future<void> incrementProduct(int itemId, [String? userId]);

  Future<void> decrementProduct(int itemId, [String? userId]);

  Future<void> deleteProduct(int itemId, [String? userId]);

  Future<void> updateProduct(CartItemEntity item, [String? userId]);

  Future<int> getCount([String? userId]);

  Future<void> emptyCart([String? userId]);

  Future<void> saveCart({
    required List<CartItemEntity> items,
    String? userId,
    String? storeId,
    String? fridgeId,
  });

  Future<void> deleteAllCartsByUserId(String? userId);
}

@Singleton(as: CartService)
class CartServiceImpl extends CartService {
  CartServiceImpl({
    this.isar,
  });

  @override
  late Stream<void> cartChangeStream;

  final Isar? isar;
  final StreamController<void> _changeController = StreamController<void>.broadcast();
  final Map<String, CartEntity> _inMemoryCarts = {};
  final List<CartItemEntity> _inMemoryItems = [];
  int _nextItemId = 1;

  IsarCollection<CartEntity>? get carts => isar?.cartEntitys;
  IsarCollection<CartItemEntity>? get cartItems => isar?.cartItemEntitys;

  @PostConstruct(preResolve: true)
  Future<void> init() async {
    if (isar != null) {
      try {
        if (await carts!.where().isEmpty()) {
          await isar!.writeTxn(() => carts!.put(CartEntity()));
        }
        cartChangeStream =
            carts!.watchLazy(fireImmediately: true).asBroadcastStream();
        return;
      } catch (_) {}
    }
    cartChangeStream = _changeController.stream;
  }

  @override
  Future<int> addToCart(CartItemEntity item, [String? userId]) async {
    if (isar != null) {
      try {
        final CartEntity cart =
            await carts!.where().userIdEqualTo(userId).findFirst() ??
                await isar!.writeTxn(
                  () async {
                    final newCart = CartEntity(userId: userId);
                    await carts!.put(newCart);
                    return newCart;
                  },
                );
        cart.products.add(item);

        return isar!.writeTxn(() async {
          final id = await cartItems!.put(item);
          await cart.products.save();
          return id;
        });
      } catch (_) {}
    }
    item.id = _nextItemId++;
    _inMemoryItems.add(item);
    final key = userId ?? 'guest';
    final cart = _inMemoryCarts.putIfAbsent(key, () => CartEntity(userId: userId));
    cart.products.add(item);
    _changeController.add(null);
    return item.id;
  }

  @override
  Future<void> decrementProduct(int itemId, [String? userId]) async {
    if (isar != null) {
      try {
        final product = await cartItems!.where().idEqualTo(itemId).findFirst();
        if (product == null) return;
        product.amount--;
        return isar!.writeTxn(() async {
          if (product.amount <= 0) {
            await cartItems!.delete(product.id);
          } else {
            await cartItems!.put(product);
          }
        });
      } catch (_) {}
    }
    final index = _inMemoryItems.indexWhere((it) => it.id == itemId);
    if (index != -1) {
      _inMemoryItems[index].amount--;
      if (_inMemoryItems[index].amount <= 0) {
        _inMemoryItems.removeAt(index);
      }
      _changeController.add(null);
    }
  }

  @override
  Future<void> deleteProduct(int itemId, [String? userId]) async {
    if (isar != null) {
      try {
        await isar!.writeTxn(() => cartItems!.where().idEqualTo(itemId).deleteFirst());
        return;
      } catch (_) {}
    }
    _inMemoryItems.removeWhere((it) => it.id == itemId);
    _changeController.add(null);
  }

  @override
  Future<void> emptyCart([String? userId]) async {
    if (isar != null) {
      try {
        final cart = await carts!.where().userIdEqualTo(userId).findFirst();
        if (cart != null) {
          await isar!.writeTxn(() async {
            await cart.products.filter().deleteAll();
          });
        }
        return;
      } catch (_) {}
    }
    _inMemoryItems.clear();
    _changeController.add(null);
  }

  @override
  Future<CartEntity> getCart([String? userId]) async {
    if (isar != null) {
      try {
        final cart = await carts!.where().userIdEqualTo(userId).findFirst() ??
            (await _createNewCart(userId));
        await cart.products.load();
        return cart;
      } catch (_) {}
    }
    final key = userId ?? 'guest';
    return _inMemoryCarts.putIfAbsent(key, () => CartEntity(userId: userId));
  }

  Future<CartEntity> _createNewCart(String? userId) async {
    final lastCart = await carts!.where(sort: Sort.desc).anyId().findFirst();
    var newCart = CartEntity(userId: userId);
    if (lastCart != null && lastCart.userId == null) {
      newCart = lastCart..userId = userId;
    }
    await isar!.writeTxn(() => carts!.put(newCart));
    return newCart;
  }

  @override
  Future<int> getCount([String? userId]) async {
    if (isar != null) {
      try {
        return cartItems!.filter().cart((q) => q.userIdEqualTo(userId)).count();
      } catch (_) {}
    }
    return _inMemoryItems.length;
  }

  @override
  Future<void> incrementProduct(int itemId, [String? userId]) async {
    if (isar != null) {
      try {
        final product = await cartItems!.where().idEqualTo(itemId).findFirst();
        if (product != null) {
          product.amount++;
          return isar!.writeTxn(() => cartItems!.put(product));
        }
      } catch (_) {}
    }
    final item = _inMemoryItems.firstWhereOrNull((it) => it.id == itemId);
    if (item != null) {
      item.amount++;
      _changeController.add(null);
    }
  }

  @override
  Future<void> updateProduct(CartItemEntity item, [String? userId]) async {
    if (isar != null) {
      try {
        return isar!.writeTxn(() => cartItems!.put(item));
      } catch (_) {}
    }
    final index = _inMemoryItems.indexWhere((it) => it.id == item.id);
    if (index != -1) {
      _inMemoryItems[index] = item;
    } else {
      _inMemoryItems.add(item);
    }
    _changeController.add(null);
  }

  @override
  Future<List<int>> addAllToCart(List<CartItemEntity> items, [String? userId]) async {
    if (isar != null) {
      try {
        final CartEntity cart =
            await carts!.where().userIdEqualTo(userId).findFirst() ??
                await isar!.writeTxn(
                  () async {
                    final newCart = CartEntity(userId: userId);
                    await carts!.put(newCart);
                    return newCart;
                  },
                );
        cart.products.addAll(items);

        return isar!.writeTxn(() async {
          final ids = await cartItems!.putAll(items);
          await cart.products.save();
          return ids;
        });
      } catch (_) {}
    }
    final ids = <int>[];
    for (var it in items) {
      ids.add(await addToCart(it, userId));
    }
    return ids;
  }

  @override
  Future<void> saveCart({
    required List<CartItemEntity> items,
    String? userId,
    String? storeId,
    String? fridgeId,
  }) async {
    if (isar != null) {
      try {
        return isar!.writeTxn(() async {
          final CartEntity cart = await _getCartByUserOrCreateNew(userId);
          cart.storeId = storeId;
          cart.fridgeId = fridgeId;
          await cartItems!.filter().cart((q) => q.idEqualTo(cart.id)).deleteAll();
          cart.products.addAll(items);
          await cartItems!.putAll(items);
          await cart.products.save();
          await carts!.put(cart);
        });
      } catch (_) {}
    }
    _inMemoryItems
      ..clear()
      ..addAll(items);
    final key = userId ?? 'guest';
    final cart = _inMemoryCarts.putIfAbsent(key, () => CartEntity(userId: userId));
    cart.storeId = storeId;
    cart.fridgeId = fridgeId;
    _changeController.add(null);
  }

  Future<CartEntity> _getCartByUserOrCreateNew(String? userId) async {
    final cart = await carts!.where().userIdEqualTo(userId).findFirst();
    if (cart != null) {
      return cart;
    }
    final newCart = CartEntity(userId: userId);
    await carts!.put(newCart);
    return newCart;
  }

  @override
  Future<void> deleteAllCartsByUserId(String? userId) async {
    if (isar != null) {
      try {
        return isar!.writeTxn(
          () async {
            final cartsForDelete =
                await carts!.where().userIdEqualTo(userId).findAll();
            for (final cart in cartsForDelete) {
              await cart.products.filter().deleteAll();
              carts!.delete(cart.id);
            }
          },
        );
      } catch (_) {}
    }
    final key = userId ?? 'guest';
    _inMemoryCarts.remove(key);
    _inMemoryItems.clear();
    _changeController.add(null);
  }
}
