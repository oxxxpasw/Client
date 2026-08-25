import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'dart:math' as math;

abstract class _FormKeys {
  static const cardNumber = 'cardNumber';
  static const cardHolder = 'cardHolder';
  static const cardExpiry = 'cardExpiry';
  static const cardCvv = 'cardCvv';
}

const _kCardHeight = 175.0;
const _kCardOffset = 25.0;
final _notNumberRegex = RegExp(r'[^0-9]');

class InputCardWidget extends StatefulWidget {
  const InputCardWidget({super.key});

  @override
  State<InputCardWidget> createState() => _InputCardWidgetState();
}

class _InputCardWidgetState extends State<InputCardWidget> {
  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: formKey,
      child: Theme(
        data: _getTheme(),
        child: AutofillGroup(
          child: LayoutBuilder(
            builder: (context, constraints) {
              final maxWidth = constraints.maxWidth;

              final containerWidth = maxWidth * 0.7;

              return SizedBox(
                width: double.infinity,
                height: _kCardHeight + _kCardOffset,
                child: Stack(
                  children: [
                    Positioned.fromRect(
                      rect: Rect.fromLTWH(
                        maxWidth - containerWidth,
                        _kCardOffset,
                        containerWidth,
                        _kCardHeight,
                      ),
                      child: CardContainer(),
                    ),
                    Positioned.fromRect(
                      rect: Rect.fromLTWH(
                        0.0,
                        0.0,
                        containerWidth,
                        _kCardHeight,
                      ),
                      child: const CardContainer(
                        child: CardDataFields1(),
                      ),
                    ),
                    Positioned.fromRect(
                      rect: Rect.fromLTWH(
                        containerWidth,
                        _kCardOffset,
                        maxWidth - containerWidth,
                        _kCardHeight,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const SizedBox(
                            height: AppInsets.padding16,
                          ),
                          SizedBox(
                            width: double.infinity,
                            height: 35.0,
                            child: ColoredBox(
                              color: ColorScheme.of(context)
                                  .surfaceContainerHighest,
                            ),
                          ),
                          const SizedBox(
                            height: AppInsets.padding10,
                          ),
                          const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: AppInsets.padding12,
                            ),
                            child: CardDataFields2(),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }

  ThemeData _getTheme() {
    final theme = Theme.of(context);
    final inputTheme = theme.inputDecorationTheme;

    final borderSide = BorderSide(
      color: theme.colorScheme.surfaceContainerHigh,
      width: 2.0,
    );

    final border = OutlineInputBorder(
      borderSide: borderSide,
      borderRadius: BorderRadius.circular(
        AppBorderRadius.medium,
      ),
    );

    final textStyle = theme.textTheme.bodySmall?.copyWith(
      fontWeight: FontWeight.w500,
    );

    return theme.copyWith(
      textTheme: theme.textTheme.copyWith(
        bodyLarge: textStyle,
      ),
      inputDecorationTheme: inputTheme.copyWith(
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: theme.colorScheme.surface,
        border: border,
        enabledBorder: border,
        disabledBorder: border,
        focusedBorder: border,
        hintStyle: textStyle,
        labelStyle: textStyle?.copyWith(
          color: theme.colorScheme.primary,
        ),
        errorBorder: border.copyWith(
          borderSide: borderSide.copyWith(
            color: theme.colorScheme.error,
          ),
        ),
        focusedErrorBorder: border.copyWith(
          borderSide: borderSide.copyWith(
            color: theme.colorScheme.error,
          ),
        ),
        contentPadding: const EdgeInsets.symmetric(
          vertical: AppInsets.padding10,
          horizontal: AppInsets.padding16,
        ),
      ),
    );
  }
}

class CardContainer extends StatelessWidget {
  const CardContainer({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return DecoratedBox(
      decoration: BoxDecoration(
        color: ColorScheme.of(context).surfaceContainer,
        borderRadius: BorderRadius.circular(
          AppBorderRadius.medium,
        ),
        border: Border.all(
          color: ColorScheme.of(context).surfaceContainerHigh,
          width: 1.0,
        ),
      ),
      child: child,
    );
  }
}

class CardDataFields1 extends StatelessWidget {
  const CardDataFields1({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(AppInsets.padding12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FormBuilderTextField(
            name: _FormKeys.cardNumber,
            autocorrect: false,
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              labelText: context.tr(LocaleKeys.cardInput_cardNumber_label),
              hintText: context.tr(LocaleKeys.cardInput_cardNumber_hint),
            ),
            inputFormatters: [
              CardNumberInputFormatter(),
            ],
            autofillHints: const [
              AutofillHints.creditCardNumber,
            ],
            validator: FormBuilderValidators.compose(
              [
                FormBuilderValidators.required(),
                _cardNumberValidator,
              ],
            ),
            textInputAction: TextInputAction.next,
            valueTransformer: _removeNotNumberValueTransformer,
          ),
          const SizedBox(
            height: AppInsets.padding10,
          ),
          Row(
            children: [
              Expanded(
                flex: 2,
                child: FormBuilderTextField(
                  name: _FormKeys.cardHolder,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText:
                        context.tr(LocaleKeys.cardInput_cardHolder_label),
                    hintText: context.tr(LocaleKeys.cardInput_cardHolder_hint),
                  ),
                  autofillHints: const [
                    AutofillHints.creditCardName,
                  ],
                  textCapitalization: TextCapitalization.characters,
                  validator: FormBuilderValidators.required(),
                  textInputAction: TextInputAction.next,
                  valueTransformer: (value) => value?.trim(),
                ),
              ),
              const SizedBox(
                width: AppInsets.padding10,
              ),
              Expanded(
                child: FormBuilderTextField(
                  name: _FormKeys.cardExpiry,
                  autocorrect: false,
                  decoration: InputDecoration(
                    labelText:
                        context.tr(LocaleKeys.cardInput_cardExpiry_label),
                    hintText: context.tr(LocaleKeys.cardInput_cardExpiry_hint),
                  ),
                  autofillHints: const [
                    AutofillHints.creditCardExpirationDate,
                  ],
                  inputFormatters: const [
                    CardExpiryInputFormatter(),
                  ],
                  validator: FormBuilderValidators.compose(
                    [
                      FormBuilderValidators.required(),
                      _cardExpiryValidator,
                    ],
                  ),
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.number,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class CardDataFields2 extends StatelessWidget {
  const CardDataFields2({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FormBuilderTextField(
          name: _FormKeys.cardCvv,
          autocorrect: false,
          decoration: InputDecoration(
            labelText: context.tr(LocaleKeys.cardInput_cvv_label),
            hintText: context.tr(LocaleKeys.cardInput_cvv_hint),
          ),
          autofillHints: const [
            AutofillHints.creditCardSecurityCode,
          ],
          keyboardType: TextInputType.number,
          obscureText: true,
          validator: FormBuilderValidators.compose(
            [
              FormBuilderValidators.required(),
              FormBuilderValidators.numeric(),
              FormBuilderValidators.minLength(3),
              FormBuilderValidators.maxLength(4),
            ],
          ),
          valueTransformer: (value) => value?.trim(),
        ),
        const SizedBox(
          height: AppInsets.padding4,
        ),
        Text(
          context.tr(LocaleKeys.cardInput_cvv_description),
          style: Theme.of(context).textTheme.labelSmall,
        ),
      ],
    );
  }
}

class CardExpiryInputFormatter extends TextInputFormatter {
  const CardExpiryInputFormatter();

  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    var text = newValue.text;

    if (newValue.selection.isCollapsed &&
        oldValue.text.length > newValue.text.length &&
        newValue.text.length == 2) {
      text = text.substring(0, 1);
    }

    final formattedText = _getText(text);
    print(newValue.text);
    print(formattedText);
    return TextEditingValue(
      text: formattedText,
      composing: newValue.composing,
      selection: TextSelection(
        baseOffset: newValue.selection.baseOffset -
            newValue.text.length +
            formattedText.length,
        extentOffset: newValue.selection.extentOffset -
            newValue.text.length +
            formattedText.length,
      ),
    );
  }

  String _getText(String value) {
    String text = value.replaceAll(_notNumberRegex, '');

    if (text.isEmpty) {
      return '';
    }

    if (text.length > 4) {
      text = text.substring(0, 4);
    }

    if (text.length == 1) {
      final month = int.tryParse(text);
      if (month != null && month > 1) {
        return '0$text/';
      }
      return text;
    }

    String formattedText = '';

    final monthText = text.substring(0, 2);
    final month = int.tryParse(monthText);

    formattedText = '${month == null || month > 12 ? 12 : monthText}/';
    if (text.length > 2) {
      formattedText += text.substring(2);
    }
    return formattedText;
  }
}

class CardNumberInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    final formattedText = _getText(newValue.text);
    return TextEditingValue(
      text: formattedText,
      composing: newValue.composing,
      selection: TextSelection(
        baseOffset: newValue.selection.baseOffset -
            newValue.text.length +
            formattedText.length,
        extentOffset: newValue.selection.extentOffset -
            newValue.text.length +
            formattedText.length,
      ),
    );
  }

  String _getText(String value) {
    String text = value.replaceAll(_notNumberRegex, '');

    if (text.length > 16) {
      return text;
    }

    List<String> groups = [];
    for (var i = 0; i < text.length; i += 4) {
      groups
          .add(text.substring(i, (i + 4) > text.length ? text.length : i + 4));
    }

    return groups.join(' ');
  }
}

String? _cardExpiryValidator(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }

  final text = value.replaceAll(_notNumberRegex, '');

  if (text.length != 4) {
    return LocaleKeys.cardInput_cardExpiry_validationError.tr();
  }

  final month = int.tryParse(text.substring(0, 2));
  final year = int.tryParse(text.substring(2));

  if (month == null || year == null || month < 1 || month > 12) {
    return LocaleKeys.cardInput_cardExpiry_validationError.tr();
  }

  return null;
}

String? _cardNumberValidator(String? value) {
  if (value == null || value.isEmpty) {
    return null;
  }

  final text = value.replaceAll(_notNumberRegex, '');

  if (text.length != 16) {
    return LocaleKeys.cardInput_cardExpiry_validationError.tr();
  }

  return null;
}

String? _removeNotNumberValueTransformer(String? value) {
  if (value == null) {
    return null;
  }

  return value.replaceAll(_notNumberRegex, '');
}
