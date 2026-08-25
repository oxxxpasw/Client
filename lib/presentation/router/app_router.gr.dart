// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i86;
import 'package:collection/collection.dart' as _i98;
import 'package:flutter/cupertino.dart' as _i91;
import 'package:flutter/foundation.dart' as _i93;
import 'package:flutter/material.dart' as _i87;
import 'package:flutter_inappwebview/flutter_inappwebview.dart' as _i101;
import 'package:mobile_scanner/mobile_scanner.dart' as _i96;
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart'
    as _i92;
import 'package:sosedifedi/data/models/promotion/promotion.dart' as _i100;
import 'package:sosedifedi/data/models/stores/stores.dart' as _i88;
import 'package:sosedifedi/domain/bloc/feedback_cubit/feedback_cubit.dart'
    as _i95;
import 'package:sosedifedi/domain/models/cart/cart_model.dart' as _i94;
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart'
    as _i89;
import 'package:sosedifedi/domain/models/payment/payment.dart' as _i97;
import 'package:sosedifedi/domain/models/product/product.dart' as _i90;
import 'package:sosedifedi/domain/models/user_review/user_review.dart' as _i99;
import 'package:sosedifedi/presentation/components/payment/screens/choose_sbp.dart'
    as _i18;
import 'package:sosedifedi/presentation/components/payment/screens/payment_completion_waiting_screen.dart'
    as _i49;
import 'package:sosedifedi/presentation/components/payment/screens/web_view_payment_screen.dart'
    as _i85;
import 'package:sosedifedi/presentation/popups/bank_app_not_installed_popup/bank_app_not_installed_popup.dart'
    as _i7;
import 'package:sosedifedi/presentation/popups/change_city_popup/change_city_popup.dart'
    as _i13;
import 'package:sosedifedi/presentation/popups/fridge_not_selected_popup/fridge_not_selected_popup.dart'
    as _i33;
import 'package:sosedifedi/presentation/popups/has_unfinished_purchase_popup/has_unfinished_purchase_popup.dart'
    as _i37;
import 'package:sosedifedi/presentation/popups/has_unpaid_order_popup/has_unpaid_order_popup.dart'
    as _i38;
import 'package:sosedifedi/presentation/popups/open_without_reg_popup/open_without_reg_popup.dart'
    as _i43;
import 'package:sosedifedi/presentation/popups/report_problem_popup/qr_report_problem_popup.dart'
    as _i60;
import 'package:sosedifedi/presentation/popups/report_problem_popup/report_problem_popup.dart'
    as _i63;
import 'package:sosedifedi/presentation/popups/report_problem_popup/report_problem_screen.dart'
    as _i64;
import 'package:sosedifedi/presentation/popups/send_feedback_popup/send_feedback_popup.dart'
    as _i71;
import 'package:sosedifedi/presentation/popups/user_banned_popup/user_banned_popup.dart'
    as _i82;
import 'package:sosedifedi/presentation/screens/about_us_item_screen/about_us_item.dart'
    as _i1;
import 'package:sosedifedi/presentation/screens/account_qr_screen/account_qr_screen.dart'
    as _i3;
import 'package:sosedifedi/presentation/screens/auth_screen/auth_screen.dart'
    as _i6;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/code_input_screen.dart'
    as _i20;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/loading.dart'
    as _i5;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/phone_input_screen.dart'
    as _i50;
import 'package:sosedifedi/presentation/screens/auth_screen/screens/start_screen.dart'
    as _i76;
import 'package:sosedifedi/presentation/screens/bonus_program_info_screen/bonus_account_info_screen.dart'
    as _i9;
import 'package:sosedifedi/presentation/screens/bonus_program_info_screen/bonus_program_info_screen.dart'
    as _i10;
import 'package:sosedifedi/presentation/screens/bonus_program_screen/bonus_program_screen.dart'
    as _i11;
import 'package:sosedifedi/presentation/screens/cart_search_screen/cart_search_screen.dart'
    as _i12;
import 'package:sosedifedi/presentation/screens/choose_payment_type_screen/choose_payment_type_screen3.dart'
    as _i17;
import 'package:sosedifedi/presentation/screens/city_list_screen/city_list_screen.dart'
    as _i19;
import 'package:sosedifedi/presentation/screens/confirm_order_screen/confirm_order_screen.dart'
    as _i22;
import 'package:sosedifedi/presentation/screens/confirm_order_screen/screens/order_form_screen.dart'
    as _i45;
import 'package:sosedifedi/presentation/screens/confirm_order_screen/screens/order_loading_screen.dart'
    as _i47;
import 'package:sosedifedi/presentation/screens/create_order_screen/create_order_screen.dart'
    as _i23;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/check_address_screen.dart'
    as _i14;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/choose_drink_screen.dart'
    as _i15;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/coffee_processing_screen.dart'
    as _i21;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/payment_completion_screen.dart'
    as _i48;
import 'package:sosedifedi/presentation/screens/create_order_screen/screens/success_order_screen.dart'
    as _i80;
import 'package:sosedifedi/presentation/screens/drink_details_screen/drink_details_screen.dart'
    as _i24;
import 'package:sosedifedi/presentation/screens/feedback_screen/feedback_screen.dart'
    as _i29;
import 'package:sosedifedi/presentation/screens/feedback_screen/screens/app_feedback_screen.dart'
    as _i4;
import 'package:sosedifedi/presentation/screens/feedback_screen/screens/feedback_purchase_list_screen.dart'
    as _i27;
import 'package:sosedifedi/presentation/screens/feedback_screen/screens/feedback_qr_scan_screen.dart'
    as _i28;
import 'package:sosedifedi/presentation/screens/feedback_screen/screens/feedback_store_list_screen.dart'
    as _i30;
import 'package:sosedifedi/presentation/screens/fridge_products_screen/fridge_products_screen.dart'
    as _i34;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/components/barcode_not_found_popup.dart'
    as _i8;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/fridge_qr_scan_screen.dart'
    as _i35;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/fridge_qr_scan_screen_2.dart'
    as _i36;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/cart_screen.dart'
    as _i31;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/fridge_choose_payment.dart'
    as _i16;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/scan_cart_screen.dart'
    as _i66;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/scan_screen.dart'
    as _i68;
import 'package:sosedifedi/presentation/screens/fridge_qr_scan_screen/screens/scan_store_screen.dart'
    as _i67;
import 'package:sosedifedi/presentation/screens/main_screen/main_screen.dart'
    as _i40;
import 'package:sosedifedi/presentation/screens/main_screen/screens/about_us_screen.dart'
    as _i2;
import 'package:sosedifedi/presentation/screens/main_screen/screens/feedback_screen.dart'
    as _i26;
import 'package:sosedifedi/presentation/screens/main_screen/screens/fridge_map_screen.dart'
    as _i32;
import 'package:sosedifedi/presentation/screens/main_screen/screens/products_screen.dart'
    as _i56;
import 'package:sosedifedi/presentation/screens/main_screen/screens/promotions_screen.dart'
    as _i59;
import 'package:sosedifedi/presentation/screens/map/map_screen.dart' as _i41;
import 'package:sosedifedi/presentation/screens/map/screens/store_map_screen.dart'
    as _i78;
import 'package:sosedifedi/presentation/screens/new_order_info_screen/new_order_info_screen.dart'
    as _i42;
import 'package:sosedifedi/presentation/screens/order_details_screen/order_details_screen.dart'
    as _i44;
import 'package:sosedifedi/presentation/screens/order_details_screen/unpaid_order_details_screen.dart'
    as _i81;
import 'package:sosedifedi/presentation/screens/order_history_screen/order_history_screen.dart'
    as _i46;
import 'package:sosedifedi/presentation/screens/point_list_screen/point_list_modal_screen.dart'
    as _i51;
import 'package:sosedifedi/presentation/screens/point_list_screen/point_list_screen.dart'
    as _i52;
import 'package:sosedifedi/presentation/screens/product_map_screen/product_map_screen.dart'
    as _i53;
import 'package:sosedifedi/presentation/screens/product_screen/edit_product_screen.dart'
    as _i25;
import 'package:sosedifedi/presentation/screens/product_screen/product_screen.dart'
    as _i54;
import 'package:sosedifedi/presentation/screens/product_screen/product_screen_with_map.dart'
    as _i55;
import 'package:sosedifedi/presentation/screens/promotion_screen/promotion_screen.dart'
    as _i58;
import 'package:sosedifedi/presentation/screens/qr_scan_screen/qr_scan_screen.dart'
    as _i61;
import 'package:sosedifedi/presentation/screens/raffles_screen/raffles_screen.dart'
    as _i62;
import 'package:sosedifedi/presentation/screens/review_details_screen/review_details_screen.dart'
    as _i65;
import 'package:sosedifedi/presentation/screens/scan_to_start_screen/scan_to_start_screen.dart'
    as _i69;
import 'package:sosedifedi/presentation/screens/search_screen/search_screen.dart'
    as _i70;
import 'package:sosedifedi/presentation/screens/splash_screen/screens/splash_error_screen.dart'
    as _i72;
import 'package:sosedifedi/presentation/screens/splash_screen/screens/splash_loading_screen.dart'
    as _i73;
import 'package:sosedifedi/presentation/screens/splash_screen/screens/splash_update_screen.dart'
    as _i75;
import 'package:sosedifedi/presentation/screens/splash_screen/splash_screen.dart'
    as _i74;
import 'package:sosedifedi/presentation/screens/store_info_screen/store_info_screen.dart'
    as _i77;
import 'package:sosedifedi/presentation/screens/story_screen/story_screen.dart'
    as _i79;
import 'package:sosedifedi/presentation/screens/user_data_screen/user_data_screen.dart'
    as _i83;
import 'package:sosedifedi/presentation/screens/user_profile_screen/screens/legal_info_screen.dart'
    as _i39;
import 'package:sosedifedi/presentation/screens/user_profile_screen/screens/profile_screen.dart'
    as _i57;
import 'package:sosedifedi/presentation/screens/user_profile_screen/user_profile_screen.dart'
    as _i84;

/// generated route for
/// [_i1.AboutUsItemScreen]
class AboutUsItemRoute extends _i86.PageRouteInfo<AboutUsItemRouteArgs> {
  AboutUsItemRoute({
    _i87.Key? key,
    required String id,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         AboutUsItemRoute.name,
         args: AboutUsItemRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'AboutUsItemRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<AboutUsItemRouteArgs>(
        orElse: () => AboutUsItemRouteArgs(id: pathParams.getString('id')),
      );
      return _i86.WrappedRoute(
        child: _i1.AboutUsItemScreen(key: args.key, id: args.id),
      );
    },
  );
}

class AboutUsItemRouteArgs {
  const AboutUsItemRouteArgs({this.key, required this.id});

  final _i87.Key? key;

  final String id;

  @override
  String toString() {
    return 'AboutUsItemRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AboutUsItemRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i2.AboutUsScreen]
class AboutUsRoute extends _i86.PageRouteInfo<void> {
  const AboutUsRoute({List<_i86.PageRouteInfo>? children})
    : super(AboutUsRoute.name, initialChildren: children);

  static const String name = 'AboutUsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i2.AboutUsScreen());
    },
  );
}

