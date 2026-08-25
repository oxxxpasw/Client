import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/repository/update_repository.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:url_launcher/url_launcher_string.dart';
import 'package:android_intent_plus/android_intent.dart';

typedef OnError = void Function(Object error);

@injectable
sealed class StoreNavigator {
  const StoreNavigator();

  @factoryMethod
  static StoreNavigator getNavigator(UpdateRepository repository) =>
      switch (defaultTargetPlatform) {
        TargetPlatform.android ||
        TargetPlatform.fuchsia =>
          AndroidStoreNavigator(repository),
        TargetPlatform.iOS ||
        TargetPlatform.macOS =>
          IOSStoreNavigator(repository),
        _ => const DummyStoreNavigator(),
      };

  Future<void> sendUserToStore([OnError? onError]);
}

class IOSStoreNavigator extends StoreNavigator {
  const IOSStoreNavigator(this.updateRepository);

  @protected
  final UpdateRepository updateRepository;

  @override
  Future<void> sendUserToStore([OnError? onError]) async {
    final appStoreUrl =
        (await updateRepository.checkUpdates()).updates?.storeLinks?.itunesUrl;
    if (appStoreUrl == null || appStoreUrl.isEmpty) {
      return;
    }
    if (await canLaunchUrlString(appStoreUrl)) {
      try {
        await launchUrlString(
          appStoreUrl,
          mode: LaunchMode.externalNonBrowserApplication,
        );
      } catch (e) {
        onError?.call(e);
      }
    }
  }
}

class AndroidStoreNavigator extends StoreNavigator {
  const AndroidStoreNavigator(this.updateRepository);

  @protected
  final UpdateRepository updateRepository;

  @override
  Future<void> sendUserToStore([OnError? onError]) async {
    final marketUrl = (await updateRepository.checkUpdates())
        .updates
        ?.storeLinks
        ?.androidMarketUrl;
    if (marketUrl == null || marketUrl.isEmpty) {
      return;
    }
    try {
      return AndroidIntent(
        action: 'action_view',
        data: marketUrl,
      ).launchChooser(tr(LocaleKeys.appMarket_label));
    } catch (e) {
      onError?.call(e);
    }
  }
}

class DummyStoreNavigator extends StoreNavigator {
  const DummyStoreNavigator();

  @override
  Future<void> sendUserToStore([OnError? onError]) async {}
}
