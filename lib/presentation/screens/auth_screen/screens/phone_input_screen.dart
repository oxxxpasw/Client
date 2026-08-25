import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sosedifedi/domain/bloc/auth_bloc/auth_bloc.dart';
import 'package:sosedifedi/domain/models/phone/phone.dart';
import 'package:sosedifedi/generated/assets.gen.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/custom_leading_button/custom_leading_button.dart';
import 'package:sosedifedi/presentation/screens/auth_screen/components/auth_button.dart';
import 'package:sosedifedi/presentation/screens/auth_screen/components/phone_field2.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

abstract class _PhoneInputFormKeys {
  static const phone = 'phone';
}

@RoutePage()
class PhoneInputScreen extends StatefulWidget {
  const PhoneInputScreen({
    super.key,
    this.canSkipAuth = true,
  });

  final bool canSkipAuth;

  @override
  State<PhoneInputScreen> createState() => _PhoneInputScreenState();
}

class _PhoneInputScreenState extends State<PhoneInputScreen> {
  final _formKey = GlobalKey<FormBuilderState>();
  final _focusNode = FocusNode();

  String prefix = '+375';

  static FormFieldValidator<T?> validatePhone<T>(String error) {
    return (T? valueCandidate) {
      if (valueCandidate == null ||
          valueCandidate is! Phone ||
          valueCandidate.e164 == null) {
        return error;
      }
      return null;
    };
  }