/// generated route for
/// [_i3.AccountQRScreen]
class AccountQRRoute extends _i86.PageRouteInfo<AccountQRRouteArgs> {
  AccountQRRoute({
    _i87.Key? key,
    required String data,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         AccountQRRoute.name,
         args: AccountQRRouteArgs(key: key, data: data),
         initialChildren: children,
       );

  static const String name = 'AccountQRRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AccountQRRouteArgs>();
      return _i3.AccountQRScreen(key: args.key, data: args.data);
    },
  );
}

class AccountQRRouteArgs {
  const AccountQRRouteArgs({this.key, required this.data});

  final _i87.Key? key;

  final String data;

  @override
  String toString() {
    return 'AccountQRRouteArgs{key: $key, data: $data}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AccountQRRouteArgs) return false;
    return key == other.key && data == other.data;
  }

  @override
  int get hashCode => key.hashCode ^ data.hashCode;
}

/// generated route for
/// [_i4.AppFeedbackScreen]
class AppFeedbackRoute extends _i86.PageRouteInfo<AppFeedbackRouteArgs> {
  AppFeedbackRoute({
    _i87.Key? key,
    _i88.Store? store,
    _i89.AcceptedOrder? order,
    _i90.Product? product,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         AppFeedbackRoute.name,
         args: AppFeedbackRouteArgs(
           key: key,
           store: store,
           order: order,
           product: product,
         ),
         initialChildren: children,
       );

  static const String name = 'AppFeedbackRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AppFeedbackRouteArgs>(
        orElse: () => const AppFeedbackRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i4.AppFeedbackScreen(
          key: args.key,
          store: args.store,
          order: args.order,
          product: args.product,
        ),
      );
    },
  );
}

class AppFeedbackRouteArgs {
  const AppFeedbackRouteArgs({this.key, this.store, this.order, this.product});

  final _i87.Key? key;

  final _i88.Store? store;

  final _i89.AcceptedOrder? order;

  final _i90.Product? product;

  @override
  String toString() {
    return 'AppFeedbackRouteArgs{key: $key, store: $store, order: $order, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AppFeedbackRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        order == other.order &&
        product == other.product;
  }

  @override
  int get hashCode =>
      key.hashCode ^ store.hashCode ^ order.hashCode ^ product.hashCode;
}

/// generated route for
/// [_i5.AuthLoadingScreen]
class AuthLoadingRoute extends _i86.PageRouteInfo<void> {
  const AuthLoadingRoute({List<_i86.PageRouteInfo>? children})
    : super(AuthLoadingRoute.name, initialChildren: children);

  static const String name = 'AuthLoadingRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i5.AuthLoadingScreen();
    },
  );
}

/// generated route for
/// [_i6.AuthScreen]
class AuthRoute extends _i86.PageRouteInfo<AuthRouteArgs> {
  AuthRoute({
    _i91.Key? key,
    _i91.VoidCallback? onComplete,
    bool canSkipAuth = true,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         AuthRoute.name,
         args: AuthRouteArgs(
           key: key,
           onComplete: onComplete,
           canSkipAuth: canSkipAuth,
         ),
         initialChildren: children,
       );

  static const String name = 'AuthRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<AuthRouteArgs>(
        orElse: () => const AuthRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i6.AuthScreen(
          key: args.key,
          onComplete: args.onComplete,
          canSkipAuth: args.canSkipAuth,
        ),
      );
    },
  );
}

class AuthRouteArgs {
  const AuthRouteArgs({this.key, this.onComplete, this.canSkipAuth = true});

  final _i91.Key? key;

  final _i91.VoidCallback? onComplete;

  final bool canSkipAuth;

  @override
  String toString() {
    return 'AuthRouteArgs{key: $key, onComplete: $onComplete, canSkipAuth: $canSkipAuth}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! AuthRouteArgs) return false;
    return key == other.key &&
        onComplete == other.onComplete &&
        canSkipAuth == other.canSkipAuth;
  }

  @override
  int get hashCode => key.hashCode ^ onComplete.hashCode ^ canSkipAuth.hashCode;
}

/// generated route for
/// [_i7.BankAppNotInstalledPopup]
class BankAppNotInstalledPopup extends _i86.PageRouteInfo<void> {
  const BankAppNotInstalledPopup({List<_i86.PageRouteInfo>? children})
    : super(BankAppNotInstalledPopup.name, initialChildren: children);

  static const String name = 'BankAppNotInstalledPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i7.BankAppNotInstalledPopup();
    },
  );
}

/// generated route for
/// [_i8.BarcodeNotFoundPopup]
class BarcodeNotFoundPopup extends _i86.PageRouteInfo<void> {
  const BarcodeNotFoundPopup({List<_i86.PageRouteInfo>? children})
    : super(BarcodeNotFoundPopup.name, initialChildren: children);

  static const String name = 'BarcodeNotFoundPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i8.BarcodeNotFoundPopup();
    },
  );
}

/// generated route for
/// [_i9.BonusAccountInfoScreen]
class BonusAccountInfoRoute
    extends _i86.PageRouteInfo<BonusAccountInfoRouteArgs> {
  BonusAccountInfoRoute({
    _i87.Key? key,
    required _i92.BonusProgramAccount account,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         BonusAccountInfoRoute.name,
         args: BonusAccountInfoRouteArgs(key: key, account: account),
         initialChildren: children,
       );

  static const String name = 'BonusAccountInfoRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<BonusAccountInfoRouteArgs>();
      return _i86.WrappedRoute(
        child: _i9.BonusAccountInfoScreen(key: args.key, account: args.account),
      );
    },
  );
}

class BonusAccountInfoRouteArgs {
  const BonusAccountInfoRouteArgs({this.key, required this.account});

  final _i87.Key? key;

  final _i92.BonusProgramAccount account;

  @override
  String toString() {
    return 'BonusAccountInfoRouteArgs{key: $key, account: $account}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! BonusAccountInfoRouteArgs) return false;
    return key == other.key && account == other.account;
  }

  @override
  int get hashCode => key.hashCode ^ account.hashCode;
}

/// generated route for
/// [_i10.BonusProgramInfoScreen]
class BonusProgramInfoRoute extends _i86.PageRouteInfo<void> {
  const BonusProgramInfoRoute({List<_i86.PageRouteInfo>? children})
    : super(BonusProgramInfoRoute.name, initialChildren: children);

  static const String name = 'BonusProgramInfoRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i10.BonusProgramInfoScreen());
    },
  );
}

/// generated route for
/// [_i11.BonusProgramScreen]
class BonusProgramRoute extends _i86.PageRouteInfo<void> {
  const BonusProgramRoute({List<_i86.PageRouteInfo>? children})
    : super(BonusProgramRoute.name, initialChildren: children);

  static const String name = 'BonusProgramRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i11.BonusProgramScreen());
    },
  );
}

/// generated route for
/// [_i12.CartSearchScreen]
class CartSearchRoute extends _i86.PageRouteInfo<CartSearchRouteArgs> {
  CartSearchRoute({
    _i87.Key? key,
    required _i88.Store store,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         CartSearchRoute.name,
         args: CartSearchRouteArgs(key: key, store: store),
         initialChildren: children,
       );

  static const String name = 'CartSearchRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CartSearchRouteArgs>();
      return _i86.WrappedRoute(
        child: _i12.CartSearchScreen(key: args.key, store: args.store),
      );
    },
  );
}

class CartSearchRouteArgs {
  const CartSearchRouteArgs({this.key, required this.store});

  final _i87.Key? key;

  final _i88.Store store;

  @override
  String toString() {
    return 'CartSearchRouteArgs{key: $key, store: $store}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CartSearchRouteArgs) return false;
    return key == other.key && store == other.store;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode;
}

/// generated route for
/// [_i13.ChangeCityPopup]
class ChangeCityPopup extends _i86.PageRouteInfo<ChangeCityPopupArgs> {
  ChangeCityPopup({
    _i87.Key? key,
    required _i88.City newCity,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ChangeCityPopup.name,
         args: ChangeCityPopupArgs(key: key, newCity: newCity),
         initialChildren: children,
       );

  static const String name = 'ChangeCityPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChangeCityPopupArgs>();
      return _i13.ChangeCityPopup(key: args.key, newCity: args.newCity);
    },
  );
}

class ChangeCityPopupArgs {
  const ChangeCityPopupArgs({this.key, required this.newCity});

  final _i87.Key? key;

  final _i88.City newCity;

  @override
  String toString() {
    return 'ChangeCityPopupArgs{key: $key, newCity: $newCity}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChangeCityPopupArgs) return false;
    return key == other.key && newCity == other.newCity;
  }

  @override
  int get hashCode => key.hashCode ^ newCity.hashCode;
}

/// generated route for
/// [_i14.CheckAddressScreen]
class CheckAddressRoute extends _i86.PageRouteInfo<CheckAddressRouteArgs> {
  CheckAddressRoute({
    _i87.Key? key,
    required _i88.Store store,
    _i87.VoidCallback? onNextPressed,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         CheckAddressRoute.name,
         args: CheckAddressRouteArgs(
           key: key,
           store: store,
           onNextPressed: onNextPressed,
         ),
         initialChildren: children,
       );

  static const String name = 'CheckAddressRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CheckAddressRouteArgs>();
      return _i14.CheckAddressScreen(
        key: args.key,
        store: args.store,
        onNextPressed: args.onNextPressed,
      );
    },
  );
}

class CheckAddressRouteArgs {
  const CheckAddressRouteArgs({
    this.key,
    required this.store,
    this.onNextPressed,
  });

  final _i87.Key? key;

  final _i88.Store store;

  final _i87.VoidCallback? onNextPressed;

  @override
  String toString() {
    return 'CheckAddressRouteArgs{key: $key, store: $store, onNextPressed: $onNextPressed}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CheckAddressRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        onNextPressed == other.onNextPressed;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode ^ onNextPressed.hashCode;
}

/// generated route for
/// [_i15.ChooseDrinkScreen]
class ChooseDrinkRoute extends _i86.PageRouteInfo<ChooseDrinkRouteArgs> {
  ChooseDrinkRoute({
    _i87.Key? key,
    required String storeFile,
    void Function(_i90.Product)? onProductSelected,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ChooseDrinkRoute.name,
         args: ChooseDrinkRouteArgs(
           key: key,
           storeFile: storeFile,
           onProductSelected: onProductSelected,
         ),
         initialChildren: children,
       );

  static const String name = 'ChooseDrinkRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChooseDrinkRouteArgs>();
      return _i86.WrappedRoute(
        child: _i15.ChooseDrinkScreen(
          key: args.key,
          storeFile: args.storeFile,
          onProductSelected: args.onProductSelected,
        ),
      );
    },
  );
}

class ChooseDrinkRouteArgs {
  const ChooseDrinkRouteArgs({
    this.key,
    required this.storeFile,
    this.onProductSelected,
  });

  final _i87.Key? key;

  final String storeFile;

  final void Function(_i90.Product)? onProductSelected;

  @override
  String toString() {
    return 'ChooseDrinkRouteArgs{key: $key, storeFile: $storeFile, onProductSelected: $onProductSelected}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChooseDrinkRouteArgs) return false;
    return key == other.key && storeFile == other.storeFile;
  }

  @override
  int get hashCode => key.hashCode ^ storeFile.hashCode;
}

