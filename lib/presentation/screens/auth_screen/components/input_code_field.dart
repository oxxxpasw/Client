import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:sms_autofill/sms_autofill.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

class InputCodeField extends StatefulWidget {
  const InputCodeField({
    super.key,
    this.onCompleted,
    this.onChanged,
    required this.length,
    this.hasError = false,
  });

  final ValueChanged<String>? onCompleted;
  final ValueChanged<String>? onChanged;
  final int length;
  final bool hasError;

  @override
  State<InputCodeField> createState() => _InputCodeFieldState();
}

class _InputCodeFieldState extends State<InputCodeField> with CodeAutoFill {
  late final TextEditingController _controller;

  @override
  initState() {
    super.initState();
    _controller = TextEditingController();
    listenForCode();
  }

  @override
  Widget build(BuildContext context) {
    final colors = ColorScheme.of(context);
    final textTheme = TextTheme.of(context);
    return PinCodeTextField(
      controller: _controller,
      // hintCharacter: '●',
      hintStyle: textTheme.bodyMedium?.copyWith(
        fontSize: 15.0,
        color: Theme.of(context).colorScheme.primary,
      ),
      textStyle: textTheme.displaySmall?.copyWith(
        color: widget.hasError
            ? Theme.of(context).colorScheme.error
            : Theme.of(context).colorScheme.onBackground,
      ),
      enableActiveFill: true,
      blinkWhenObscuring: true,
      inputFormatters: [FilteringTextInputFormatter.digitsOnly],
      keyboardType: TextInputType.number,
      appContext: context,
      length: widget.length,
      enablePinAutofill: true,
      autoFocus: true,
      showCursor: false,
      errorTextSpace: 0.0,
      mainAxisAlignment: MainAxisAlignment.center,
      separatorBuilder: (_, __) => const SizedBox(
        width: AppInsets.padding8,
      ),
      pinTheme: PinTheme(
        borderWidth: 1,
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppBorderRadius.medium,
          ),
        ),
        selectedColor: colors.primary,
        shape: PinCodeFieldShape.box,
        fieldHeight: 54,
        fieldWidth: 48,
        inactiveFillColor: colors.surfaceContainerHigh,
        selectedFillColor: colors.surfaceContainerHigh,
        activeFillColor: colors.surfaceContainerHigh,
        inactiveColor: colors.surfaceContainerHigh,
        activeColor: colors.surfaceContainerHigh,
      ),

      onCompleted: widget.onCompleted,
      onChanged: widget.onChanged,
    );
  }

  @override
  void codeUpdated() {
    if (code != null && code!.length == widget.length) {
      _controller.text = code!;
    }
  }

  @override
  void dispose() {
    cancel();
    unregisterListener();
    super.dispose();
  }
}
