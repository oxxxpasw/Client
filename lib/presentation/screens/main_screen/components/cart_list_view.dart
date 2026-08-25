import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/presentation/components/auto_animated_list/auto_animated_list.dart';
import 'package:sosedifedi/presentation/screens/main_screen/components/cart_product.dart';

class CartListView extends StatelessWidget {
  const CartListView({
    super.key,
    required this.children,
    this.onIncrement,
    this.onDecrement,
    this.onDelete,
    this.onCartItemPressed,
  });

  final List<CartItem> children;

  final void Function(CartItem cartItem)? onIncrement;
  final void Function(CartItem cartItem)? onDecrement;
  final void Function(CartItem cartItem)? onDelete;
  final void Function(CartItem cartItem)? onCartItemPressed;

  @override
  Widget build(BuildContext context) {
    return AutoAnimatedSliverList<CartItem>(
      items: children,
      insertDuration: const Duration(milliseconds: 300),
      removeDuration: const Duration(milliseconds: 300),
      keyingFunction: (CartItem item) => Key(item.id.toString()),
      itemBuilder:
          (BuildContext context, CartItem item, Animation<double> animation) {
        return FadeTransition(
          key: Key(item.id.toString()),
          opacity: animation,
          child: SizeTransition(
            sizeFactor: CurvedAnimation(
              parent: animation,
              curve: Curves.easeOut,
              reverseCurve: Curves.easeIn,
            ),
            axisAlignment: -1.0,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CartProduct(
                  cartItem: item,
                  onIncrement: () {
                    onIncrement?.call(item);
                  },
                  onDecrement: () {
                    onDecrement?.call(item);
                  },
                  onDelete: () {
                    onDelete?.call(item);
                  },
                  onPressed: () {
                    onCartItemPressed?.call(item);
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
