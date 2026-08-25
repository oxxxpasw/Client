import 'package:sosedifedi/presentation/components/custom_checkbox_list_tile.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/theme/models/colors/app_colors.dart';
import 'package:sosedifedi/presentation/router/route_builders/modal_sheet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

class FormBuilderModalDropdownField<T>
    extends FormBuilderFieldDecoration<List<T>> {
  final Widget? icon;
  final VoidCallback? onTap;

  final TextStyle? style;
  final bool shouldRequestFocus;
  final List<DropdownMenuItem<T>> items;
  final int? maxOptions;
  final int? minOptions;
  final Widget Function(List<T>?)? buildTitle;
  final Widget? listTitle;

  /// Creates field for international phone number input.
  FormBuilderModalDropdownField({
    super.key,
    required super.name,
    super.validator,
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.enabled = true,
    super.onSaved,
    super.autovalidateMode = AutovalidateMode.disabled,
    super.onReset,
    super.focusNode,
    super.decoration = const InputDecoration(),
    this.onTap,
    required this.items,
    this.shouldRequestFocus = false,
    this.maxOptions,
    this.minOptions,
    this.icon,
    this.buildTitle,
    this.style,
    this.listTitle,
  }) : super(
          builder: (FormFieldState<List<T>?> field) {
            final state = field as _FormBuilderModalDropdownFieldState<T>;
            void changeValue(List<T>? value) {
              if (shouldRequestFocus) {
                state.focus();
              }
              state.didChange(value);
            }

            final color = Theme.of(state.context)
                .extension<CustomThemeExtension>()!
                .secondaryBackground;
            return GestureDetector(
              onTap: () {
                showAdaptiveModalBottomSheet(
                  context: state.context,
                  backgroundColor: color,
                  builder: (context) => SafeArea(
                    top: false,
                    child: ConstrainedBox(
                      constraints: const BoxConstraints(
                        minHeight: 0.0,
                        maxHeight: 350.0,
                        minWidth: double.infinity,
                        maxWidth: double.infinity,
                      ),
                      child: SingleChildScrollView(
                        controller: ModalScrollController.of(context),
                        child: ValueListenableBuilder(
                          valueListenable: state._valueNotifier,
                          builder: (context, List<T>? value, _) {
                            return Column(
                              children: [
                                if (listTitle != null) ...[
                                  listTitle,
                                  const Divider(
                                    height: 1,
                                    thickness: 1,
                                  ),
                                ],
                                GroupedCustomCheckboxListTile<T>(
                                  value: value ?? [],
                                  onChanged: changeValue,
                                  maxOptions: maxOptions,
                                  minOptions: minOptions,
                                  background: Colors.transparent,
                                  activeBackground: Colors.transparent,
                                  options: items
                                      .map(
                                        (e) => FieldOption<T>(
                                          value: e.value as T,
                                          child: e.child,
                                        ),
                                      )
                                      .toList(),
                                ),
                              ],
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                );
                onTap?.call();
              },
              child: DefaultTextStyle(
                style: state.effectiveTextStyle,
                child: InputDecorator(
                  isEmpty: state.value == null || state.value!.isEmpty,
                  isFocused: false,
                  decoration: state.decoration.copyWith(
                    suffixIcon: icon ?? const Icon(CustomICons.caretDown),
                  ),
                  child: buildTitle?.call(state.value),
                ),
              ),
            );
          },
        );

  @override
  FormBuilderFieldDecorationState<FormBuilderModalDropdownField<T>, List<T>>
      createState() => _FormBuilderModalDropdownFieldState<T>();
}

class _FormBuilderModalDropdownFieldState<T>
    extends FormBuilderFieldDecorationState<FormBuilderModalDropdownField<T>,
        List<T>> {
  late final ValueNotifier<List<T>?> _valueNotifier =
      ValueNotifier<List<T>?>(null);

  // String get fullNumber {
  //   // When there is no phone number text, the field is empty -- the country
  //   // prefix is only prepended when a phone number is specified.
  //   final phoneText = _effectiveController.text;
  //   return phoneText.isNotEmpty
  //       ? '+${_selectedDialogCountry.code} $phoneText'
  //       : phoneText;
  // }

  TextStyle get effectiveTextStyle =>
      widget.style ??
      Theme.of(context).inputDecorationTheme.labelStyle ??
      Theme.of(context).textTheme.titleMedium ??
      const TextStyle();

  @override
  void initState() {
    super.initState();
    _valueNotifier.value = value;
    // _selectedDialogCountry = widget.initialCountry ?? widget.countryList.first;
  }

  // void invokeChange() {
  //   // didChange(fullNumber);
  //   // widget.onChanged?.call(fullNumber);
  // }

  @override
  void reset() {
    super.reset();
    _valueNotifier.value = value;
  }

  @override
  void didChange(List<T>? value) {
    super.didChange(value);
    _valueNotifier.value = value;
  }
}