/// generated route for
/// [_i16.ChoosePaymentTypeScreen2]
class ChoosePaymentTypeRoute2 extends _i86.PageRouteInfo<void> {
  const ChoosePaymentTypeRoute2({List<_i86.PageRouteInfo>? children})
    : super(ChoosePaymentTypeRoute2.name, initialChildren: children);

  static const String name = 'ChoosePaymentTypeRoute2';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i16.ChoosePaymentTypeScreen2();
    },
  );
}

/// generated route for
/// [_i17.ChoosePaymentTypeScreen3]
class ChoosePaymentTypeRoute3
    extends _i86.PageRouteInfo<ChoosePaymentTypeRoute3Args> {
  ChoosePaymentTypeRoute3({
    _i87.Key? key,
    required String storeId,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ChoosePaymentTypeRoute3.name,
         args: ChoosePaymentTypeRoute3Args(key: key, storeId: storeId),
         initialChildren: children,
       );

  static const String name = 'ChoosePaymentTypeRoute3';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChoosePaymentTypeRoute3Args>();
      return _i86.WrappedRoute(
        child: _i17.ChoosePaymentTypeScreen3(
          key: args.key,
          storeId: args.storeId,
        ),
      );
    },
  );
}

class ChoosePaymentTypeRoute3Args {
  const ChoosePaymentTypeRoute3Args({this.key, required this.storeId});

  final _i87.Key? key;

  final String storeId;

  @override
  String toString() {
    return 'ChoosePaymentTypeRoute3Args{key: $key, storeId: $storeId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChoosePaymentTypeRoute3Args) return false;
    return key == other.key && storeId == other.storeId;
  }

  @override
  int get hashCode => key.hashCode ^ storeId.hashCode;
}

/// generated route for
/// [_i18.ChooseSpbPaymentScreen]
class ChooseSpbPaymentRoute
    extends _i86.PageRouteInfo<ChooseSpbPaymentRouteArgs> {
  ChooseSpbPaymentRoute({
    _i93.Key? key,
    required Uri qrUrl,
    required String paymentId,
    required String storeId,
    required _i93.VoidCallback? onFailedPayment,
    _i93.VoidCallback? onBankOpened,
    _i93.VoidCallback? onPayment,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ChooseSpbPaymentRoute.name,
         args: ChooseSpbPaymentRouteArgs(
           key: key,
           qrUrl: qrUrl,
           paymentId: paymentId,
           storeId: storeId,
           onFailedPayment: onFailedPayment,
           onBankOpened: onBankOpened,
           onPayment: onPayment,
         ),
         initialChildren: children,
       );

  static const String name = 'ChooseSpbPaymentRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ChooseSpbPaymentRouteArgs>();
      return _i86.WrappedRoute(
        child: _i18.ChooseSpbPaymentScreen(
          key: args.key,
          qrUrl: args.qrUrl,
          paymentId: args.paymentId,
          storeId: args.storeId,
          onFailedPayment: args.onFailedPayment,
          onBankOpened: args.onBankOpened,
          onPayment: args.onPayment,
        ),
      );
    },
  );
}

class ChooseSpbPaymentRouteArgs {
  const ChooseSpbPaymentRouteArgs({
    this.key,
    required this.qrUrl,
    required this.paymentId,
    required this.storeId,
    required this.onFailedPayment,
    this.onBankOpened,
    this.onPayment,
  });

  final _i93.Key? key;

  final Uri qrUrl;

  final String paymentId;

  final String storeId;

  final _i93.VoidCallback? onFailedPayment;

  final _i93.VoidCallback? onBankOpened;

  final _i93.VoidCallback? onPayment;

  @override
  String toString() {
    return 'ChooseSpbPaymentRouteArgs{key: $key, qrUrl: $qrUrl, paymentId: $paymentId, storeId: $storeId, onFailedPayment: $onFailedPayment, onBankOpened: $onBankOpened, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ChooseSpbPaymentRouteArgs) return false;
    return key == other.key &&
        qrUrl == other.qrUrl &&
        paymentId == other.paymentId &&
        storeId == other.storeId &&
        onFailedPayment == other.onFailedPayment &&
        onBankOpened == other.onBankOpened &&
        onPayment == other.onPayment;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      qrUrl.hashCode ^
      paymentId.hashCode ^
      storeId.hashCode ^
      onFailedPayment.hashCode ^
      onBankOpened.hashCode ^
      onPayment.hashCode;
}

/// generated route for
/// [_i19.CityListScreen]
class CityListRoute extends _i86.PageRouteInfo<CityListRouteArgs> {
  CityListRoute({
    _i87.Key? key,
    _i87.VoidCallback? onSelectSelected,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         CityListRoute.name,
         args: CityListRouteArgs(key: key, onSelectSelected: onSelectSelected),
         initialChildren: children,
       );

  static const String name = 'CityListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CityListRouteArgs>(
        orElse: () => const CityListRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i19.CityListScreen(
          key: args.key,
          onSelectSelected: args.onSelectSelected,
        ),
      );
    },
  );
}

class CityListRouteArgs {
  const CityListRouteArgs({this.key, this.onSelectSelected});

  final _i87.Key? key;

  final _i87.VoidCallback? onSelectSelected;

  @override
  String toString() {
    return 'CityListRouteArgs{key: $key, onSelectSelected: $onSelectSelected}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CityListRouteArgs) return false;
    return key == other.key && onSelectSelected == other.onSelectSelected;
  }

  @override
  int get hashCode => key.hashCode ^ onSelectSelected.hashCode;
}

/// generated route for
/// [_i20.CodeInputScreen]
class CodeInputRoute extends _i86.PageRouteInfo<void> {
  const CodeInputRoute({List<_i86.PageRouteInfo>? children})
    : super(CodeInputRoute.name, initialChildren: children);

  static const String name = 'CodeInputRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i20.CodeInputScreen();
    },
  );
}

/// generated route for
/// [_i21.CoffeeProcessingScreen]
class CoffeeProcessingRoute
    extends _i86.PageRouteInfo<CoffeeProcessingRouteArgs> {
  CoffeeProcessingRoute({
    _i87.Key? key,
    _i87.VoidCallback? onSuccess,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         CoffeeProcessingRoute.name,
         args: CoffeeProcessingRouteArgs(key: key, onSuccess: onSuccess),
         initialChildren: children,
       );

  static const String name = 'CoffeeProcessingRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CoffeeProcessingRouteArgs>(
        orElse: () => const CoffeeProcessingRouteArgs(),
      );
      return _i21.CoffeeProcessingScreen(
        key: args.key,
        onSuccess: args.onSuccess,
      );
    },
  );
}

class CoffeeProcessingRouteArgs {
  const CoffeeProcessingRouteArgs({this.key, this.onSuccess});

  final _i87.Key? key;

  final _i87.VoidCallback? onSuccess;

  @override
  String toString() {
    return 'CoffeeProcessingRouteArgs{key: $key, onSuccess: $onSuccess}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CoffeeProcessingRouteArgs) return false;
    return key == other.key && onSuccess == other.onSuccess;
  }

  @override
  int get hashCode => key.hashCode ^ onSuccess.hashCode;
}

/// generated route for
/// [_i22.ConfirmOrderScreen]
class ConfirmOrderRoute extends _i86.PageRouteInfo<ConfirmOrderRouteArgs> {
  ConfirmOrderRoute({
    _i87.Key? key,
    _i88.Store? store,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ConfirmOrderRoute.name,
         args: ConfirmOrderRouteArgs(key: key, store: store),
         initialChildren: children,
       );

  static const String name = 'ConfirmOrderRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ConfirmOrderRouteArgs>(
        orElse: () => const ConfirmOrderRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i22.ConfirmOrderScreen(key: args.key, store: args.store),
      );
    },
  );
}

class ConfirmOrderRouteArgs {
  const ConfirmOrderRouteArgs({this.key, this.store});

  final _i87.Key? key;

  final _i88.Store? store;

  @override
  String toString() {
    return 'ConfirmOrderRouteArgs{key: $key, store: $store}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ConfirmOrderRouteArgs) return false;
    return key == other.key && store == other.store;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode;
}

/// generated route for
/// [_i23.CreateOrderScreen]
class CreateOrderRoute extends _i86.PageRouteInfo<CreateOrderRouteArgs> {
  CreateOrderRoute({
    _i87.Key? key,
    required _i88.Store store,
    required _i88.CoffeeMachine coffeeMachine,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         CreateOrderRoute.name,
         args: CreateOrderRouteArgs(
           key: key,
           store: store,
           coffeeMachine: coffeeMachine,
         ),
         initialChildren: children,
       );

  static const String name = 'CreateOrderRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<CreateOrderRouteArgs>();
      return _i86.WrappedRoute(
        child: _i23.CreateOrderScreen(
          key: args.key,
          store: args.store,
          coffeeMachine: args.coffeeMachine,
        ),
      );
    },
  );
}

class CreateOrderRouteArgs {
  const CreateOrderRouteArgs({
    this.key,
    required this.store,
    required this.coffeeMachine,
  });

  final _i87.Key? key;

  final _i88.Store store;

  final _i88.CoffeeMachine coffeeMachine;

  @override
  String toString() {
    return 'CreateOrderRouteArgs{key: $key, store: $store, coffeeMachine: $coffeeMachine}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! CreateOrderRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        coffeeMachine == other.coffeeMachine;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode ^ coffeeMachine.hashCode;
}

/// generated route for
/// [_i24.DrinkDetailsScreen]
class DrinkDetailsRoute extends _i86.PageRouteInfo<DrinkDetailsRouteArgs> {
  DrinkDetailsRoute({
    _i87.Key? key,
    required String id,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         DrinkDetailsRoute.name,
         args: DrinkDetailsRouteArgs(key: key, id: id),
         rawPathParams: {'id': id},
         initialChildren: children,
       );

  static const String name = 'DrinkDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<DrinkDetailsRouteArgs>(
        orElse: () => DrinkDetailsRouteArgs(id: pathParams.getString('id')),
      );
      return _i24.DrinkDetailsScreen(key: args.key, id: args.id);
    },
  );
}

class DrinkDetailsRouteArgs {
  const DrinkDetailsRouteArgs({this.key, required this.id});

  final _i87.Key? key;

  final String id;

  @override
  String toString() {
    return 'DrinkDetailsRouteArgs{key: $key, id: $id}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! DrinkDetailsRouteArgs) return false;
    return key == other.key && id == other.id;
  }

  @override
  int get hashCode => key.hashCode ^ id.hashCode;
}

/// generated route for
/// [_i25.EditProductScreen]
class EditProductRoute extends _i86.PageRouteInfo<EditProductRouteArgs> {
  EditProductRoute({
    _i87.Key? key,
    required _i94.CartItem product,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         EditProductRoute.name,
         args: EditProductRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'EditProductRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditProductRouteArgs>();
      return _i86.WrappedRoute(
        child: _i25.EditProductScreen(key: args.key, product: args.product),
      );
    },
  );
}

class EditProductRouteArgs {
  const EditProductRouteArgs({this.key, required this.product});

  final _i87.Key? key;

  final _i94.CartItem product;

  @override
  String toString() {
    return 'EditProductRouteArgs{key: $key, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! EditProductRouteArgs) return false;
    return key == other.key && product == other.product;
  }

  @override
  int get hashCode => key.hashCode ^ product.hashCode;
}

