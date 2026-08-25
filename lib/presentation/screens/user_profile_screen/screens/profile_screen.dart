import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sosedifedi/domain/bloc/user_profile_bloc/user_profile_bloc.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/presentation/components/separated_widgets.dart';
import 'package:sosedifedi/presentation/router/app_router.dart';
import 'package:sosedifedi/presentation/theme/models/app_insets.dart';

import '../components/nav_item.dart';

@RoutePage()
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<UserProfileBloc, UserProfileState>(
        builder: (context, state) {
          if (state.status == UserProfileStatus.loading ||
              state.status == UserProfileStatus.init) {
            return _buildLoading();
          }
          if (state.isAuthorized) {
            return const AuthenticatedView();
          }
          return const NotAuthenticatedView();
        },
      ),
    );
  }

  Widget _buildLoading() {
    return const SafeArea(
      child: Center(
        child: CircularProgressIndicator.adaptive(),
      ),
    );
  }
}

class NotAuthenticatedView extends StatelessWidget {
  const NotAuthenticatedView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(
          top: AppInsets.padding40,
          left: AppInsets.padding16,
          right: AppInsets.padding16,
          bottom: AppInsets.padding16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              context.tr(LocaleKeys.userProfile_personalInformationView),
              textAlign: TextAlign.center,
              style: TextTheme.of(context).bodyLarge?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
            ),
            const Spacer(),
            FilledButton(
              onPressed: () {
                context.router.push(
                  AuthRoute(),
                );
              },
              child: Text(
                context.tr(LocaleKeys.register),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AuthenticatedView extends StatelessWidget {
  const AuthenticatedView({super.key});

  @override
  Widget build(BuildContext context) {
    return const NavTiles();
  }
//
// Widget _buildBonusCardInfo(
//     BuildContext buildContext, BonusCardModel bonusCard) {
//   return ClipRRect(
//     borderRadius: BorderRadius.circular(AppBorderRadius.medium),
//     child: NavItem(
//       title: Text(buildContext.tr(LocaleKeys.userProfile_navLabels_bonuses)),
//       textStyle: Theme.of(buildContext).textTheme.titleMedium,
//       trailing: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Text(
//             bonusCard.bonuses.toString(),
//           ),
//           const SizedBox(
//             width: AppInsets.padding4,
//           ),
//           const Icon(
//             DerevenkaDobrenkaIcons.rooster,
//             size: 20.0,
//           ),
//         ],
//       ),
//       backgroundColor: Theme.of(buildContext).colorScheme.primary,
//       foregroundColor: Theme.of(buildContext).colorScheme.onPrimary,
//       onPressed: () => buildContext.router.push(const BonusProgramRoute()),
//     ),
//   );
// }
//
// Widget _buildLoadingBonusCardInfo() {
//   return const SizedBox.shrink();
// }
}

class NavTiles extends StatelessWidget {
  const NavTiles({super.key});

  @override
  Widget build(BuildContext context) {
    const divider = Divider(
      height: 1.0,
      indent: AppInsets.padding16,
      endIndent: AppInsets.padding16,
    );
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: AppInsets.padding32,
          ),
          child: Column(
            children: [
              divider,
              SeparatedColumn(
                separator: divider,
                children: [
                  NavItem(
                    onPressed: () => context.router.push(const UserDataRoute()),
                    title: Text(context
                        .tr(LocaleKeys.userProfile_navLabels_personalData)),
                  ),
                  NavItem(
                    onPressed: () =>
                        context.router.push(const OrderHistoryRoute()),
                    title: Text(
                      context.tr(LocaleKeys.userProfile_navLabels_orderHistory),
                    ),
                  ),
                  // NavItem(
                  //   // onPressed: () =>
                  //   //     context.router.push(const OrderHistoryRoute()),
                  //   onPressed: () {},
                  //   title: Text(
                  //     context
                  //         .tr(LocaleKeys.userProfile_navLabels_coupons_label),
                  //   ),
                  //   subtitle: Text(
                  //     context.tr(LocaleKeys
                  //         .userProfile_navLabels_coupons_emptyDescription),
                  //   ),
                  // ),
                  NavItem(
                    onPressed: () => context.router.push(const AboutUsRoute()),
                    // onPressed: () {},
                    title: Text(
                        context.tr(LocaleKeys.userProfile_navLabels_legalInfo)),
                  ),
                  NavItem(
                    title: Text(context
                        .tr(LocaleKeys.userProfile_navLabels_notifications)),
                    onPressed: () => context
                        .read<UserProfileBloc>()
                        .onOpenNotificationSettingsPressed(),
                  ),
                  NavItem(
                    title: const Text('Розыгрыши'),
                    onPressed: () =>
                        context.router.push(const RafflesRoute()),
                  ),
                ],
              ),
              divider,
              const SizedBox(
                height: AppInsets.padding24,
              ),
              Container(
                width: double.infinity,
                margin:
                    const EdgeInsets.symmetric(horizontal: AppInsets.padding32),
                child: TextButton(
                  // style: FilledButton.styleFrom(
                  //   backgroundColor: ColorScheme.of(context).surfaceContainer,
                  //   foregroundColor: ColorScheme.of(context).onSurface,
                  // ),
                  onPressed: () =>
                      context.read<UserProfileBloc>().openPartnersPage(),
                  child: const Text('Стать партнером'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class NavTiles extends StatelessWidget {
//   const NavTiles({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return NevTileGroup(
//       children: [
//         NavItem(
//           onPressed: () => context.router.push(const UserDataRoute()),
//           title:
//               Text(context.tr(LocaleKeys.userProfile_navLabels_personalData)),
//           trailing: const Icon(CustomICons.chevronBigRight),
//         ),
//         NavItem(
//           onPressed: () => context.router.push(CityListRoute()),
//           title: BlocBuilder<UserProfileBloc, UserProfileState>(
//             buildWhen: (oldState, state) =>
//                 oldState.selectedCity != state.selectedCity,
//             builder: (BuildContext context, state) {
//               return Row(
//                 children: [
//                   Text(context.tr(LocaleKeys.userProfile_navLabels_cityChoose)),
//                   if (state.selectedCity != null) ...[
//                     SizedBox(
//                       height: Theme.of(context).textTheme.labelLarge!.fontSize,
//                       child: VerticalDivider(
//                         color: Theme.of(context).colorScheme.primary,
//                         width: AppInsets.padding16,
//                       ),
//                     ),
//                     Text(
//                       state.selectedCity!.name,
//                       style: Theme.of(context).textTheme.labelLarge!.copyWith(
//                             color: Theme.of(context).colorScheme.primary,
//                           ),
//                     ),
//                   ]
//                 ],
//               );
//             },
//           ),
//           trailing: const Icon(CustomICons.chevronBigRight),
//         ),
//         NavItem(
//           onPressed: () => context.router.push(const OrderHistoryRoute()),
//           title:
//               Text(context.tr(LocaleKeys.userProfile_navLabels_orderHistory)),
//           trailing: const Icon(CustomICons.chevronBigRight),
//         ),
//       ],
//     );
//   }
// }
//
// class NavTiles3 extends StatelessWidget {
//   const NavTiles3({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return NevTileGroup(
//       children: [
//         NavItem(
//           title:
//               Text(context.tr(LocaleKeys.userProfile_navLabels_reportProblem)),
//           onPressed: () {
//             context.router.push(const ReportProblemRoute());
//           },
//           trailing: const Icon(CustomICons.chevronBigRight),
//         ),
//       ],
//     );
//   }
// }
//
// class NavTiles2 extends StatelessWidget {
//   const NavTiles2({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return NevTileGroup(
//       children: [
//         NavItem(
//           onPressed: () => context
//               .read<UserProfileBloc>()
//               .onOpenNotificationSettingsPressed(),
//           title:
//               Text(context.tr(LocaleKeys.userProfile_navLabels_notifications)),
//           trailing: const Icon(CustomICons.chevronBigRight),
//         ),
//         NavItem(
//           onPressed: () =>
//               context.read<UserProfileBloc>().onGiveFeedbackPressed(),
//           title:
//               Text(context.tr(LocaleKeys.userProfile_navLabels_giveFeedback)),
//           trailing: const Icon(CustomICons.chevronBigRight),
//         ),
//         NavItem(
//           onPressed: () => context.router.push(const LegalInfoRoute()),
//           title: Text(context.tr(LocaleKeys.userProfile_navLabels_legalInfo)),
//           trailing: const Icon(CustomICons.chevronBigRight),
//         ),
//       ],
//     );
//   }
// }
//
// class NevTileGroup extends StatelessWidget {
//   const NevTileGroup({
//     super.key,
//     this.children = const [],
//   });
//
//   final List<Widget> children;
//
//   @override
//   Widget build(BuildContext context) {
//     return ClipRRect(
//       borderRadius: BorderRadius.circular(AppBorderRadius.medium),
//       child: SeparatedColumn(
//         separator: const SizedBox(
//           height: 1.0,
//         ),
//         children: children,
//       ),
//     );
//   }
// }
