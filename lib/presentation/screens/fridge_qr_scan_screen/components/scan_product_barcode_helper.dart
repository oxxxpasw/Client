import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sosedifedi/domain/bloc/cart_bloc/cart_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/icons/derevenka_dobrenka_icons.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/stream_listener.dart';

// class ScanProductBarcodeHelper extends StatefulWidget {
//   const ScanProductBarcodeHelper({super.key});
//
//   @override
//   State<ScanProductBarcodeHelper> createState() =>
//       _ScanProductBarcodeHelperState();
// }
//
// class _ScanProductBarcodeHelperState extends State<ScanProductBarcodeHelper> {
//   bool _isShowInputPressed = false;
//
//   final _fieldPlaceHolderKey = GlobalKey();
//
//   @override
//   Widget build(BuildContext context) {
//     return BlocBuilder<CartBloc, CartState>(
//       buildWhen: (previous, current) =>
//           previous.products.isNotEmpty != current.products.isNotEmpty,
//       builder: (context, state) {
//         return LayoutBuilder(builder: (context, constraints) {
//           return AnimatedCrossFade(
//             alignment: Alignment.topCenter,
//             firstCurve: Curves.easeOutCubic,
//             secondCurve: Curves.easeOutCubic,
//             firstChild: BarcodeTextFieldPlaceHolder(
//               key: _fieldPlaceHolderKey,
//               onPressed: _onPressed,
//             ),
//             secondChild: SizedBox(
//               height:
//                   constraints.maxHeight.isFinite ? constraints.maxHeight : null,
//               child: ScannerMessageCard(
//                 child: Builder(
//                   builder: (context) {
//                     final textStyle = Theme.of(context).textTheme.bodySmall;
//                     return RichText(
//                       text: TextSpan(
//                         style: textStyle,
//                         children: [
//                           TextSpan(
//                               text: context
//                                   .tr(LocaleKeys.fridge_helpers_scanProduct_1)),
//                           TextSpan(
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 setState(() {
//                                   _isShowInputPressed = true;
//                                 });
//                                 WidgetsBinding.instance
//                                     .addPostFrameCallback((_) {
//                                   _onPressed();
//                                 });
//                               },
//                             text: context
//                                 .tr(LocaleKeys.fridge_helpers_scanProduct_2),
//                             style: textStyle?.copyWith(
//                               color: Theme.of(context)
//                                   .colorScheme
//                                   .primary
//                                   .withOpacity(0.65),
//                               fontWeight: FontWeight.w600,
//                             ),
//                           )
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//             ),
//             crossFadeState: state.products.isNotEmpty || _isShowInputPressed
//                 ? CrossFadeState.showFirst
//                 : CrossFadeState.showSecond,
//             duration: const Duration(
//               milliseconds: 250,
//             ),
//           );
//         });
//       },
//     );
//   }
//
//   void _onPressed() async {
//     final store = context.read<CartBloc>().state.store;
//     if (store != null) {
//       final result = await context.router.push(CartSearchRoute(store: store));
//       if (result is Map<Product, int> && mounted) {
//         context.read<CartBloc>().add(CartEvent.onAddMultipleProducts(result));
//       }
//     }
//   }
// }

class BarcodeTextFieldPlaceHolder extends StatelessWidget {
  const BarcodeTextFieldPlaceHolder({
    super.key,
    this.onPressed,
  });

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary,
      ),
      borderRadius: BorderRadius.circular(AppBorderRadius.medium),
    );
    return GestureDetector(
      onTap: onPressed,
      child: InputDecorator(
        decoration: InputDecoration(
          filled: true,
          fillColor: Theme.of(context).cardTheme.color,
          enabledBorder: border,
          focusedBorder: border,
          disabledBorder: border,
          errorBorder: border,
          focusedErrorBorder: border,
          border: border,
          prefixIcon: Icon(
            DerevenkaDobrenkaIcons.search,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        child: Text(
          context.tr(LocaleKeys.fridge_barcodeInput_hint),
          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.primary,
              ),
        ),
      ),
    );
  }
}

class BarcodeTextField extends StatefulWidget {
  const BarcodeTextField({
    super.key,
    required this.cartBloc,
    required this.onSubmitted,
    required this.onAdded,
  });

  final CartBloc cartBloc;

  final ValueChanged<String> onSubmitted;

  final ValueChanged<String> onAdded;

  @override
  State<BarcodeTextField> createState() => _BarcodeTextFieldState();
}

class _BarcodeTextFieldState extends State<BarcodeTextField> {
  final _controller = TextEditingController();
  bool _needShowSuffix = false;
  bool _isBarcodeAdded = false;

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      setState(() {
        _needShowSuffix = _controller.text.isNotEmpty;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    final border = OutlineInputBorder(
      borderSide: BorderSide(
        color: Theme.of(context).colorScheme.primary,
      ),
      borderRadius: BorderRadius.circular(AppBorderRadius.medium),
    );
    return StreamListener<CartSr>(
      stream: widget.cartBloc.singleResults,
      onData: (sr) => sr.whenOrNull(
        newProductAdded: (_) => setState(() {
          _controller.clear();
          _isBarcodeAdded = true;
        }),
      ),
      child: TextField(
        keyboardType: TextInputType.number,
        autofocus: true,
        controller: _controller,
        onSubmitted: (String data) {
          widget.onSubmitted(data.trim());
        },
        style: Theme.of(context).textTheme.titleSmall,
        decoration: InputDecoration(
          hintText: _isBarcodeAdded
              ? context.tr(LocaleKeys.fridge_barcodeInput_barcodeAddedHilt)
              : context.tr(LocaleKeys.fridge_barcodeInput_hint),
          hintStyle: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: Theme.of(context).colorScheme.onSurfaceVariant,
              ),
          filled: true,
          fillColor: Theme.of(context).cardTheme.color,
          enabledBorder: border,
          focusedBorder: border,
          disabledBorder: border,
          errorBorder: border,
          focusedErrorBorder: border,
          border: border,
          prefixIcon: Icon(
            DerevenkaDobrenkaIcons.search,
            color: Theme.of(context).colorScheme.primary,
          ),
          suffix: _needShowSuffix
              ? GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () {
                    setState(() {
                      final data = _controller.text.trim();
                      widget.onAdded(data);
                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: AppInsets.padding16,
                      vertical: AppInsets.padding8,
                    ),
                    child: Text(
                      context.tr(LocaleKeys.fridge_barcodeInput_action),
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: Theme.of(context).colorScheme.primary,
                          ),
                    ),
                  ),
                )
              : null,
        ),
      ),
    );
  }
}