/// generated route for
/// [_i26.FeedbackMainScreen]
class FeedbackMainRoute extends _i86.PageRouteInfo<void> {
  const FeedbackMainRoute({List<_i86.PageRouteInfo>? children})
    : super(FeedbackMainRoute.name, initialChildren: children);

  static const String name = 'FeedbackMainRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i26.FeedbackMainScreen());
    },
  );
}

/// generated route for
/// [_i27.FeedbackPurchaseListScreen]
class FeedbackPurchaseListRoute
    extends _i86.PageRouteInfo<FeedbackPurchaseListRouteArgs> {
  FeedbackPurchaseListRoute({
    _i87.Key? key,
    required void Function(_i89.AcceptedOrder) onOrderSelected,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FeedbackPurchaseListRoute.name,
         args: FeedbackPurchaseListRouteArgs(
           key: key,
           onOrderSelected: onOrderSelected,
         ),
         initialChildren: children,
       );

  static const String name = 'FeedbackPurchaseListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FeedbackPurchaseListRouteArgs>();
      return _i86.WrappedRoute(
        child: _i27.FeedbackPurchaseListScreen(
          key: args.key,
          onOrderSelected: args.onOrderSelected,
        ),
      );
    },
  );
}

class FeedbackPurchaseListRouteArgs {
  const FeedbackPurchaseListRouteArgs({
    this.key,
    required this.onOrderSelected,
  });

  final _i87.Key? key;

  final void Function(_i89.AcceptedOrder) onOrderSelected;

  @override
  String toString() {
    return 'FeedbackPurchaseListRouteArgs{key: $key, onOrderSelected: $onOrderSelected}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FeedbackPurchaseListRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i28.FeedbackQrScanScreen]
class FeedbackQrScanRoute extends _i86.PageRouteInfo<FeedbackQrScanRouteArgs> {
  FeedbackQrScanRoute({
    _i87.Key? key,
    required void Function(_i88.Store) onStoreSelected,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FeedbackQrScanRoute.name,
         args: FeedbackQrScanRouteArgs(
           key: key,
           onStoreSelected: onStoreSelected,
         ),
         initialChildren: children,
       );

  static const String name = 'FeedbackQrScanRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FeedbackQrScanRouteArgs>();
      return _i86.WrappedRoute(
        child: _i28.FeedbackQrScanScreen(
          key: args.key,
          onStoreSelected: args.onStoreSelected,
        ),
      );
    },
  );
}

class FeedbackQrScanRouteArgs {
  const FeedbackQrScanRouteArgs({this.key, required this.onStoreSelected});

  final _i87.Key? key;

  final void Function(_i88.Store) onStoreSelected;

  @override
  String toString() {
    return 'FeedbackQrScanRouteArgs{key: $key, onStoreSelected: $onStoreSelected}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FeedbackQrScanRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i29.FeedbackScreen]
class FeedbackRoute extends _i86.PageRouteInfo<FeedbackRouteArgs> {
  FeedbackRoute({
    _i87.Key? key,
    required _i95.FeedbackType type,
    _i89.AcceptedOrder? order,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FeedbackRoute.name,
         args: FeedbackRouteArgs(key: key, type: type, order: order),
         initialChildren: children,
       );

  static const String name = 'FeedbackRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FeedbackRouteArgs>();
      return _i86.WrappedRoute(
        child: _i29.FeedbackScreen(
          key: args.key,
          type: args.type,
          order: args.order,
        ),
      );
    },
  );
}

class FeedbackRouteArgs {
  const FeedbackRouteArgs({this.key, required this.type, this.order});

  final _i87.Key? key;

  final _i95.FeedbackType type;

  final _i89.AcceptedOrder? order;

  @override
  String toString() {
    return 'FeedbackRouteArgs{key: $key, type: $type, order: $order}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FeedbackRouteArgs) return false;
    return key == other.key && type == other.type && order == other.order;
  }

  @override
  int get hashCode => key.hashCode ^ type.hashCode ^ order.hashCode;
}

/// generated route for
/// [_i30.FeedbackStoreListScreen]
class FeedbackStoreListRoute
    extends _i86.PageRouteInfo<FeedbackStoreListRouteArgs> {
  FeedbackStoreListRoute({
    _i87.Key? key,
    required void Function(_i88.Store) onStoreSelected,
    required _i87.VoidCallback onScanQrPressed,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FeedbackStoreListRoute.name,
         args: FeedbackStoreListRouteArgs(
           key: key,
           onStoreSelected: onStoreSelected,
           onScanQrPressed: onScanQrPressed,
         ),
         initialChildren: children,
       );

  static const String name = 'FeedbackStoreListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FeedbackStoreListRouteArgs>();
      return _i86.WrappedRoute(
        child: _i30.FeedbackStoreListScreen(
          key: args.key,
          onStoreSelected: args.onStoreSelected,
          onScanQrPressed: args.onScanQrPressed,
        ),
      );
    },
  );
}

class FeedbackStoreListRouteArgs {
  const FeedbackStoreListRouteArgs({
    this.key,
    required this.onStoreSelected,
    required this.onScanQrPressed,
  });

  final _i87.Key? key;

  final void Function(_i88.Store) onStoreSelected;

  final _i87.VoidCallback onScanQrPressed;

  @override
  String toString() {
    return 'FeedbackStoreListRouteArgs{key: $key, onStoreSelected: $onStoreSelected, onScanQrPressed: $onScanQrPressed}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FeedbackStoreListRouteArgs) return false;
    return key == other.key && onScanQrPressed == other.onScanQrPressed;
  }

  @override
  int get hashCode => key.hashCode ^ onScanQrPressed.hashCode;
}

/// generated route for
/// [_i31.FridgeCartScreen]
class FridgeCartRoute extends _i86.PageRouteInfo<FridgeCartRouteArgs> {
  FridgeCartRoute({
    _i87.Key? key,
    _i88.Store? store,
    String? fridgeId,
    bool restoreCart = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FridgeCartRoute.name,
         args: FridgeCartRouteArgs(
           key: key,
           store: store,
           fridgeId: fridgeId,
           restoreCart: restoreCart,
         ),
         initialChildren: children,
       );

  static const String name = 'FridgeCartRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FridgeCartRouteArgs>(
        orElse: () => const FridgeCartRouteArgs(),
      );
      return _i31.FridgeCartScreen(
        key: args.key,
        store: args.store,
        fridgeId: args.fridgeId,
        restoreCart: args.restoreCart,
      );
    },
  );
}

class FridgeCartRouteArgs {
  const FridgeCartRouteArgs({
    this.key,
    this.store,
    this.fridgeId,
    this.restoreCart = false,
  });

  final _i87.Key? key;

  final _i88.Store? store;

  final String? fridgeId;

  final bool restoreCart;

  @override
  String toString() {
    return 'FridgeCartRouteArgs{key: $key, store: $store, fridgeId: $fridgeId, restoreCart: $restoreCart}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FridgeCartRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        fridgeId == other.fridgeId &&
        restoreCart == other.restoreCart;
  }

  @override
  int get hashCode =>
      key.hashCode ^ store.hashCode ^ fridgeId.hashCode ^ restoreCart.hashCode;
}

/// generated route for
/// [_i32.FridgeMapScreen]
class FridgeMapRoute extends _i86.PageRouteInfo<void> {
  const FridgeMapRoute({List<_i86.PageRouteInfo>? children})
    : super(FridgeMapRoute.name, initialChildren: children);

  static const String name = 'FridgeMapRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i32.FridgeMapScreen());
    },
  );
}

/// generated route for
/// [_i33.FridgeNotSelectedPopup]
class FridgeNotSelectedPopup extends _i86.PageRouteInfo<void> {
  const FridgeNotSelectedPopup({List<_i86.PageRouteInfo>? children})
    : super(FridgeNotSelectedPopup.name, initialChildren: children);

  static const String name = 'FridgeNotSelectedPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i33.FridgeNotSelectedPopup();
    },
  );
}

/// generated route for
/// [_i34.FridgeProductsScreen]
class FridgeProductsRoute extends _i86.PageRouteInfo<FridgeProductsRouteArgs> {
  FridgeProductsRoute({
    _i87.Key? key,
    required String fridgeFileName,
    bool isCoffee = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FridgeProductsRoute.name,
         args: FridgeProductsRouteArgs(
           key: key,
           fridgeFileName: fridgeFileName,
           isCoffee: isCoffee,
         ),
         rawPathParams: {'fridgeFileName': fridgeFileName},
         initialChildren: children,
       );

  static const String name = 'FridgeProductsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<FridgeProductsRouteArgs>(
        orElse: () => FridgeProductsRouteArgs(
          fridgeFileName: pathParams.getString('fridgeFileName'),
        ),
      );
      return _i86.WrappedRoute(
        child: _i34.FridgeProductsScreen(
          key: args.key,
          fridgeFileName: args.fridgeFileName,
          isCoffee: args.isCoffee,
        ),
      );
    },
  );
}

class FridgeProductsRouteArgs {
  const FridgeProductsRouteArgs({
    this.key,
    required this.fridgeFileName,
    this.isCoffee = false,
  });

  final _i87.Key? key;

  final String fridgeFileName;

  final bool isCoffee;

  @override
  String toString() {
    return 'FridgeProductsRouteArgs{key: $key, fridgeFileName: $fridgeFileName, isCoffee: $isCoffee}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FridgeProductsRouteArgs) return false;
    return key == other.key &&
        fridgeFileName == other.fridgeFileName &&
        isCoffee == other.isCoffee;
  }

  @override
  int get hashCode =>
      key.hashCode ^ fridgeFileName.hashCode ^ isCoffee.hashCode;
}

/// generated route for
/// [_i35.FridgeQrScanScreen]
class FridgeQrScanRoute extends _i86.PageRouteInfo<FridgeQrScanRouteArgs> {
  FridgeQrScanRoute({
    _i87.Key? key,
    String? fridgeId,
    bool shouldSkipUnfinishedPurchaseGuard = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FridgeQrScanRoute.name,
         args: FridgeQrScanRouteArgs(
           key: key,
           fridgeId: fridgeId,
           shouldSkipUnfinishedPurchaseGuard: shouldSkipUnfinishedPurchaseGuard,
         ),
         rawQueryParams: {'fridge-id': fridgeId},
         initialChildren: children,
       );

  static const String name = 'FridgeQrScanRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final queryParams = data.queryParams;
      final args = data.argsAs<FridgeQrScanRouteArgs>(
        orElse: () =>
            FridgeQrScanRouteArgs(fridgeId: queryParams.optString('fridge-id')),
      );
      return _i86.WrappedRoute(
        child: _i35.FridgeQrScanScreen(
          key: args.key,
          fridgeId: args.fridgeId,
          shouldSkipUnfinishedPurchaseGuard:
              args.shouldSkipUnfinishedPurchaseGuard,
        ),
      );
    },
  );
}

class FridgeQrScanRouteArgs {
  const FridgeQrScanRouteArgs({
    this.key,
    this.fridgeId,
    this.shouldSkipUnfinishedPurchaseGuard = false,
  });

  final _i87.Key? key;

  final String? fridgeId;

  final bool shouldSkipUnfinishedPurchaseGuard;

