import 'dart:async';

import 'package:app_settings/app_settings.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/rxdart.dart';
import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/city_respository.dart';
import 'package:sosedifedi/data/repository/customer_account_repository.dart';
import 'package:sosedifedi/data/repository/remote_config_repository.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/launch_url/launch_url_in_web_view.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

part 'user_profile_bloc.freezed.dart';
part 'user_profile_state.dart';

const _kPartnerContactPage = 'https://coffeelil.by';

@injectable
class UserProfileBloc extends Cubit<UserProfileState> {
  UserProfileBloc({
    required this.customerAccountRepository,
    required this.authRepository,
    required this.appEnvironment,
    required this.cityRepository,
    required this.remoteConfigRepository,
  }) : super(const UserProfileState()) {
    _subscription.add(authRepository.tokenStream.listen(_handleAuthEvent));
  }

  @protected
  final AuthRepository authRepository;
  @protected
  final CustomerAccountRepository customerAccountRepository;
  @protected
  final CityRepository cityRepository;
  @protected
  final AppEnvironment appEnvironment;
  @protected
  final RemoteConfigRepository remoteConfigRepository;

  final _subscription = CompositeSubscription();

  void _handleAuthEvent(AuthData? authData) {
    emit(
      state.copyWith(
        status: UserProfileStatus.ready,
        isAuthorized: authData != null,
      ),
    );
  }

  Future<void> logout() async {
    authRepository.logout();
  }

  Future<void> deleteAccount() async {
    authRepository.deleteAccount();
  }

  Future<void> openPartnersPage() async {
    try {
      if (await canLaunchUrlString(_kPartnerContactPage)) {
        launchUrlString(_kPartnerContactPage);
      }
    } catch (e) {
      addError(e);
    }
  }

  // openAboutUs() async {
  //   try {
  //     final uri = '${appEnvironment.apiEndpoint}static/legal/about-us.pdf';
  //     final path =
  //         '${(await getTemporaryDirectory()).path}${Platform.pathSeparator}/downloads/about-us.pdf';
  //     final file = File(path);
  //     final options = NetworkFileOptions(
  //       file: file,
  //       onDone: () async {
  //         await OpenFilex.open(path);
  //       },
  //     );
  //     await NetworkFile.download(uri, options);
  //   } catch (e) {
  //     addError(e);
  //   }
  // }

  Future<void> launchUserAgreement() =>
      launchUrlInBrowser(appEnvironment.legalInfo.userAgreementUrl);

  Future<void> launchPublicOffer() =>
      launchUrlInBrowser(appEnvironment.legalInfo.publicOfferUrl);

  Future<void> launchPrivacyPolicy() =>
      launchUrlInBrowser(appEnvironment.legalInfo.privacyPolicyUrl);

  Future<void> onGiveFeedbackPressed() async {
    try {
      final feedbackUri = remoteConfigRepository.config.feedbackUrl;

      if (feedbackUri != null && await canLaunchUrl(feedbackUri)) {
        await launchUrl(
          feedbackUri,
          mode: LaunchMode.externalApplication,
        );
      }
    } catch (e) {
      addError(e);
    }
  }

  Future<void> onOpenNotificationSettingsPressed() async {
    try {
      await AppSettings.openAppSettings(type: AppSettingsType.notification);
    } catch (e) {
      addError(e);
    }
  }

  @override
  Future<void> close() async {
    _subscription.cancel();
    super.close();
  }
}
