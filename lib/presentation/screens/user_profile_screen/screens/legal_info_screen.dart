import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/user_profile_bloc/user_profile_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/icons/custom_icons.dart';
import 'package:sosedifedi/presentation/screens/user_profile_screen/components/nav_item.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';
import 'package:auto_route/auto_route.dart';

@RoutePage()
class LegalInfoScreen extends StatelessWidget {
  const LegalInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(
              top: AppInsets.padding32,
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(AppBorderRadius.medium),
              child: Column(
                children: [
                  const Divider(
                    indent: AppInsets.padding16,
                    endIndent: AppInsets.padding16,
                    height: 1.0,
                  ),
                  SeparatedColumn(
                    separator: const Divider(
                      indent: AppInsets.padding16,
                      endIndent: AppInsets.padding16,
                      height: 1.0,
                    ),
                    children: [
                      NavItem(
                        onPressed: () => context
                            .read<UserProfileBloc>()
                            .launchUserAgreement(),
                        title: Text(context.tr(LocaleKeys.legal_userAgreement)),
                        trailing: const Icon(CustomICons.chevronBigRight),
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppInsets.padding16,
                        ),
                      ),
                      NavItem(
                        onPressed: () =>
                            context.read<UserProfileBloc>().launchPublicOffer(),
                        title: Text(context.tr(LocaleKeys.legal_publicOffer)),
                        trailing: const Icon(CustomICons.chevronBigRight),
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppInsets.padding16,
                        ),
                      ),
                      NavItem(
                        onPressed: () => context
                            .read<UserProfileBloc>()
                            .launchPrivacyPolicy(),
                        title: Text(context.tr(LocaleKeys.legal_privacyPolicy)),
                        trailing: const Icon(CustomICons.chevronBigRight),
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppInsets.padding16,
                        ),
                      ),
                    ],
                  ),
                  const Divider(
                    indent: AppInsets.padding16,
                    endIndent: AppInsets.padding16,
                    height: 1.0,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