  @override
  String toString() {
    return 'FridgeQrScanRouteArgs{key: $key, fridgeId: $fridgeId, shouldSkipUnfinishedPurchaseGuard: $shouldSkipUnfinishedPurchaseGuard}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FridgeQrScanRouteArgs) return false;
    return key == other.key &&
        fridgeId == other.fridgeId &&
        shouldSkipUnfinishedPurchaseGuard ==
            other.shouldSkipUnfinishedPurchaseGuard;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      fridgeId.hashCode ^
      shouldSkipUnfinishedPurchaseGuard.hashCode;
}

/// generated route for
/// [_i36.FridgeQrScanScreen2]
class FridgeQrScanRoute2 extends _i86.PageRouteInfo<FridgeQrScanRoute2Args> {
  FridgeQrScanRoute2({
    _i87.Key? key,
    _i88.Store? store,
    String? fridgeId,
    _i96.BarcodeCapture? barcode,
    bool shouldSkipUnfinishedPurchaseGuard = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         FridgeQrScanRoute2.name,
         args: FridgeQrScanRoute2Args(
           key: key,
           store: store,
           fridgeId: fridgeId,
           barcode: barcode,
           shouldSkipUnfinishedPurchaseGuard: shouldSkipUnfinishedPurchaseGuard,
         ),
         initialChildren: children,
       );

  static const String name = 'FridgeQrScanRoute2';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<FridgeQrScanRoute2Args>(
        orElse: () => const FridgeQrScanRoute2Args(),
      );
      return _i86.WrappedRoute(
        child: _i36.FridgeQrScanScreen2(
          key: args.key,
          store: args.store,
          fridgeId: args.fridgeId,
          barcode: args.barcode,
          shouldSkipUnfinishedPurchaseGuard:
              args.shouldSkipUnfinishedPurchaseGuard,
        ),
      );
    },
  );
}

class FridgeQrScanRoute2Args {
  const FridgeQrScanRoute2Args({
    this.key,
    this.store,
    this.fridgeId,
    this.barcode,
    this.shouldSkipUnfinishedPurchaseGuard = false,
  });

  final _i87.Key? key;

  final _i88.Store? store;

  final String? fridgeId;

  final _i96.BarcodeCapture? barcode;

  final bool shouldSkipUnfinishedPurchaseGuard;

  @override
  String toString() {
    return 'FridgeQrScanRoute2Args{key: $key, store: $store, fridgeId: $fridgeId, barcode: $barcode, shouldSkipUnfinishedPurchaseGuard: $shouldSkipUnfinishedPurchaseGuard}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! FridgeQrScanRoute2Args) return false;
    return key == other.key &&
        store == other.store &&
        fridgeId == other.fridgeId &&
        barcode == other.barcode &&
        shouldSkipUnfinishedPurchaseGuard ==
            other.shouldSkipUnfinishedPurchaseGuard;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      store.hashCode ^
      fridgeId.hashCode ^
      barcode.hashCode ^
      shouldSkipUnfinishedPurchaseGuard.hashCode;
}

/// generated route for
/// [_i37.HasUnfinishedPurchasePopup]
class HasUnfinishedPurchasePopup
    extends _i86.PageRouteInfo<HasUnfinishedPurchasePopupArgs> {
  HasUnfinishedPurchasePopup({
    _i87.Key? key,
    required _i87.VoidCallback onActionPressed,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         HasUnfinishedPurchasePopup.name,
         args: HasUnfinishedPurchasePopupArgs(
           key: key,
           onActionPressed: onActionPressed,
         ),
         initialChildren: children,
       );

  static const String name = 'HasUnfinishedPurchasePopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HasUnfinishedPurchasePopupArgs>();
      return _i37.HasUnfinishedPurchasePopup(
        key: args.key,
        onActionPressed: args.onActionPressed,
      );
    },
  );
}

class HasUnfinishedPurchasePopupArgs {
  const HasUnfinishedPurchasePopupArgs({
    this.key,
    required this.onActionPressed,
  });

  final _i87.Key? key;

  final _i87.VoidCallback onActionPressed;

  @override
  String toString() {
    return 'HasUnfinishedPurchasePopupArgs{key: $key, onActionPressed: $onActionPressed}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HasUnfinishedPurchasePopupArgs) return false;
    return key == other.key && onActionPressed == other.onActionPressed;
  }

  @override
  int get hashCode => key.hashCode ^ onActionPressed.hashCode;
}

/// generated route for
/// [_i38.HasUnpaidOrderPopup]
class HasUnpaidOrderPopup extends _i86.PageRouteInfo<HasUnpaidOrderPopupArgs> {
  HasUnpaidOrderPopup({
    _i87.Key? key,
    _i87.VoidCallback? onPayment,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         HasUnpaidOrderPopup.name,
         args: HasUnpaidOrderPopupArgs(key: key, onPayment: onPayment),
         initialChildren: children,
       );

  static const String name = 'HasUnpaidOrderPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<HasUnpaidOrderPopupArgs>(
        orElse: () => const HasUnpaidOrderPopupArgs(),
      );
      return _i38.HasUnpaidOrderPopup(key: args.key, onPayment: args.onPayment);
    },
  );
}

class HasUnpaidOrderPopupArgs {
  const HasUnpaidOrderPopupArgs({this.key, this.onPayment});

  final _i87.Key? key;

  final _i87.VoidCallback? onPayment;

  @override
  String toString() {
    return 'HasUnpaidOrderPopupArgs{key: $key, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! HasUnpaidOrderPopupArgs) return false;
    return key == other.key && onPayment == other.onPayment;
  }

  @override
  int get hashCode => key.hashCode ^ onPayment.hashCode;
}

/// generated route for
/// [_i39.LegalInfoScreen]
class LegalInfoRoute extends _i86.PageRouteInfo<void> {
  const LegalInfoRoute({List<_i86.PageRouteInfo>? children})
    : super(LegalInfoRoute.name, initialChildren: children);

  static const String name = 'LegalInfoRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i39.LegalInfoScreen();
    },
  );
}

/// generated route for
/// [_i40.MainScreen]
class MainRoute extends _i86.PageRouteInfo<void> {
  const MainRoute({List<_i86.PageRouteInfo>? children})
    : super(MainRoute.name, initialChildren: children);

  static const String name = 'MainRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i40.MainScreen());
    },
  );
}

/// generated route for
/// [_i41.MapScreen]
class MapRoute extends _i86.PageRouteInfo<void> {
  const MapRoute({List<_i86.PageRouteInfo>? children})
    : super(MapRoute.name, initialChildren: children);

  static const String name = 'MapRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i41.MapScreen());
    },
  );
}

/// generated route for
/// [_i42.NewOrderInfoScreen]
class NewOrderInfoRoute extends _i86.PageRouteInfo<void> {
  const NewOrderInfoRoute({List<_i86.PageRouteInfo>? children})
    : super(NewOrderInfoRoute.name, initialChildren: children);

  static const String name = 'NewOrderInfoRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i42.NewOrderInfoScreen();
    },
  );
}

/// generated route for
/// [_i43.OpenWithoutRegPopup]
class OpenWithoutRegPopup extends _i86.PageRouteInfo<OpenWithoutRegPopupArgs> {
  OpenWithoutRegPopup({
    _i87.Key? key,
    _i87.VoidCallback? onPressed,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         OpenWithoutRegPopup.name,
         args: OpenWithoutRegPopupArgs(key: key, onPressed: onPressed),
         initialChildren: children,
       );

  static const String name = 'OpenWithoutRegPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<OpenWithoutRegPopupArgs>(
        orElse: () => const OpenWithoutRegPopupArgs(),
      );
      return _i43.OpenWithoutRegPopup(key: args.key, onPressed: args.onPressed);
    },
  );
}

class OpenWithoutRegPopupArgs {
  const OpenWithoutRegPopupArgs({this.key, this.onPressed});

  final _i87.Key? key;

  final _i87.VoidCallback? onPressed;

  @override
  String toString() {
    return 'OpenWithoutRegPopupArgs{key: $key, onPressed: $onPressed}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OpenWithoutRegPopupArgs) return false;
    return key == other.key && onPressed == other.onPressed;
  }

  @override
  int get hashCode => key.hashCode ^ onPressed.hashCode;
}

/// generated route for
/// [_i44.OrderDetailsScreen]
class OrderDetailsRoute extends _i86.PageRouteInfo<OrderDetailsRouteArgs> {
  OrderDetailsRoute({
    _i87.Key? key,
    required String orderId,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         OrderDetailsRoute.name,
         args: OrderDetailsRouteArgs(key: key, orderId: orderId),
         rawPathParams: {'orderId': orderId},
         initialChildren: children,
       );

  static const String name = 'OrderDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<OrderDetailsRouteArgs>(
        orElse: () =>
            OrderDetailsRouteArgs(orderId: pathParams.getString('orderId')),
      );
      return _i86.WrappedRoute(
        child: _i44.OrderDetailsScreen(key: args.key, orderId: args.orderId),
      );
    },
  );
}

class OrderDetailsRouteArgs {
  const OrderDetailsRouteArgs({this.key, required this.orderId});

  final _i87.Key? key;

  final String orderId;

  @override
  String toString() {
    return 'OrderDetailsRouteArgs{key: $key, orderId: $orderId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! OrderDetailsRouteArgs) return false;
    return key == other.key && orderId == other.orderId;
  }

  @override
  int get hashCode => key.hashCode ^ orderId.hashCode;
}

/// generated route for
/// [_i45.OrderFormScreen]
class OrderFormRoute extends _i86.PageRouteInfo<void> {
  const OrderFormRoute({List<_i86.PageRouteInfo>? children})
    : super(OrderFormRoute.name, initialChildren: children);

  static const String name = 'OrderFormRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i45.OrderFormScreen();
    },
  );
}

/// generated route for
/// [_i46.OrderHistoryScreen]
class OrderHistoryRoute extends _i86.PageRouteInfo<void> {
  const OrderHistoryRoute({List<_i86.PageRouteInfo>? children})
    : super(OrderHistoryRoute.name, initialChildren: children);

  static const String name = 'OrderHistoryRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i46.OrderHistoryScreen());
    },
  );
}

/// generated route for
/// [_i47.OrderLoadingScreen]
class OrderLoadingRoute extends _i86.PageRouteInfo<void> {
  const OrderLoadingRoute({List<_i86.PageRouteInfo>? children})
    : super(OrderLoadingRoute.name, initialChildren: children);

  static const String name = 'OrderLoadingRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i47.OrderLoadingScreen();
    },
  );
}

/// generated route for
/// [_i48.PaymentCompletionScreen]
class PaymentCompletionRoute
    extends _i86.PageRouteInfo<PaymentCompletionRouteArgs> {
  PaymentCompletionRoute({
    _i87.Key? key,
    required _i97.Payment payment,
    required String storeId,
    required _i87.VoidCallback? onFailedPayment,
    required String currencySymbol,
    _i87.VoidCallback? onChangePayment,
    _i87.VoidCallback? onPayment,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         PaymentCompletionRoute.name,
         args: PaymentCompletionRouteArgs(
           key: key,
           payment: payment,
           storeId: storeId,
           onFailedPayment: onFailedPayment,
           currencySymbol: currencySymbol,
           onChangePayment: onChangePayment,
           onPayment: onPayment,
         ),
         initialChildren: children,
       );

  static const String name = 'PaymentCompletionRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentCompletionRouteArgs>();
      return _i86.WrappedRoute(
        child: _i48.PaymentCompletionScreen(
          key: args.key,
          payment: args.payment,
          storeId: args.storeId,
          onFailedPayment: args.onFailedPayment,
          currencySymbol: args.currencySymbol,
          onChangePayment: args.onChangePayment,
          onPayment: args.onPayment,
        ),
      );
    },
  );
}

