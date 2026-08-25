import 'package:flutter/cupertino.dart';

abstract class OnboardingKeys {
  static final mapButtonKey = GlobalKey(debugLabel: 'mapButtonKey');
  static final storeListButtonKey = GlobalKey(debugLabel: 'storeListButtonKey');
  static final catalogButtonKey = GlobalKey(debugLabel: 'catalogButtonKey');
  static final userProfileButtonKey =
      GlobalKey(debugLabel: 'userProfileButtonKey');
  static final scannerButtonKey = GlobalKey(debugLabel: 'scannerButtonKey');
  static final scannerBannerKey = GlobalKey(debugLabel: 'scannerBannerKey');
  static final scannerHaveProductsButtonKey =
      GlobalKey(debugLabel: 'scannerHaveProductsButtonKey');
  static final fridgeCardKey = GlobalKey(debugLabel: 'fridgeCardKey');
  static final didNotBuyAnythingKey =
      GlobalKey(debugLabel: 'didNotBuyAnythingKey');

  static final unpaidOrderCancelButtonKey =
      GlobalKey(debugLabel: 'unpaidOrderDidNotBuyAnythingButtonKey');
  static final unpaidOrderActionButtonKey =
      GlobalKey(debugLabel: 'unpaidOrderActionButtonKey');
  static final unpaidOrderHelpButtonKey =
      GlobalKey(debugLabel: 'unpaidOrderHelpButtonKey');
}
