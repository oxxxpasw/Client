import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'edit_product_bloc.freezed.dart';
part 'edit_product_state.dart';

@injectable
class EditProductBloc extends SrCubit<EditProductState, EditProductSr> {
  EditProductBloc({
    required this.productsRepository,
    required this.cartRepository,
  }) : super(const EditProductState());

  @protected
  final AssortmentRepository productsRepository;
  @protected
  final CartRepository cartRepository;

  Future<void> loadData(CartItem cartItem) async {
    throw UnimplementedError();
    // emit(state.copyWith(status: EditProductStateStatus.loading));
    // if (cartItem.product.groupId == null) {
    //   addSr(const EditProductSr.error('error'));
    // }
    // final response = await productsRepository.getGroup(id: cartItem.product.groupId!);
    // if (response.hasError) {
    //   addSr(
    //     EditProductSr.error(ErrorMessages.getMessage(response.error)),
    //   );
    //   return;
    // }
    //
    // var group = response.result;
    // if (group.products != null && group.products!.isNotEmpty) {
    //   final products = group.products!
    //       .map(
    //         (e) => e.copyWith(
    //           amount: cartItem.amount,
    //           uniqueId: cartItem.uniqueId,
    //         ),
    //       )
    //       .toList();
    //   final index = products.indexWhere((element) => element.id == cartItem.id);
    //   if (index != -1) {
    //     products[index] = cartItem;
    //   }
    //   group = group.copyWith(
    //     products: products,
    //   );
    // }
    // emit(
    //   state.copyWith(
    //     status: EditProductStateStatus.ready,
    //     group: group,
    //     product: cartItem.copyWith(),
    //   ),
    // );
  }

  void selectGroup(Group group) {
    Product? product;
    if (group.products != null && group.products!.isNotEmpty) {
      product = group.products!.firstWhere((element) => element.isDefault,
          orElse: () => group.products!.first);
    }

    emit(
      state.copyWith(
        status: EditProductStateStatus.ready,
        group: group,
        product: product?.copyWith(),
      ),
    );
  }

  void selectProduct(Product product) {
    emit(
      state.copyWith(
        product: product,
      ),
    );
  }

  void changeModifiers(List<ModifierGroup> modifierGroups) {
    emit(
      state.copyWith(
        product: state.product?.copyWith(modifierGroups: modifierGroups),
      ),
    );
  }

  Future<void> save() async {
    throw UnimplementedError();
    // try {
    //   if (state.product == null || state.product!.uniqueId == null) {
    //     return;
    //   }
    //   await cartRepository.updateProduct(state.product!);
    //   addSr(const EditProductSr.added());
    // } catch (e) {
    //   addError(e);
    //   addSr(EditProductSr.error(ErrorMessages.undefinedError));
    // }
  }
}
