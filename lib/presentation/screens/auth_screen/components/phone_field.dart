import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/phone.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Country {
  const Country({
    required this.code,
    required this.flagSvg,
    required this.mask,
  });

  ///Путь до svg файла с флагом страны
  final String flagSvg;

  ///Код номера страны без +
  final String code;

  ///Маска в формате (000) 000-00-00
  final String mask;
}

class FormBuilderPhoneField extends FormBuilderFieldDecoration<String> {
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
  final ValueChanged<String>? onFieldSubmitted;
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

  final Country? initialCountry;

  final List<Country> countryList;

  /// Creates field for international phone number input.
  FormBuilderPhoneField({
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
    this.initialCountry,
    required this.countryList,
    this.textAlignVertical,
    super.restorationId,
  })  : assert(initialValue == null || controller == null),
        super(
          builder: (FormFieldState<String?> field) {
            final state = field as _FormBuilderPhoneFieldState;
            final effectiveStyle = style ??
                Theme.of(state.context).textTheme.bodyLarge ??
                const TextStyle();
            return InputDecorator(
              decoration: state.decoration,
              child: Row(
                children: <Widget>[
                  DropdownButton2<Country>(
                    valueListenable: state._selectedCountryNotifier,
                    onChanged: (value) {},
                    style: effectiveStyle.copyWith(
                      fontSize: (effectiveStyle.fontSize ?? 14.0) * 1.2,
                    ),
                    underline: const SizedBox.shrink(),
                    menuItemStyleData: const MenuItemStyleData(
                      padding: EdgeInsets.symmetric(
                        horizontal: AppInsets.padding4,
                      ),
                    ),
                    items: countryList
                        .map((item) => DropdownItem<Country>(
                              value: item,
                              child: Row(
                                children: [
                                  SvgPicture.asset(item.flagSvg),
                                  const SizedBox(
                                    width: 5.0,
                                  ),
                                  Text(
                                    '+${item.code} ',
                                  ),
                                ],
                              ),
                            ))
                        .toList(),
                  ),
                  Expanded(
                    child: TextField(
                      restorationId: restorationId,
                      enabled: state.enabled,
                      style: effectiveStyle,
                      focusNode: state.effectiveFocusNode,
                      inputFormatters: [
                        PhoneMaskFormatter(
                            mask: state._selectedDialogCountry.mask),
                        ...?inputFormatters,
                      ],
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        errorBorder: InputBorder.none,
                        disabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        focusedErrorBorder: InputBorder.none,
                        hintText: state.decoration.hintText,
                        hintStyle: state.decoration.hintStyle,
                        contentPadding: const EdgeInsets.symmetric(
                          horizontal: 5.0,
                        ),
                      ),
                      onChanged: (_) {
                        state.invokeChange();
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
                      cursorWidth: cursorWidth,
                      enableInteractiveSelection: enableInteractiveSelection,
                      maxLength: maxLength,
                      keyboardAppearance: keyboardAppearance,
                      maxLengthEnforcement: maxLengthEnforcement,
                      scrollPadding: scrollPadding,
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
                    ),
                  ),
                ],
              ),
            );
          },
        );

  @override
  FormBuilderFieldDecorationState<FormBuilderPhoneField, String>
      createState() => _FormBuilderPhoneFieldState();
}

class _FormBuilderPhoneFieldState
    extends FormBuilderFieldDecorationState<FormBuilderPhoneField, String> {
  late TextEditingController _effectiveController;
  late Country _selectedDialogCountry;
  final ValueNotifier<Country?> _selectedCountryNotifier = ValueNotifier(null);

  String get fullNumber {
    // When there is no phone number text, the field is empty -- the country
    // prefix is only prepended when a phone number is specified.
    final phoneText = _effectiveController.text;
    return phoneText.isNotEmpty
        ? '+${_selectedDialogCountry.code} $phoneText'
        : phoneText;
  }

  @override
  void initState() {
    super.initState();
    _effectiveController = widget.controller ?? TextEditingController();
    _selectedDialogCountry = widget.initialCountry ?? widget.countryList.first;
    _selectedCountryNotifier.value = _selectedDialogCountry;
  }

  @override
  void dispose() {
    _selectedCountryNotifier.dispose();
    // Dispose the _effectiveController when initState created it
    if (null == widget.controller) {
      _effectiveController.dispose();
    }
    super.dispose();
  }

  void invokeChange() {
    didChange(fullNumber);
    widget.onChanged?.call(fullNumber);
  }

  @override
  void reset() {
    super.reset();
    _effectiveController = widget.controller ?? TextEditingController();
    _selectedDialogCountry = widget.initialCountry ?? widget.countryList.first;
  }
}
