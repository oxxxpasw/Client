import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:phone_numbers_parser/phone_numbers_parser.dart'
    as phone_numbers_parser;
import 'package:sosedifedi/domain/models/phone/phone.dart';
import 'package:sosedifedi/utils/phone.dart';

class FormBuilderPhoneField2 extends FormBuilderFieldDecoration<Phone> {
  final TextInputType keyboardType;
  final bool obscureText;
  final TextStyle? style;
  final TextEditingController? controller;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final StrutStyle? strutStyle;
  final TextDirection? textDirection;
  final TextAlign textAlign;
  final bool autofocus;
  final bool autocorrect;
  final MaxLengthEnforcement maxLengthEnforcement;
  final int? maxLength;
  final VoidCallback? onEditingComplete;
  final ValueChanged<Phone>? onFieldSubmitted;
  final List<TextInputFormatter>? inputFormatters;
  final double cursorWidth;
  final Radius? cursorRadius;
  final Color? cursorColor;
  final Brightness? keyboardAppearance;
  final EdgeInsets scrollPadding;
  final bool enableInteractiveSelection;
  final InputCounterWidgetBuilder? buildCounter;
  final bool expands;
  final int? minLines;
  final bool? showCursor;
  final VoidCallback? onTap;
  final TextAlignVertical? textAlignVertical;
  final String mask;
  final String replaceSymbol;
  final String prefix;

  /// Creates field for international phone number input.
  FormBuilderPhoneField2({
    super.key,
    //From Super
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
    this.obscureText = false,
    this.textCapitalization = TextCapitalization.none,
    this.scrollPadding = const EdgeInsets.all(20.0),
    this.enableInteractiveSelection = true,
    this.maxLengthEnforcement = MaxLengthEnforcement.enforced,
    this.textAlign = TextAlign.start,
    this.autofocus = false,
    this.autocorrect = true,
    this.cursorWidth = 2.0,
    this.keyboardType = TextInputType.phone,
    this.style,
    this.controller,
    this.textInputAction,
    this.strutStyle,
    this.textDirection,
    this.maxLength,
    this.onEditingComplete,
    this.onFieldSubmitted,
    this.inputFormatters,
    this.cursorRadius,
    this.cursorColor,
    this.keyboardAppearance,
    this.buildCounter,
    this.expands = false,
    this.minLines,
    this.showCursor,
    this.onTap,
    this.textAlignVertical,
    required this.mask,
    this.replaceSymbol = '0',
    required this.prefix,
  })  : assert(initialValue == null || controller == null),
        super(
          builder: (FormFieldState<Phone?> field) {
            final state = field as _FormBuilderPhoneFieldState;
            final effectiveStyle = style ??
                Theme.of(state.context).textTheme.bodyLarge ??
                const TextStyle();
            final text = state._effectiveController.text;
            return InputDecorator(
              decoration: state.decoration,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                            text: text,
                            style: effectiveStyle.copyWith(
                              color: Colors.transparent,
                            ),
                          ),
                          TextSpan(
                            text: mask.substring(
                              text.length,
                              mask.length,
                            ),
                            style: effectiveStyle.copyWith(
                              color: Color(0xFFABABAB),
                            ),
                          )
                        ]),
                      ),
                    ),
                  ),
                  TextField(
                    enabled: state.enabled,
                    style: effectiveStyle,
                    focusNode: state.effectiveFocusNode,
                    inputFormatters: [
                      ...?inputFormatters,
                      PhoneMaskFormatter(
                          mask: mask, replaceSymbol: replaceSymbol),
                    ],
                    scrollPadding: EdgeInsets.zero,
                    decoration: InputDecoration(
                      border: InputBorder.none,
                      enabledBorder: InputBorder.none,
                      errorBorder: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      focusedBorder: InputBorder.none,
                      focusedErrorBorder: InputBorder.none,
                      hintText: state.decoration.hintText,
                      hintStyle: state.decoration.hintStyle,
                      contentPadding: EdgeInsets.zero,
                      constraints: const BoxConstraints(),
                    ),
                    onChanged: (value) {
                      final phone = '${field.widget.prefix} $value';
                      final frPhone =
                          phone_numbers_parser.PhoneNumber.parse(phone);
                      state.didChange(
                        Phone(
                          originalPhone: phone,
                          formattedPhone:
                              '+${frPhone.countryCode} ${frPhone.getFormattedNsn()}',
                          e164: frPhone.isValid(
                                  type: phone_numbers_parser
                                      .PhoneNumberType.mobile)
                              ? frPhone.international
                              : null,
                        ),
                      );
                    },
                    maxLines: 1,
                    keyboardType: keyboardType,
                    obscureText: obscureText,
                    onEditingComplete: onEditingComplete,
                    controller: state._effectiveController,
                    autocorrect: autocorrect,
                    autofocus: autofocus,
                    buildCounter: buildCounter,
                    cursorColor: cursorColor,
                    cursorRadius: cursorRadius,
                    cursorWidth: 1.0,
                    enableInteractiveSelection: enableInteractiveSelection,
                    maxLength: maxLength,
                    keyboardAppearance: keyboardAppearance,
                    maxLengthEnforcement: maxLengthEnforcement,
                    textAlign: textAlign,
                    textCapitalization: textCapitalization,
                    textDirection: textDirection,
                    textInputAction: textInputAction,
                    strutStyle: strutStyle,
                    expands: expands,
                    minLines: minLines,
                    showCursor: showCursor,
                    onTap: onTap,
                    textAlignVertical: textAlignVertical,
                  )
                ],
              ),
            );
          },
        );

  @override
  FormBuilderFieldDecorationState<FormBuilderPhoneField2, Phone>
      createState() => _FormBuilderPhoneFieldState();
}

class _FormBuilderPhoneFieldState
    extends FormBuilderFieldDecorationState<FormBuilderPhoneField2, Phone> {
  late TextEditingController _effectiveController;

  @override
  void initState() {
    super.initState();
    _effectiveController = widget.controller ?? TextEditingController();
    _effectiveController.text = widget.initialValue?.originalPhone ?? '';
  }

  @override
  void dispose() {
    if (null == widget.controller) {
      _effectiveController.dispose();
    }
    super.dispose();
  }

  @override
  void reset() {
    super.reset();
    _effectiveController = widget.controller ?? TextEditingController();
  }
}