  @override
  Widget build(BuildContext context) {
    final canPop = context.router.canPop(
      ignoreChildRoutes: true,
      ignorePagelessRoutes: true,
    );
    return Scaffold(
      appBar: CustomAppBar(
        leadingWidth: canPop ? null : 0.0,
        leading: const CustomLeadingButton(
          showIfChildCanPop: true,
          ignorePagelessRoutes: true,
        ),
        title: Text(context.tr(LocaleKeys.title)),
        centerTitle: false,
        titleTextStyle: TextTheme.of(context).headlineSmall?.copyWith(
              fontWeight: FontWeight.w600,
              color: ColorScheme.of(context).primary,
            ),
      ),
      body: SafeArea(
        child: FormBuilder(
          onChanged: () {
            final phoneField =
                _formKey.currentState?.fields[_PhoneInputFormKeys.phone];
            if (phoneField != null && phoneField.isValid) {
              _focusNode.unfocus();
            }
            setState(() {});
          },
          key: _formKey,
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(AppInsets.padding16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                Text(
                  context.tr(LocaleKeys.auth_title),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                Text(
                  context.tr(LocaleKeys.auth_caption),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding64,
                ),
                BlocBuilder<AuthBloc, AuthState>(
                  builder: (context, state) {
                    return FormBuilderPhoneField2(
                      prefix: prefix,
                      focusNode: _focusNode,
                      autofocus: true,
                      mask: prefix == '+7' ? '(___) ___-__-__' : '__ ___ ____',
                      replaceSymbol: '_',
                      style: TextTheme.of(context).titleLarge,
                      name: _PhoneInputFormKeys.phone,
                      textInputAction: TextInputAction.done,
                      decoration: _getInputDecoration(context, state),
                      validator: FormBuilderValidators.compose(
                        [
                          FormBuilderValidators.required(),
                          validatePhone(
                            context.tr(LocaleKeys.auth_wrongPhone),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: AppInsets.padding64,
                ),
                UserAgreementWidget(
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                _PhoneAuthButton(
                  formKey: _formKey,
                ),
                if (widget.canSkipAuth)
                  Padding(
                    padding: const EdgeInsets.only(top: AppInsets.padding8),
                    child: Center(
                      child: SizedBox(
                        child: TextButton(
                          style: TextButton.styleFrom(
                            minimumSize: const Size(300, 0),
                          ),
                          onPressed: () {
                            context.read<AuthBloc>().add(
                                  const AuthEvent.skipAuth(),
                                );
                          },
                          child: Text(
                            context.tr(
                              LocaleKeys.auth_skip,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _focusNode.dispose();
    super.dispose();
  }

  InputDecoration _getInputDecoration(BuildContext context, AuthState state) {
    final textStyle = TextTheme.of(context).titleLarge;

    final colors = ColorScheme.of(context);
    return InputDecoration(
      prefix: Padding(
        padding: const EdgeInsets.only(right: AppInsets.padding8),
        child: _buildDropDown(),
      ),
      prefixStyle: textStyle,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: AppInsets.padding16,
        vertical: AppInsets.padding8,
      ),
      constraints: const BoxConstraints(),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.primary,
          width: 2.0,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(AppBorderRadius.medium),
        ),
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.surfaceContainer,
          width: 2.0,
        ),
        borderRadius: BorderRadius.zero,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.surfaceContainer,
          width: 2.0,
        ),
        borderRadius:
            const BorderRadius.all(Radius.circular(AppBorderRadius.medium)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.primary,
          width: 2.0,
        ),
        borderRadius:
            const BorderRadius.all(Radius.circular(AppBorderRadius.medium)),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.error,
          width: 2.0,
        ),
        borderRadius:
            const BorderRadius.all(Radius.circular(AppBorderRadius.medium)),
      ),
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: colors.error,
          width: 2.0,
        ),
        borderRadius:
            const BorderRadius.all(Radius.circular(AppBorderRadius.medium)),
      ),
    );
  }

  Widget _buildDropDown() {
    return DropdownButtonHideUnderline(
      child: DropdownButton<String>(
        style: TextTheme.of(context).titleLarge,
        alignment: Alignment.center,
        icon: const Icon(
          CupertinoIcons.chevron_down,
        ),
        value: prefix,
        items: [
          DropdownMenuItem(
            value: '+375',
            child: Row(
              children: [
                Assets.svg.countryFlags.belarus.svg(),
                const SizedBox(
                  width: AppInsets.padding4,
                ),
                const Text('+375'),
              ],
            ),
          ),
        ],
        onChanged: (item) {
          setState(
            () {
              prefix = item ?? '+375';
              _formKey.currentState?.fields[_PhoneInputFormKeys.phone]?.reset();
              WidgetsBinding.instance.addPostFrameCallback((_) {
                _focusNode.requestFocus();
              });
            },
          );
        },
      ),
    );
  }
}

class UserAgreementWidget extends StatelessWidget {
  const UserAgreementWidget({
    super.key,
    this.style,
  });

  final TextStyle? style;

  @override
  Widget build(BuildContext context) {
    final style = this.style ?? DefaultTextStyle.of(context).style;

    return RichText(
      text: TextSpan(
        style: style,
        children: [
          TextSpan(
            text: context.tr(LocaleKeys.auth_userAgreement_1),
          ),
          TextSpan(
            text: context.tr(LocaleKeys.auth_userAgreement_2),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.read<AuthBloc>().add(
                      const AuthEvent.onUserAgreementPressed(),
                    );
              },
            style: style.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          TextSpan(
            text: context.tr(LocaleKeys.auth_userAgreement_3),
          ),
          TextSpan(
            text: context.tr(LocaleKeys.auth_userAgreement_4),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.read<AuthBloc>().add(
                      const AuthEvent.onPrivacyPolicyPressed(),
                    );
              },
            style: style.copyWith(
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
        ],
      ),
    );
  }
}

class _PhoneAuthButton extends StatelessWidget {
  const _PhoneAuthButton({
    super.key,
    required this.formKey,
  });

  final GlobalKey<FormBuilderState> formKey;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final isLoading = state.status == AuthStatus.loading;
        final isValid = formKey.currentState?.isValid ?? false;
        return AuthButton(
          onPressed: () => _onConfirmPressed(context),
          isLoading: isLoading,
          isValid: isValid,
        );
      },
    );
  }

  void _onConfirmPressed(BuildContext context) {
    final formState = formKey.currentState!;
    if (formState.saveAndValidate()) {
      final phone = formState.value[_PhoneInputFormKeys.phone] as Phone;
      context.read<AuthBloc>().add(AuthEvent.phoneConfirmPressed(phone));
    }
  }
}