class PaymentCompletionRouteArgs {
  const PaymentCompletionRouteArgs({
    this.key,
    required this.payment,
    required this.storeId,
    required this.onFailedPayment,
    required this.currencySymbol,
    this.onChangePayment,
    this.onPayment,
  });

  final _i87.Key? key;

  final _i97.Payment payment;

  final String storeId;

  final _i87.VoidCallback? onFailedPayment;

  final String currencySymbol;

  final _i87.VoidCallback? onChangePayment;

  final _i87.VoidCallback? onPayment;

  @override
  String toString() {
    return 'PaymentCompletionRouteArgs{key: $key, payment: $payment, storeId: $storeId, onFailedPayment: $onFailedPayment, currencySymbol: $currencySymbol, onChangePayment: $onChangePayment, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PaymentCompletionRouteArgs) return false;
    return key == other.key &&
        payment == other.payment &&
        storeId == other.storeId &&
        onFailedPayment == other.onFailedPayment &&
        currencySymbol == other.currencySymbol &&
        onChangePayment == other.onChangePayment &&
        onPayment == other.onPayment;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      payment.hashCode ^
      storeId.hashCode ^
      onFailedPayment.hashCode ^
      currencySymbol.hashCode ^
      onChangePayment.hashCode ^
      onPayment.hashCode;
}

/// generated route for
/// [_i49.PaymentCompletionWaitingScreen]
class PaymentCompletionWaitingRoute
    extends _i86.PageRouteInfo<PaymentCompletionWaitingRouteArgs> {
  PaymentCompletionWaitingRoute({
    _i87.Key? key,
    required String paymentId,
    required String storeId,
    required _i87.VoidCallback? onFailedPayment,
    _i87.VoidCallback? onPayment,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         PaymentCompletionWaitingRoute.name,
         args: PaymentCompletionWaitingRouteArgs(
           key: key,
           paymentId: paymentId,
           storeId: storeId,
           onFailedPayment: onFailedPayment,
           onPayment: onPayment,
         ),
         initialChildren: children,
       );

  static const String name = 'PaymentCompletionWaitingRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PaymentCompletionWaitingRouteArgs>();
      return _i86.WrappedRoute(
        child: _i49.PaymentCompletionWaitingScreen(
          key: args.key,
          paymentId: args.paymentId,
          storeId: args.storeId,
          onFailedPayment: args.onFailedPayment,
          onPayment: args.onPayment,
        ),
      );
    },
  );
}

class PaymentCompletionWaitingRouteArgs {
  const PaymentCompletionWaitingRouteArgs({
    this.key,
    required this.paymentId,
    required this.storeId,
    required this.onFailedPayment,
    this.onPayment,
  });

  final _i87.Key? key;

  final String paymentId;

  final String storeId;

  final _i87.VoidCallback? onFailedPayment;

  final _i87.VoidCallback? onPayment;

  @override
  String toString() {
    return 'PaymentCompletionWaitingRouteArgs{key: $key, paymentId: $paymentId, storeId: $storeId, onFailedPayment: $onFailedPayment, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PaymentCompletionWaitingRouteArgs) return false;
    return key == other.key &&
        paymentId == other.paymentId &&
        storeId == other.storeId &&
        onFailedPayment == other.onFailedPayment &&
        onPayment == other.onPayment;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      paymentId.hashCode ^
      storeId.hashCode ^
      onFailedPayment.hashCode ^
      onPayment.hashCode;
}

/// generated route for
/// [_i50.PhoneInputScreen]
class PhoneInputRoute extends _i86.PageRouteInfo<PhoneInputRouteArgs> {
  PhoneInputRoute({
    _i91.Key? key,
    bool canSkipAuth = true,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         PhoneInputRoute.name,
         args: PhoneInputRouteArgs(key: key, canSkipAuth: canSkipAuth),
         initialChildren: children,
       );

  static const String name = 'PhoneInputRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PhoneInputRouteArgs>(
        orElse: () => const PhoneInputRouteArgs(),
      );
      return _i50.PhoneInputScreen(
        key: args.key,
        canSkipAuth: args.canSkipAuth,
      );
    },
  );
}

class PhoneInputRouteArgs {
  const PhoneInputRouteArgs({this.key, this.canSkipAuth = true});

  final _i91.Key? key;

  final bool canSkipAuth;

  @override
  String toString() {
    return 'PhoneInputRouteArgs{key: $key, canSkipAuth: $canSkipAuth}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PhoneInputRouteArgs) return false;
    return key == other.key && canSkipAuth == other.canSkipAuth;
  }

  @override
  int get hashCode => key.hashCode ^ canSkipAuth.hashCode;
}

/// generated route for
/// [_i51.PointListModalScreen]
class PointListModalRoute extends _i86.PageRouteInfo<PointListModalRouteArgs> {
  PointListModalRoute({
    _i87.Key? key,
    List<_i88.Store>? stores,
    bool autofocusOnSearch = false,
    _i87.Widget? title,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         PointListModalRoute.name,
         args: PointListModalRouteArgs(
           key: key,
           stores: stores,
           autofocusOnSearch: autofocusOnSearch,
           title: title,
         ),
         initialChildren: children,
       );

  static const String name = 'PointListModalRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PointListModalRouteArgs>(
        orElse: () => const PointListModalRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i51.PointListModalScreen(
          key: args.key,
          stores: args.stores,
          autofocusOnSearch: args.autofocusOnSearch,
          title: args.title,
        ),
      );
    },
  );
}

class PointListModalRouteArgs {
  const PointListModalRouteArgs({
    this.key,
    this.stores,
    this.autofocusOnSearch = false,
    this.title,
  });

  final _i87.Key? key;

  final List<_i88.Store>? stores;

  final bool autofocusOnSearch;

  final _i87.Widget? title;

  @override
  String toString() {
    return 'PointListModalRouteArgs{key: $key, stores: $stores, autofocusOnSearch: $autofocusOnSearch, title: $title}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PointListModalRouteArgs) return false;
    return key == other.key &&
        const _i98.ListEquality<_i88.Store>().equals(stores, other.stores) &&
        autofocusOnSearch == other.autofocusOnSearch &&
        title == other.title;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      const _i98.ListEquality<_i88.Store>().hash(stores) ^
      autofocusOnSearch.hashCode ^
      title.hashCode;
}

/// generated route for
/// [_i52.PointListScreen]
class PointListRoute extends _i86.PageRouteInfo<PointListRouteArgs> {
  PointListRoute({
    _i91.Key? key,
    List<_i88.Store>? stores,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         PointListRoute.name,
         args: PointListRouteArgs(key: key, stores: stores),
         initialChildren: children,
       );

  static const String name = 'PointListRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<PointListRouteArgs>(
        orElse: () => const PointListRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i52.PointListScreen(key: args.key, stores: args.stores),
      );
    },
  );
}

class PointListRouteArgs {
  const PointListRouteArgs({this.key, this.stores});

  final _i91.Key? key;

  final List<_i88.Store>? stores;

  @override
  String toString() {
    return 'PointListRouteArgs{key: $key, stores: $stores}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PointListRouteArgs) return false;
    return key == other.key &&
        const _i98.ListEquality<_i88.Store>().equals(stores, other.stores);
  }

  @override
  int get hashCode =>
      key.hashCode ^ const _i98.ListEquality<_i88.Store>().hash(stores);
}

/// generated route for
/// [_i53.ProductMapScreen]
class ProductMapRoute extends _i86.PageRouteInfo<ProductMapRouteArgs> {
  ProductMapRoute({
    _i87.Key? key,
    required _i90.Product product,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ProductMapRoute.name,
         args: ProductMapRouteArgs(key: key, product: product),
         initialChildren: children,
       );

  static const String name = 'ProductMapRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ProductMapRouteArgs>();
      return _i86.WrappedRoute(
        child: _i53.ProductMapScreen(key: args.key, product: args.product),
      );
    },
  );
}

class ProductMapRouteArgs {
  const ProductMapRouteArgs({this.key, required this.product});

  final _i87.Key? key;

  final _i90.Product product;

  @override
  String toString() {
    return 'ProductMapRouteArgs{key: $key, product: $product}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductMapRouteArgs) return false;
    return key == other.key && product == other.product;
  }

  @override
  int get hashCode => key.hashCode ^ product.hashCode;
}

/// generated route for
/// [_i54.ProductScreen]
class ProductRoute extends _i86.PageRouteInfo<ProductRouteArgs> {
  ProductRoute({
    _i87.Key? key,
    required String productId,
    required String assortmentFile,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ProductRoute.name,
         args: ProductRouteArgs(
           key: key,
           productId: productId,
           assortmentFile: assortmentFile,
         ),
         rawPathParams: {
           'productId': productId,
           'assortmentFile': assortmentFile,
         },
         initialChildren: children,
       );

  static const String name = 'ProductRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductRouteArgs>(
        orElse: () => ProductRouteArgs(
          productId: pathParams.getString('productId'),
          assortmentFile: pathParams.getString('assortmentFile'),
        ),
      );
      return _i86.WrappedRoute(
        child: _i54.ProductScreen(
          key: args.key,
          productId: args.productId,
          assortmentFile: args.assortmentFile,
        ),
      );
    },
  );
}

class ProductRouteArgs {
  const ProductRouteArgs({
    this.key,
    required this.productId,
    required this.assortmentFile,
  });

  final _i87.Key? key;

  final String productId;

  final String assortmentFile;

  @override
  String toString() {
    return 'ProductRouteArgs{key: $key, productId: $productId, assortmentFile: $assortmentFile}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductRouteArgs) return false;
    return key == other.key &&
        productId == other.productId &&
        assortmentFile == other.assortmentFile;
  }

  @override
  int get hashCode =>
      key.hashCode ^ productId.hashCode ^ assortmentFile.hashCode;
}

/// generated route for
/// [_i55.ProductWithMapScreen]
class ProductWithMapRoute extends _i86.PageRouteInfo<ProductWithMapRouteArgs> {
  ProductWithMapRoute({
    _i87.Key? key,
    required String productId,
    required String assortmentFile,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ProductWithMapRoute.name,
         args: ProductWithMapRouteArgs(
           key: key,
           productId: productId,
           assortmentFile: assortmentFile,
         ),
         rawPathParams: {
           'productId': productId,
           'assortmentFile': assortmentFile,
         },
         initialChildren: children,
       );

  static const String name = 'ProductWithMapRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<ProductWithMapRouteArgs>(
        orElse: () => ProductWithMapRouteArgs(
          productId: pathParams.getString('productId'),
          assortmentFile: pathParams.getString('assortmentFile'),
        ),
      );
      return _i86.WrappedRoute(
        child: _i55.ProductWithMapScreen(
          key: args.key,
          productId: args.productId,
          assortmentFile: args.assortmentFile,
        ),
      );
    },
  );
}

class ProductWithMapRouteArgs {
  const ProductWithMapRouteArgs({
    this.key,
    required this.productId,
    required this.assortmentFile,
  });

  final _i87.Key? key;

  final String productId;

  final String assortmentFile;

