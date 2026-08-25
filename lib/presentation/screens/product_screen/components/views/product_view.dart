import 'package:cached_network_image/cached_network_image.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:sosedifedi/domain/models/assortment/assortment.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/forms/product_form.dart';
import 'package:sosedifedi/presentation/screens/product_screen/components/hidden_content.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/utils/utils.dart';

typedef OnModifierChange = void Function(List<ModifierGroup> modifierGroups);
typedef OnSelectGroup = void Function(Group group);

const kActionButtonSize = Size(double.infinity, 48.0);

class ProductView extends StatefulWidget {
  const ProductView({
    super.key,
    required this.product,
    this.onConfirm,
    this.actionButton,
    this.actionButtonSize = kActionButtonSize,
    required this.onModifierChange,
    required this.onSelectGroup,
    required this.onProductSelect,
  });

  final Product product;
  final VoidCallback? onConfirm;
  final Widget? actionButton;
  final Size actionButtonSize;
  final OnModifierChange onModifierChange;
  final OnSelectGroup onSelectGroup;
  final OnProductSelect onProductSelect;

  @override
  State<ProductView> createState() => _ProductViewState();
}

class _ProductViewState extends State<ProductView> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _hiddenContentController = HiddenContentController();

  @override
  Widget build(BuildContext context) {
    final product = widget.product;

    final imageUrl = product.imageUrl;

    final appbarHeight = imageUrl != null
        ? MediaQuery.of(context).size.width - kToolbarHeight
        : kToolbarHeight;

    return Stack(
      children: [
        CustomScrollView(
          slivers: [
            SliverCustomAppBar(
              stretch: true,
              pinned: true,
              expandedHeight: appbarHeight,
              flexibleSpace: ClipRRect(
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(AppBorderRadius.large),
                  bottomRight: Radius.circular(AppBorderRadius.large),
                ),
                child: imageUrl != null
                    ? FlexibleSpaceBar(
                        background: CachedNetworkImage(
                          imageUrl: imageUrl,
                          width: MediaQuery.of(context).size.width,
                          height: MediaQuery.of(context).size.width,
                          fit: BoxFit.cover,
                        ),
                      )
                    : null,
              ),
            ),
            SliverList.list(
              children: [
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: AppInsets.padding16),
                  child: RichText(
                    text: TextSpan(
                      style: Theme.of(context).textTheme.titleLarge,
                      children: [
                        TextSpan(text: product.name),
                        if (product.calorieIntake.weight != null)
                          _productWeight(
                            weightMeasure: product.calorieIntake.weightMeasure,
                            weight: product.calorieIntake.weight,
                          ),
                      ],
                    ),
                  ),
                ),
                if (product.itemCode != null)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: AppInsets.padding16,
                      right: AppInsets.padding16,
                      top: AppInsets.padding4,
                    ),
                    child: Text(
                      context.tr(
                        LocaleKeys.products_productCode,
                        args: [product.itemCode!],
                      ),
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                  ),
                FormBuilder(
                  key: _formKey,
                  clearValueOnUnregister: true,
                  onChanged: () {
                    _formKey.currentState!.save();
                    final value = _formKey.currentState!.value;
                    widget.onModifierChange(
                      value.entries
                          .map((e) => e.value as ModifierGroup)
                          .toList(),
                    );
                  },
                  child: Padding(
                    padding: const EdgeInsets.all(AppInsets.padding16),
                    child: ProductForm(
                      selectedProduct: product,
                      controller: _hiddenContentController,
                      onProductSelect: widget.onProductSelect,
                    ),
                  ),
                ),
              ],
            ),
            if (widget.actionButton != null)
              SliverToBoxAdapter(
                child: SizedBox(
                  height: AppInsets.padding16 + widget.actionButtonSize.height,
                  width: widget.actionButtonSize.width,
                ),
              ),
          ],
        ),
        if (widget.actionButton != null)
          Positioned(
            bottom: 0.0,
            left: 0.0,
            right: 0.0,
            child: Padding(
              padding: const EdgeInsets.only(
                right: AppInsets.padding16,
                left: AppInsets.padding16,
                bottom: AppInsets.padding16,
              ),
              child: SizedBox.fromSize(
                size: widget.actionButtonSize,
                child: widget.actionButton,
              ),
            ),
          )
      ],
    );
  }

  bool validate() {
    final hasError = !_formKey.currentState!.saveAndValidate();
    if (hasError) {
      final wrongFields = _formKey.currentState!.fields.values
          .where((element) => element.hasError)
          .toList();
      if (wrongFields.isNotEmpty) {
        _hiddenContentController.open();
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          wrongFields.first.focus();
          wrongFields.first.ensureScrollableVisibility();
        });
      }
    }
    return !hasError;
  }

  InlineSpan _productWeight({double? weight, String? weightMeasure}) {
    if (weight == null) {
      return const TextSpan();
    }
    return TextSpan(
      text: ' ${weight.toFormatString()} ${weightMeasure ?? ''}',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
            color:
                Theme.of(context).extension<CustomThemeExtension>()!.labelColor,
          ),
    );
  }
}

class _SliverActionButtonWidget extends SingleChildRenderObjectWidget {
  const _SliverActionButtonWidget({
    super.key,
    super.child,
  });

  @override
  _RenderSliverActionButtonWidget createRenderObject(BuildContext context) =>
      _RenderSliverActionButtonWidget();
}

class _RenderSliverActionButtonWidget extends RenderSliverSingleBoxAdapter {
  _RenderSliverActionButtonWidget({
    super.child,
  });

  @override
  void performLayout() {
    if (child == null) {
      geometry = SliverGeometry.zero;
      return;
    }
    final SliverConstraints constraints = this.constraints;
    child!.layout(constraints.asBoxConstraints(), parentUsesSize: true);

    final double childExtent;
    switch (constraints.axis) {
      case Axis.horizontal:
        childExtent = child!.size.width;
      case Axis.vertical:
        childExtent = child!.size.height;
    }
    final double paintedChildSize =
        clampDouble(childExtent, 0.0, constraints.remainingPaintExtent);
    final double cacheExtent =
        clampDouble(childExtent, 0.0, constraints.remainingCacheExtent);

    assert(paintedChildSize.isFinite);
    assert(paintedChildSize >= 0.0);
    geometry = SliverGeometry(
      scrollExtent: childExtent,
      paintExtent: paintedChildSize,
      cacheExtent: cacheExtent,
      maxPaintExtent: childExtent,
      hitTestExtent: paintedChildSize,
      paintOrigin: calculatePaintOffset2(constraints, paintedChildSize),
      visible: true,
    );
    print(paintedChildSize);
    print(geometry);
    setChildParentData(child!, constraints, geometry!);
  }

  double calculatePaintOffset2(
    SliverConstraints constraints,
    double paintedChildSize,
  ) {
    return -paintedChildSize;
    // return clampDouble(value, 0.0, constraints.remainingPaintExtent);
  }
}
