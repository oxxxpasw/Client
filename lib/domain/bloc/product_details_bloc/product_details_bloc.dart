import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/assortment_repository.dart';
import 'package:sosedifedi/data/repository/cart_repository/cart_repository.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/utils/dio_error_handler/messages/messages.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc.dart';

part 'product_details_bloc.freezed.dart';
part 'product_details_state.dart';

@injectable
class ProductDetailsBloc
    extends SrCubit<ProductDetailsState, ProductDetailsSr> {
  ProductDetailsBloc({
    required this.productsRepository,
    required this.cartRepository,
    @factoryParam this.assortmentFile,
  }) : super(const ProductDetailsState());

  @protected
  final AssortmentRepository productsRepository;
  @protected
  final CartRepository cartRepository;
  @protected
  final String? assortmentFile;

  Future<void> loadData(String productId) async {
    emit(state.copyWith(status: ProductDetailsStateStatus.loading));
    final response = await productsRepository.getProduct(
      id: productId,
      assortmentFile: assortmentFile,
    );
    if (response.hasError) {
      addSr(
        ProductDetailsSr.error(ErrorMessages.getMessage(response.error)),
      );
      return;
    }
    emit(
      state.copyWith(
        status: ProductDetailsStateStatus.ready,
        product: response.result.copyWith(),
      ),
    );
  }

  void selectGroup(Group group) {
    Product? product;
    if (group.products != null && group.products!.isNotEmpty) {
      product = group.products!.firstWhere((element) => element.isDefault,
          orElse: () => group.products!.first);
    }

    emit(
      state.copyWith(
        status: ProductDetailsStateStatus.ready,
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

  Future<void> addToCart() async {
    try {
      if (state.product == null) {
        return;
      }
      await cartRepository.addToCart(product: state.product!);
      addSr(const ProductDetailsSr.added());
    } catch (e) {
      addError(e);
      addSr(ProductDetailsSr.error(ErrorMessages.undefinedError));
    }
  }
}