  @override
  String toString() {
    return 'ProductWithMapRouteArgs{key: $key, productId: $productId, assortmentFile: $assortmentFile}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ProductWithMapRouteArgs) return false;
    return key == other.key &&
        productId == other.productId &&
        assortmentFile == other.assortmentFile;
  }

  @override
  int get hashCode =>
      key.hashCode ^ productId.hashCode ^ assortmentFile.hashCode;
}

/// generated route for
/// [_i56.ProductsScreen]
class ProductsRoute extends _i86.PageRouteInfo<void> {
  const ProductsRoute({List<_i86.PageRouteInfo>? children})
    : super(ProductsRoute.name, initialChildren: children);

  static const String name = 'ProductsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i56.ProductsScreen());
    },
  );
}

/// generated route for
/// [_i57.ProfileScreen]
class ProfileRoute extends _i86.PageRouteInfo<void> {
  const ProfileRoute({List<_i86.PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i57.ProfileScreen();
    },
  );
}

/// generated route for
/// [_i58.PromotionScreen]
class PromotionRoute extends _i86.PageRouteInfo<PromotionRouteArgs> {
  PromotionRoute({
    _i87.Key? key,
    required String promotionId,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         PromotionRoute.name,
         args: PromotionRouteArgs(key: key, promotionId: promotionId),
         rawPathParams: {'promotionId': promotionId},
         initialChildren: children,
       );

  static const String name = 'PromotionRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final pathParams = data.inheritedPathParams;
      final args = data.argsAs<PromotionRouteArgs>(
        orElse: () => PromotionRouteArgs(
          promotionId: pathParams.getString('promotionId'),
        ),
      );
      return _i86.WrappedRoute(
        child: _i58.PromotionScreen(
          key: args.key,
          promotionId: args.promotionId,
        ),
      );
    },
  );
}

class PromotionRouteArgs {
  const PromotionRouteArgs({this.key, required this.promotionId});

  final _i87.Key? key;

  final String promotionId;

  @override
  String toString() {
    return 'PromotionRouteArgs{key: $key, promotionId: $promotionId}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! PromotionRouteArgs) return false;
    return key == other.key && promotionId == other.promotionId;
  }

  @override
  int get hashCode => key.hashCode ^ promotionId.hashCode;
}

/// generated route for
/// [_i59.PromotionsScreen]
class PromotionsRoute extends _i86.PageRouteInfo<void> {
  const PromotionsRoute({List<_i86.PageRouteInfo>? children})
    : super(PromotionsRoute.name, initialChildren: children);

  static const String name = 'PromotionsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i59.PromotionsScreen());
    },
  );
}

/// generated route for
/// [_i60.QrReportProblemPopup]
class QrReportProblemPopup
    extends _i86.PageRouteInfo<QrReportProblemPopupArgs> {
  QrReportProblemPopup({
    _i87.Key? key,
    String? error,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         QrReportProblemPopup.name,
         args: QrReportProblemPopupArgs(key: key, error: error),
         initialChildren: children,
       );

  static const String name = 'QrReportProblemPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QrReportProblemPopupArgs>(
        orElse: () => const QrReportProblemPopupArgs(),
      );
      return _i86.WrappedRoute(
        child: _i60.QrReportProblemPopup(key: args.key, error: args.error),
      );
    },
  );
}

class QrReportProblemPopupArgs {
  const QrReportProblemPopupArgs({this.key, this.error});

  final _i87.Key? key;

  final String? error;

  @override
  String toString() {
    return 'QrReportProblemPopupArgs{key: $key, error: $error}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QrReportProblemPopupArgs) return false;
    return key == other.key && error == other.error;
  }

  @override
  int get hashCode => key.hashCode ^ error.hashCode;
}

/// generated route for
/// [_i61.QrScanScreen]
class QrScanRoute extends _i86.PageRouteInfo<QrScanRouteArgs> {
  QrScanRoute({
    _i87.Key? key,
    bool shouldSkipUnfinishedPurchaseGuard = false,
    bool isCoffee = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         QrScanRoute.name,
         args: QrScanRouteArgs(
           key: key,
           shouldSkipUnfinishedPurchaseGuard: shouldSkipUnfinishedPurchaseGuard,
           isCoffee: isCoffee,
         ),
         initialChildren: children,
       );

  static const String name = 'QrScanRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<QrScanRouteArgs>(
        orElse: () => const QrScanRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i61.QrScanScreen(
          key: args.key,
          shouldSkipUnfinishedPurchaseGuard:
              args.shouldSkipUnfinishedPurchaseGuard,
          isCoffee: args.isCoffee,
        ),
      );
    },
  );
}

class QrScanRouteArgs {
  const QrScanRouteArgs({
    this.key,
    this.shouldSkipUnfinishedPurchaseGuard = false,
    this.isCoffee = false,
  });

  final _i87.Key? key;

  final bool shouldSkipUnfinishedPurchaseGuard;

  final bool isCoffee;

  @override
  String toString() {
    return 'QrScanRouteArgs{key: $key, shouldSkipUnfinishedPurchaseGuard: $shouldSkipUnfinishedPurchaseGuard, isCoffee: $isCoffee}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! QrScanRouteArgs) return false;
    return key == other.key &&
        shouldSkipUnfinishedPurchaseGuard ==
            other.shouldSkipUnfinishedPurchaseGuard &&
        isCoffee == other.isCoffee;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      shouldSkipUnfinishedPurchaseGuard.hashCode ^
      isCoffee.hashCode;
}

/// generated route for
/// [_i62.RafflesScreen]
class RafflesRoute extends _i86.PageRouteInfo<void> {
  const RafflesRoute({List<_i86.PageRouteInfo>? children})
    : super(RafflesRoute.name, initialChildren: children);

  static const String name = 'RafflesRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i62.RafflesScreen();
    },
  );
}

/// generated route for
/// [_i63.ReportProblemPopup]
class ReportProblemPopup extends _i86.PageRouteInfo<void> {
  const ReportProblemPopup({List<_i86.PageRouteInfo>? children})
    : super(ReportProblemPopup.name, initialChildren: children);

  static const String name = 'ReportProblemPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i63.ReportProblemPopup());
    },
  );
}

/// generated route for
/// [_i64.ReportProblemScreen]
class ReportProblemRoute extends _i86.PageRouteInfo<void> {
  const ReportProblemRoute({List<_i86.PageRouteInfo>? children})
    : super(ReportProblemRoute.name, initialChildren: children);

  static const String name = 'ReportProblemRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i64.ReportProblemScreen());
    },
  );
}

/// generated route for
/// [_i65.ReviewDetailsScreen]
class ReviewDetailsRoute extends _i86.PageRouteInfo<ReviewDetailsRouteArgs> {
  ReviewDetailsRoute({
    _i87.Key? key,
    required _i99.UserReview review,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ReviewDetailsRoute.name,
         args: ReviewDetailsRouteArgs(key: key, review: review),
         initialChildren: children,
       );

  static const String name = 'ReviewDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ReviewDetailsRouteArgs>();
      return _i65.ReviewDetailsScreen(key: args.key, review: args.review);
    },
  );
}

class ReviewDetailsRouteArgs {
  const ReviewDetailsRouteArgs({this.key, required this.review});

  final _i87.Key? key;

  final _i99.UserReview review;

  @override
  String toString() {
    return 'ReviewDetailsRouteArgs{key: $key, review: $review}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ReviewDetailsRouteArgs) return false;
    return key == other.key && review == other.review;
  }

  @override
  int get hashCode => key.hashCode ^ review.hashCode;
}

/// generated route for
/// [_i66.ScanCartScreen]
class ScanCartRoute extends _i86.PageRouteInfo<ScanCartRouteArgs> {
  ScanCartRoute({
    _i87.Key? key,
    _i88.Store? store,
    String? fridgeId,
    bool restoreCart = false,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ScanCartRoute.name,
         args: ScanCartRouteArgs(
           key: key,
           store: store,
           fridgeId: fridgeId,
           restoreCart: restoreCart,
         ),
         initialChildren: children,
       );

  static const String name = 'ScanCartRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ScanCartRouteArgs>(
        orElse: () => const ScanCartRouteArgs(),
      );
      return _i66.ScanCartScreen(
        key: args.key,
        store: args.store,
        fridgeId: args.fridgeId,
        restoreCart: args.restoreCart,
      );
    },
  );
}

class ScanCartRouteArgs {
  const ScanCartRouteArgs({
    this.key,
    this.store,
    this.fridgeId,
    this.restoreCart = false,
  });

  final _i87.Key? key;

  final _i88.Store? store;

  final String? fridgeId;

  final bool restoreCart;

  @override
  String toString() {
    return 'ScanCartRouteArgs{key: $key, store: $store, fridgeId: $fridgeId, restoreCart: $restoreCart}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ScanCartRouteArgs) return false;
    return key == other.key &&
        store == other.store &&
        fridgeId == other.fridgeId &&
        restoreCart == other.restoreCart;
  }

  @override
  int get hashCode =>
      key.hashCode ^ store.hashCode ^ fridgeId.hashCode ^ restoreCart.hashCode;
}

/// generated route for
/// [_i67.ScanFridgeScreen]
class ScanFridgeRoute extends _i86.PageRouteInfo<void> {
  const ScanFridgeRoute({List<_i86.PageRouteInfo>? children})
    : super(ScanFridgeRoute.name, initialChildren: children);

  static const String name = 'ScanFridgeRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i67.ScanFridgeScreen();
    },
  );
}

/// generated route for
/// [_i68.ScanProductScreen]
class ScanProductRoute extends _i86.PageRouteInfo<ScanProductRouteArgs> {
  ScanProductRoute({
    _i87.Key? key,
    required _i87.VoidCallback onPressedNext,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         ScanProductRoute.name,
         args: ScanProductRouteArgs(key: key, onPressedNext: onPressedNext),
         initialChildren: children,
       );

  static const String name = 'ScanProductRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<ScanProductRouteArgs>();
      return _i68.ScanProductScreen(
        key: args.key,
        onPressedNext: args.onPressedNext,
      );
    },
  );
}

class ScanProductRouteArgs {
  const ScanProductRouteArgs({this.key, required this.onPressedNext});

  final _i87.Key? key;

  final _i87.VoidCallback onPressedNext;

  @override
  String toString() {
    return 'ScanProductRouteArgs{key: $key, onPressedNext: $onPressedNext}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! ScanProductRouteArgs) return false;
    return key == other.key && onPressedNext == other.onPressedNext;
  }

  @override
  int get hashCode => key.hashCode ^ onPressedNext.hashCode;
}

/// generated route for
/// [_i69.ScanToStartScreen]
class ScanToStartRoute extends _i86.PageRouteInfo<void> {
  const ScanToStartRoute({List<_i86.PageRouteInfo>? children})
    : super(ScanToStartRoute.name, initialChildren: children);

  static const String name = 'ScanToStartRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i69.ScanToStartScreen();
    },
  );
}

/// generated route for
/// [_i70.SearchScreen]
class SearchRoute extends _i86.PageRouteInfo<void> {
  const SearchRoute({List<_i86.PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i70.SearchScreen());
    },
  );
}

