import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get_it/get_it.dart';
import 'package:jiffy/jiffy.dart';
import 'package:sosedifedi/domain/bloc/user_data_bloc/user_data_bloc.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/adaptive_confirm_dialog/adaptive_confirm_dialog.dart';
import 'package:sosedifedi/presentation/components/custom_app_bar/custom_app_bar.dart';
import 'package:sosedifedi/presentation/screens/user_data_screen/components/date_picker.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_bloc_builder.dart';

abstract class UserDataFromKeys {
  static const firstName = 'firstName';
  static const birthDay = 'birthDay';
  static const phone = 'phone';
}

@RoutePage()
class UserDataScreen extends StatelessWidget implements AutoRouteWrapper {
  const UserDataScreen({super.key});

  @override
  Widget wrappedRoute(BuildContext context) {
    return BlocProvider<UserDataBloc>(
      create: (context) => GetIt.I.get()..loadData(),
      child: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SrBlocBuilder<UserDataBloc, UserDataState, UserDataSr>(
          onSR: (context, sr) => sr.when(
            error: (error) =>
                Messenger.showMessage(context: context, message: error),
            success: () {
              context.router.pop();
              return Messenger.showMessage(
                context: context,
                message: context.tr(LocaleKeys.messages_success_dataUpdate),
                messageType: MessageType.success,
              );
            },
            logout: () => context.router.pop(),
          ),
          builder: (context, state) {
            if (state.status == UserDataStatus.init ||
                state.status == UserDataStatus.loading) {
              return const Center(
                child: CircularProgressIndicator.adaptive(),
              );
            }
            return UserDataView(
              initialValue: state.userData!,
              isSending: state.status == UserDataStatus.sending,
            );
          },
        ),
      ),
    );
  }
}

class UserDataView extends StatefulWidget {
  const UserDataView(
      {super.key, required this.initialValue, this.isSending = false});

  final UserData initialValue;
  final bool isSending;

  @override
  State<UserDataView> createState() => _UserDataViewState();
}

class _UserDataViewState extends State<UserDataView> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    const textStyle = TextStyle(
      fontWeight: FontWeight.w400,
    );

    return FormBuilder(
      key: _formKey,
      initialValue: {
        UserDataFromKeys.firstName: widget.initialValue.firstName,
        UserDataFromKeys.birthDay: widget.initialValue.birthDay,
        UserDataFromKeys.phone: widget.initialValue.phone,
      },
      child: Theme(
        data: theme.copyWith(
          inputDecorationTheme: theme.inputDecorationTheme.copyWith(
            floatingLabelBehavior: FloatingLabelBehavior.always,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(AppInsets.padding16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    FormBuilderTextField(
                      style: textStyle,
                      name: UserDataFromKeys.firstName,
                      autofillHints: const [
                        AutofillHints.givenName,
                      ],
                      valueTransformer: (value) => value?.trim(),
                      decoration: InputDecoration(
                        labelText:
                            context.tr(LocaleKeys.personalData_name_label),
                        hintText: context.tr(LocaleKeys.personalData_name_hint),
                      ),
                    ),
                    const SizedBox(
                      height: AppInsets.padding4,
                    ),
                    FormBuilderTextField(
                      style: textStyle,
                      enabled: false,
                      name: UserDataFromKeys.phone,
                      decoration: InputDecoration(
                        labelText:
                            context.tr(LocaleKeys.personalData_phone_label),
                        hintText:
                            context.tr(LocaleKeys.personalData_phone_hint),
                      ),
                    ),
                    const SizedBox(
                      height: AppInsets.padding4,
                    ),
                    FormBuilderDatePicker(
                      style: textStyle,
                      lastDate: Jiffy.now().endOf(Unit.day).dateTime,
                      enabled: widget.initialValue.birthDay == null,
                      name: UserDataFromKeys.birthDay,
                      decoration: InputDecoration(
                        labelText:
                            context.tr(LocaleKeys.personalData_birthDay_label),
                        hintText:
                            context.tr(LocaleKeys.personalData_birthDay_hint),
                      ),
                    ),
                    const SizedBox(
                      child: SizedBox(
                        height: AppInsets.padding32,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: AppInsets.padding16,
                      ),
                      child: TextButton(
                        onPressed: () => showAdaptiveConfirmDialog(
                          context: context,
                          defaultAction: ConfirmDialogAction.cancel,
                          title: Text(
                              context.tr(LocaleKeys.userProfile_exitQuestion)),
                        ).then(
                          (result) {
                            if (result == ConfirmDialogResult.confirm &&
                                context.mounted) {
                              context.read<UserDataBloc>().logout();
                            }
                          },
                        ),
                        child: Text(
                          context.tr(LocaleKeys.logout),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: AppInsets.padding4,
                    ),
                    Center(
                      child: GestureDetector(
                        onTap: () {
                          showAdaptiveConfirmDialog(
                            context: context,
                            defaultAction: ConfirmDialogAction.cancel,
                            destructiveAction: ConfirmDialogAction.confirm,
                            title: Text(
                              context.tr(LocaleKeys
                                  .personalData_deleteAccountQuestion_title),
                            ),
                            message: Text(
                              context.tr(LocaleKeys
                                  .personalData_deleteAccountQuestion_message),
                            ),
                          ).then(
                            (result) {
                              if (result == ConfirmDialogResult.confirm &&
                                  context.mounted) {
                                context.read<UserDataBloc>().deleteAccount();
                              }
                            },
                          );
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(AppInsets.padding16),
                          child: Text(
                            context.tr(LocaleKeys.personalData_deleteAccount),
                            textAlign: TextAlign.center,
                            style: Theme.of(context)
                                .textTheme
                                .bodyMedium!
                                .copyWith(
                                  color: Theme.of(context).colorScheme.error,
                                ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(AppInsets.padding16),
              child: FilledButton(
                onPressed: widget.isSending
                    ? null
                    : () {
                        if (_formKey.currentState!.saveAndValidate()) {
                          final value = _formKey.currentState!.value;
                          context.read<UserDataBloc>().updateUserData(
                                UserData(
                                  firstName: value[UserDataFromKeys.firstName],
                                  birthDay: value[UserDataFromKeys.birthDay],
                                ),
                              );
                        }
                      },
                child: widget.isSending
                    ? const SizedBox(
                        width: AppInsets.padding16,
                        height: AppInsets.padding16,
                        child: CircularProgressIndicator.adaptive(
                          strokeWidth: 2.0,
                        ),
                      )
                    : Text(context.tr(LocaleKeys.save)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
