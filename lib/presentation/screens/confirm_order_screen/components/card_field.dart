import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

class FormBuilderCardField extends FormBuilderFieldDecoration<String> {
  final TextStyle? style;

  FormBuilderCardField({
    super.key,
    required super.name,
    super.validator,
    super.initialValue,
    super.onChanged,
    super.valueTransformer,
    super.enabled,
    super.onSaved,
    AutovalidateMode super.autovalidateMode = AutovalidateMode.disabled,
    super.onReset,
    super.focusNode,
    super.decoration = const InputDecoration(),
    this.style,
  }) : super(
          builder: (FormFieldState<String?> field) {
            final state = field as _FormBuilderCardFieldState;
            final effectiveTextStyle = style ??
                Theme.of(state.context).textTheme.headlineMedium ??
                const TextStyle();
            return DefaultTextStyle(
              style: effectiveTextStyle,
              child: InputDecorator(
                decoration: state.decoration
                    .copyWith(suffixIcon: const Icon(CustomICons.caretDown)),
                child: const Text(''),
              ),
            );
          },
        );

  @override
  FormBuilderFieldDecorationState<FormBuilderCardField, String> createState() =>
      _FormBuilderCardFieldState();
}

class _FormBuilderCardFieldState
    extends FormBuilderFieldDecorationState<FormBuilderCardField, String> {
  // @override
  // void initState() {
  //   super.initState();
  //   // _effectiveController = widget.controller ?? TextEditingController();
  //   // _selectedDialogCountry = widget.initialCountry ?? widget.countryList.first;
  // }

  // @override
  // void dispose() {
  //   // Dispose the _effectiveController when initState created it
  //   if (null == widget.controller) {
  //     _effectiveController.dispose();
  //   }
  //   super.dispose();
  // }

  // void invokeChange() {
  //   didChange(fullNumber);
  //   widget.onChanged?.call(fullNumber);
  // }
  //
  // @override
  // void reset() {
  //   super.reset();
  //   _effectiveController = widget.controller ?? TextEditingController();
  //   _selectedDialogCountry = widget.initialCountry ?? widget.countryList.first;
  // }
}