/// generated route for
/// [_i71.SendFeedBackPopup]
class SendFeedBackPopup extends _i86.PageRouteInfo<SendFeedBackPopupArgs> {
  SendFeedBackPopup({
    _i87.Key? key,
    _i87.VoidCallback? onPayment,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         SendFeedBackPopup.name,
         args: SendFeedBackPopupArgs(key: key, onPayment: onPayment),
         initialChildren: children,
       );

  static const String name = 'SendFeedBackPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SendFeedBackPopupArgs>(
        orElse: () => const SendFeedBackPopupArgs(),
      );
      return _i86.WrappedRoute(
        child: _i71.SendFeedBackPopup(key: args.key, onPayment: args.onPayment),
      );
    },
  );
}

class SendFeedBackPopupArgs {
  const SendFeedBackPopupArgs({this.key, this.onPayment});

  final _i87.Key? key;

  final _i87.VoidCallback? onPayment;

  @override
  String toString() {
    return 'SendFeedBackPopupArgs{key: $key, onPayment: $onPayment}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SendFeedBackPopupArgs) return false;
    return key == other.key && onPayment == other.onPayment;
  }

  @override
  int get hashCode => key.hashCode ^ onPayment.hashCode;
}

/// generated route for
/// [_i72.SplashErrorScreen]
class SplashErrorRoute extends _i86.PageRouteInfo<void> {
  const SplashErrorRoute({List<_i86.PageRouteInfo>? children})
    : super(SplashErrorRoute.name, initialChildren: children);

  static const String name = 'SplashErrorRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i72.SplashErrorScreen();
    },
  );
}

/// generated route for
/// [_i73.SplashLoadingScreen]
class SplashLoadingRoute extends _i86.PageRouteInfo<void> {
  const SplashLoadingRoute({List<_i86.PageRouteInfo>? children})
    : super(SplashLoadingRoute.name, initialChildren: children);

  static const String name = 'SplashLoadingRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i73.SplashLoadingScreen();
    },
  );
}

/// generated route for
/// [_i74.SplashScreen]
class SplashRoute extends _i86.PageRouteInfo<SplashRouteArgs> {
  SplashRoute({
    _i87.Key? key,
    void Function(String?)? onLoad,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         SplashRoute.name,
         args: SplashRouteArgs(key: key, onLoad: onLoad),
         initialChildren: children,
       );

  static const String name = 'SplashRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SplashRouteArgs>(
        orElse: () => const SplashRouteArgs(),
      );
      return _i86.WrappedRoute(
        child: _i74.SplashScreen(key: args.key, onLoad: args.onLoad),
      );
    },
  );
}

class SplashRouteArgs {
  const SplashRouteArgs({this.key, this.onLoad});

  final _i87.Key? key;

  final void Function(String?)? onLoad;

  @override
  String toString() {
    return 'SplashRouteArgs{key: $key, onLoad: $onLoad}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SplashRouteArgs) return false;
    return key == other.key;
  }

  @override
  int get hashCode => key.hashCode;
}

/// generated route for
/// [_i75.SplashUpdateScreen]
class SplashUpdateRoute extends _i86.PageRouteInfo<void> {
  const SplashUpdateRoute({List<_i86.PageRouteInfo>? children})
    : super(SplashUpdateRoute.name, initialChildren: children);

  static const String name = 'SplashUpdateRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i75.SplashUpdateScreen();
    },
  );
}

/// generated route for
/// [_i76.StartScreen]
class StartRoute extends _i86.PageRouteInfo<StartRouteArgs> {
  StartRoute({
    _i87.Key? key,
    bool canSkipAuth = true,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         StartRoute.name,
         args: StartRouteArgs(key: key, canSkipAuth: canSkipAuth),
         initialChildren: children,
       );

  static const String name = 'StartRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StartRouteArgs>(
        orElse: () => const StartRouteArgs(),
      );
      return _i76.StartScreen(key: args.key, canSkipAuth: args.canSkipAuth);
    },
  );
}

class StartRouteArgs {
  const StartRouteArgs({this.key, this.canSkipAuth = true});

  final _i87.Key? key;

  final bool canSkipAuth;

  @override
  String toString() {
    return 'StartRouteArgs{key: $key, canSkipAuth: $canSkipAuth}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StartRouteArgs) return false;
    return key == other.key && canSkipAuth == other.canSkipAuth;
  }

  @override
  int get hashCode => key.hashCode ^ canSkipAuth.hashCode;
}

/// generated route for
/// [_i77.StoreInfoScreen]
class StoreInfoRoute extends _i86.PageRouteInfo<StoreInfoRouteArgs> {
  StoreInfoRoute({
    _i87.Key? key,
    required _i88.Store store,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         StoreInfoRoute.name,
         args: StoreInfoRouteArgs(key: key, store: store),
         initialChildren: children,
       );

  static const String name = 'StoreInfoRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoreInfoRouteArgs>();
      return _i86.WrappedRoute(
        child: _i77.StoreInfoScreen(key: args.key, store: args.store),
      );
    },
  );
}

class StoreInfoRouteArgs {
  const StoreInfoRouteArgs({this.key, required this.store});

  final _i87.Key? key;

  final _i88.Store store;

  @override
  String toString() {
    return 'StoreInfoRouteArgs{key: $key, store: $store}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StoreInfoRouteArgs) return false;
    return key == other.key && store == other.store;
  }

  @override
  int get hashCode => key.hashCode ^ store.hashCode;
}

/// generated route for
/// [_i78.StoreMapScreen]
class StoreMapRoute extends _i86.PageRouteInfo<void> {
  const StoreMapRoute({List<_i86.PageRouteInfo>? children})
    : super(StoreMapRoute.name, initialChildren: children);

  static const String name = 'StoreMapRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return const _i78.StoreMapScreen();
    },
  );
}

/// generated route for
/// [_i79.StoryScreen]
class StoryRoute extends _i86.PageRouteInfo<StoryRouteArgs> {
  StoryRoute({
    _i87.Key? key,
    required int index,
    required List<_i100.PromotionShortInfo> stories,
    _i79.StoryShownCallback? onStoryShown,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         StoryRoute.name,
         args: StoryRouteArgs(
           key: key,
           index: index,
           stories: stories,
           onStoryShown: onStoryShown,
         ),
         initialChildren: children,
       );

  static const String name = 'StoryRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<StoryRouteArgs>();
      return _i79.StoryScreen(
        key: args.key,
        index: args.index,
        stories: args.stories,
        onStoryShown: args.onStoryShown,
      );
    },
  );
}

class StoryRouteArgs {
  const StoryRouteArgs({
    this.key,
    required this.index,
    required this.stories,
    this.onStoryShown,
  });

  final _i87.Key? key;

  final int index;

  final List<_i100.PromotionShortInfo> stories;

  final _i79.StoryShownCallback? onStoryShown;

  @override
  String toString() {
    return 'StoryRouteArgs{key: $key, index: $index, stories: $stories, onStoryShown: $onStoryShown}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! StoryRouteArgs) return false;
    return key == other.key &&
        index == other.index &&
        const _i98.ListEquality<_i100.PromotionShortInfo>().equals(
          stories,
          other.stories,
        ) &&
        onStoryShown == other.onStoryShown;
  }

  @override
  int get hashCode =>
      key.hashCode ^
      index.hashCode ^
      const _i98.ListEquality<_i100.PromotionShortInfo>().hash(stories) ^
      onStoryShown.hashCode;
}

/// generated route for
/// [_i80.SuccessOrderScreen]
class SuccessOrderRoute extends _i86.PageRouteInfo<SuccessOrderRouteArgs> {
  SuccessOrderRoute({
    _i87.Key? key,
    required bool isCoffee,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         SuccessOrderRoute.name,
         args: SuccessOrderRouteArgs(key: key, isCoffee: isCoffee),
         initialChildren: children,
       );

  static const String name = 'SuccessOrderRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<SuccessOrderRouteArgs>();
      return _i80.SuccessOrderScreen(key: args.key, isCoffee: args.isCoffee);
    },
  );
}

class SuccessOrderRouteArgs {
  const SuccessOrderRouteArgs({this.key, required this.isCoffee});

  final _i87.Key? key;

  final bool isCoffee;

  @override
  String toString() {
    return 'SuccessOrderRouteArgs{key: $key, isCoffee: $isCoffee}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! SuccessOrderRouteArgs) return false;
    return key == other.key && isCoffee == other.isCoffee;
  }

  @override
  int get hashCode => key.hashCode ^ isCoffee.hashCode;
}

/// generated route for
/// [_i81.UnpaidOrderDetailsScreen]
class UnpaidOrderDetailsRoute extends _i86.PageRouteInfo<void> {
  const UnpaidOrderDetailsRoute({List<_i86.PageRouteInfo>? children})
    : super(UnpaidOrderDetailsRoute.name, initialChildren: children);

  static const String name = 'UnpaidOrderDetailsRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i81.UnpaidOrderDetailsScreen());
    },
  );
}

/// generated route for
/// [_i82.UserBannedPopup]
class UserBannedPopup extends _i86.PageRouteInfo<void> {
  const UserBannedPopup({List<_i86.PageRouteInfo>? children})
    : super(UserBannedPopup.name, initialChildren: children);

  static const String name = 'UserBannedPopup';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i82.UserBannedPopup());
    },
  );
}

/// generated route for
/// [_i83.UserDataScreen]
class UserDataRoute extends _i86.PageRouteInfo<void> {
  const UserDataRoute({List<_i86.PageRouteInfo>? children})
    : super(UserDataRoute.name, initialChildren: children);

  static const String name = 'UserDataRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i83.UserDataScreen());
    },
  );
}

/// generated route for
/// [_i84.UserProfileScreen]
class UserProfileRoute extends _i86.PageRouteInfo<void> {
  const UserProfileRoute({List<_i86.PageRouteInfo>? children})
    : super(UserProfileRoute.name, initialChildren: children);

  static const String name = 'UserProfileRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      return _i86.WrappedRoute(child: const _i84.UserProfileScreen());
    },
  );
}

/// generated route for
/// [_i85.WebViewPaymentScreen]
class WebViewPaymentRoute extends _i86.PageRouteInfo<WebViewPaymentRouteArgs> {
  WebViewPaymentRoute({
    _i93.Key? key,
    required String url,
    _i101.InAppWebViewSettings? webViewSettings,
    List<_i86.PageRouteInfo>? children,
  }) : super(
         WebViewPaymentRoute.name,
         args: WebViewPaymentRouteArgs(
           key: key,
           url: url,
           webViewSettings: webViewSettings,
         ),
         initialChildren: children,
       );

  static const String name = 'WebViewPaymentRoute';

  static _i86.PageInfo page = _i86.PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<WebViewPaymentRouteArgs>();
      return _i86.WrappedRoute(
        child: _i85.WebViewPaymentScreen(
          key: args.key,
          url: args.url,
          webViewSettings: args.webViewSettings,
        ),
      );
    },
  );
}

class WebViewPaymentRouteArgs {
  const WebViewPaymentRouteArgs({
    this.key,
    required this.url,
    this.webViewSettings,
  });

  final _i93.Key? key;

  final String url;

  final _i101.InAppWebViewSettings? webViewSettings;

  @override
  String toString() {
    return 'WebViewPaymentRouteArgs{key: $key, url: $url, webViewSettings: $webViewSettings}';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
    if (other is! WebViewPaymentRouteArgs) return false;
    return key == other.key &&
        url == other.url &&
        webViewSettings == other.webViewSettings;
  }

  @override
  int get hashCode => key.hashCode ^ url.hashCode ^ webViewSettings.hashCode;
}
