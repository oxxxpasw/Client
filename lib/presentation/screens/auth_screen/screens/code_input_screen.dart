import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:sosedifedi/domain/bloc/auth_bloc/auth_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/components/custom_leading_button/custom_leading_button.dart';
import 'package:sosedifedi/presentation/screens/auth_screen/components/auth_button.dart';
import 'package:sosedifedi/presentation/screens/auth_screen/components/input_code_field.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

abstract class _CodeInputFormKeys {
  static const code = 'code';
}

@RoutePage()
class CodeInputScreen extends StatefulWidget {
  const CodeInputScreen({
    super.key,
  });

  @override
  State<CodeInputScreen> createState() => _CodeInputScreenState();
}

class _CodeInputScreenState extends State<CodeInputScreen> {
  final _formKey = GlobalKey<FormBuilderState>();

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
      ),
      body: SafeArea(
        child: FormBuilder(
          key: _formKey,
          onChanged: () {
            setState(() {});
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(
              AppInsets.padding16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: AppInsets.padding16,
                ),
                Text(
                  context.tr(LocaleKeys.auth_enterCode),
                  style: TextTheme.of(context).headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const SizedBox(
                  height: AppInsets.padding8,
                ),
                Text(
                  context.tr(LocaleKeys.auth_codeSentTo),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                BlocBuilder<AuthBloc, AuthState>(
                  buildWhen: (oldState, newState) =>
                      oldState.phone?.originalPhone !=
                      newState.phone?.originalPhone,
                  builder: (context, state) {
                    return Text(
                      state.phone?.originalPhone ?? '',
                    );
                  },
                ),
                const SizedBox(
                  height: AppInsets.padding64,
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BlocBuilder<AuthBloc, AuthState>(
                        buildWhen: (oldState, newState) =>
                            oldState.codeValid != newState.codeValid,
                        builder: (context, state) {
                          return FormBuilderField<String>(
                            name: _CodeInputFormKeys.code,
                            builder: (field) {
                              return InputCodeField(
                                hasError: !state.codeValid || field.hasError,
                                length: 4,
                                onChanged: field.didChange,
                                onCompleted: (_) {
                                  setState(() {
                                    _onConfirmPressed(context);
                                  });
                                },
                              );
                            },
                            validator: FormBuilderValidators.equalLength(4),
                          );
                        },
                      ),
                      const SizedBox(
                        height: AppInsets.padding32,
                      ),
                      BlocBuilder<AuthBloc, AuthState>(
                        buildWhen: (oldState, newState) =>
                            oldState.codeValid != newState.codeValid,
                        builder: (context, state) {
                          return Opacity(
                            opacity: state.codeValid ? 0.0 : 1.0,
                            child: Text(
                              context.tr(LocaleKeys.auth_wrongCode),
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyLarge!
                                  .copyWith(
                                    color: Theme.of(context).colorScheme.error,
                                  ),
                            ),
                          );
                        },
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: AppInsets.padding32,
                ),
                Text(
                  context.tr(LocaleKeys.auth_codeNotReceived),
                  style: TextTheme.of(context).bodyMedium?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                ),
                const ResendCodeTimerWidget(),
                const SizedBox(
                  height: AppInsets.padding20,
                ),
                _CodeAuthButton(
                  isFormValid: _formKey.currentState?.isValid ?? false,
                  onPressed: () => _onConfirmPressed(context),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _onConfirmPressed(BuildContext context) {
    final formState = _formKey.currentState!;
    if (formState.saveAndValidate()) {
      final code = formState.value[_CodeInputFormKeys.code] as String;
      return context.read<AuthBloc>().add(AuthEvent.codeConfirmPressed(code));
    }
  }
}

class ResendCodeTimerWidget extends StatelessWidget {
  const ResendCodeTimerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final textStyle = TextTheme.of(context).bodySmall?.copyWith(
          color: ColorScheme.of(context).primary,
          fontWeight: FontWeight.w500,
        );

    return BlocBuilder<AuthBloc, AuthState>(
      buildWhen: (previous, current) => previous.retryTime != current.retryTime,
      builder: (context, state) {
        final button = GestureDetector(
          behavior: HitTestBehavior.translucent,
          onTap: () =>
              context.read<AuthBloc>().add(const AuthEvent.resendCodePressed()),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: AppInsets.padding4,
            ),
            child: Text(
              context.tr(LocaleKeys.auth_resendCode),
              style: textStyle,
            ),
          ),
        );

        if (state.retryTime == null) {
          return button;
        }
        return StreamBuilder(
          stream: state.retryTime,
          builder: (context, snapshot) {
            final time = snapshot.data;
            if (time == null) {
              return const SizedBox.shrink();
            }
            if (time == 0) {
              return button;
            }
            return Padding(
              padding: const EdgeInsets.symmetric(
                vertical: AppInsets.padding4,
              ),
              child: Text(
                context.tr(LocaleKeys.auth_retryTime, args: [time.toString()]),
                style: textStyle,
              ),
            );
          },
        );
      },
    );
  }
}

class _CodeAuthButton extends StatelessWidget {
  const _CodeAuthButton({
    super.key,
    required this.isFormValid,
    required this.onPressed,
  });

  final bool isFormValid;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AuthBloc, AuthState>(
      builder: (context, state) {
        final isLoading = state.status == AuthStatus.loading;
        return AuthButton(
          onPressed: onPressed,
          isLoading: isLoading,
          isValid: isFormValid,
        );
      },
    );
  }
}
