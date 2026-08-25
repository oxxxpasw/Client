// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format width=80

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:ui' as _i264;

import 'package:auto_route/auto_route.dart' as _i790;
import 'package:dio/dio.dart' as _i361;
import 'package:dio_cache_interceptor/dio_cache_interceptor.dart' as _i695;
import 'package:flutter/cupertino.dart' as _i719;
import 'package:flutter/material.dart' as _i409;
import 'package:get_it/get_it.dart' as _i174;
import 'package:gs1_barcode_parser/gs1_barcode_parser.dart' as _i697;
import 'package:injectable/injectable.dart' as _i526;
import 'package:isar_community/isar.dart' as _i214;
import 'package:shared_preferences/shared_preferences.dart' as _i460;

import '../data/http/dio_client_creator.dart' as _i14;
import '../data/http/dio_client_module.dart' as _i253;
import '../data/mappers/assortment_mapper.dart' as _i17;
import '../data/mappers/barcode_template_mapper.dart' as _i132;
import '../data/mappers/cart_mapper.dart' as _i763;
import '../data/mappers/customer_account_mapper.dart' as _i198;
import '../data/mappers/order_mapper.dart' as _i478;
import '../data/mappers/payment_mapper.dart' as _i317;
import '../data/mappers/review_mapper.dart' as _i304;
import '../data/mappers/sbp_mapper.dart' as _i1007;
import '../data/mappers/user_data_model_mapper.dart' as _i281;
import '../data/models/stores/stores.dart' as _i427;
import '../data/modules/remote_config_module.dart' as _i490;
import '../data/repository/assortment_repository.dart' as _i216;
import '../data/repository/auth_repository.dart' as _i79;
import '../data/repository/barcode_parser_repository/barcode_parser_repository.dart'
    as _i882;
import '../data/repository/barcode_repository.dart' as _i955;
import '../data/repository/cart_repository/cart_repository.dart' as _i791;
import '../data/repository/city_respository.dart' as _i282;
import '../data/repository/customer_account_repository.dart' as _i87;
import '../data/repository/customer_purchase_repository.dart' as _i546;
import '../data/repository/fridge_repository.dart' as _i329;
import '../data/repository/geocoder_repository.dart' as _i870;
import '../data/repository/location_repository.dart' as _i615;
import '../data/repository/order_repository.dart' as _i335;
import '../data/repository/payment_repository.dart' as _i391;
import '../data/repository/remote_config_repository.dart' as _i44;
import '../data/repository/review_repository.dart' as _i52;
import '../data/repository/sbp_repository.dart' as _i907;
import '../data/repository/token_repository.dart' as _i429;
import '../data/repository/unpaid_orders_repository.dart' as _i267;
import '../data/repository/update_repository.dart' as _i867;
import '../data/services/analyst_service.dart' as _i730;
import '../data/services/apple_pay_service.dart' as _i950;
import '../data/services/assortment_service.dart' as _i531;
import '../data/services/auth_service.dart' as _i1024;
import '../data/services/cart_service.dart' as _i996;
import '../data/services/customer_api/customer_api_service.dart' as _i636;
import '../data/services/fridge_service.dart' as _i735;
import '../data/services/geocoder_service.dart' as _i450;
import '../data/services/input_phone_service.dart' as _i209;
import '../data/services/network_file_service.dart' as _i1041;
import '../data/services/order_service.dart' as _i102;
import '../data/services/payment_service.dart' as _i1013;
import '../data/services/remote_config_service.dart' as _i874;
import '../data/services/sbp_payment_service.dart' as _i325;
import '../data/services/static_files_service.dart' as _i299;
import '../data/services/token_service.dart' as _i428;
import '../domain/bloc/about_us_bloc/about_us_bloc.dart' as _i297;
import '../domain/bloc/about_us_item_bloc/about_us_item_bloc.dart' as _i69;
import '../domain/bloc/auth_bloc/auth_bloc.dart' as _i375;
import '../domain/bloc/bonus_account_info_cubit/bonus_account_info_cubit.dart'
    as _i286;
import '../domain/bloc/bonus_balance_bloc/bonus_balance_bloc.dart' as _i199;
import '../domain/bloc/bonus_program_info_bloc/bonus_program_info_bloc.dart'
    as _i944;
import '../domain/bloc/cart_bloc/cart_bloc.dart' as _i589;
import '../domain/bloc/cart_count_bloc/cart_count_bloc.dart' as _i15;
import '../domain/bloc/cart_search_bloc/cart_search_bloc.dart' as _i857;
import '../domain/bloc/choose_payment_type_bloc/choose_payment_type_bloc.dart'
    as _i1003;
import '../domain/bloc/city_list_bloc/city_list_bloc.dart' as _i641;
import '../domain/bloc/create_order_bloc/create_order_bloc.dart' as _i80;
import '../domain/bloc/current_city_bloc/current_city_bloc.dart' as _i770;
import '../domain/bloc/drink_list_cubit/drink_list_cubit.dart' as _i53;
import '../domain/bloc/edit_product_bloc/edit_product_bloc.dart' as _i1072;
import '../domain/bloc/feedback_cubit/feedback_cubit.dart' as _i663;
import '../domain/bloc/feedback_order_hostory_bloc/feedback_order_hostory_bloc.dart'
    as _i638;
import '../domain/bloc/feedback_tab_cubit/feedback_tab_cubit.dart' as _i855;
import '../domain/bloc/fridge_qr_scanner_bloc/fridge_qr_scanner_bloc.dart'
    as _i952;
import '../domain/bloc/home_promotion_bloc/home_promotion_bloc.dart' as _i143;
import '../domain/bloc/last_purchase_bloc/last_purchase_bloc.dart' as _i1004;
import '../domain/bloc/map_bloc/map_bloc.dart' as _i623;
import '../domain/bloc/onboarding_bloc/onboarding_bloc.dart' as _i110;
import '../domain/bloc/order_bloc/order_bloc.dart' as _i1046;
import '../domain/bloc/order_coupon_cubit/order_coupon_cubit.dart' as _i757;
import '../domain/bloc/order_details_bloc/order_details_bloc.dart' as _i65;
import '../domain/bloc/order_hostory_bloc/order_history_bloc.dart' as _i9;
import '../domain/bloc/payment_completion_waiting_bloc/payment_completion_waiting_bloc.dart'
    as _i1002;
import '../domain/bloc/point_list_bloc/point_list_bloc.dart' as _i439;
import '../domain/bloc/product_details_bloc/product_details_bloc.dart' as _i579;
import '../domain/bloc/product_map_bloc/product_map_bloc.dart' as _i640;
import '../domain/bloc/products_bloc/products_bloc.dart' as _i348;
import '../domain/bloc/promotion_details_bloc/promotion_details_bloc.dart'
    as _i1022;
import '../domain/bloc/promotions_bloc/promotions_bloc.dart' as _i8;
import '../domain/bloc/report_problem_bloc/report_problem_bloc.dart' as _i1049;
import '../domain/bloc/review_bloc/review_bloc.dart' as _i1036;
import '../domain/bloc/reviews_cubit/reviews_cubit.dart' as _i516;
import '../domain/bloc/sbp_payment_bloc/sbp_payment_bloc.dart' as _i400;
import '../domain/bloc/search_bloc/search_bloc.dart' as _i311;
import '../domain/bloc/search_value_bloc/search_value_bloc.dart' as _i190;
import '../domain/bloc/send_feedback_bloc/send_feedback_bloc.dart' as _i826;
import '../domain/bloc/splash_bloc/splash_bloc.dart' as _i170;
import '../domain/bloc/splash_bloc/store_navigator.dart' as _i668;
import '../domain/bloc/store_details/store_details_cubit.dart' as _i866;
import '../domain/bloc/story_bloc/story_bloc.dart' as _i633;
import '../domain/bloc/unpaid_order_details_bloc/unpaid_order_details_bloc.dart'
    as _i114;
import '../domain/bloc/user_data_bloc/user_data_bloc.dart' as _i518;
import '../domain/bloc/user_profile_bloc/user_profile_bloc.dart' as _i653;
import '../domain/bloc/web_view_payment_bloc/web_view_payment_bloc.dart'
    as _i545;
import '../domain/interactor/order_history_interactor.dart' as _i390;
import '../domain/interactor/order_interactor.dart' as _i46;
import '../domain/interactor/startup_interactor.dart' as _i1066;
import '../domain/models/order/accepted_order/accepted_order.dart' as _i748;
import '../domain/models/payment/payment.dart' as _i704;
import '../domain/models/product/product.dart' as _i519;
import '../utils/dio_error_handler/dio_error_handler.dart' as _i678;
import 'app_environment.dart' as _i710;
import 'app_module.dart' as _i461;
import 'router/analyst_router_observer.dart' as _i360;
import 'router/app_router.dart' as _i722;
import 'router/current_route_to_stream_observer.dart' as _i959;
import 'router/guards/auth_guard.dart' as _i239;
import 'router/guards/city_guard.dart' as _i887;
import 'router/guards/has_unfinished_purchase_guard.dart' as _i1009;
import 'router/guards/has_unpaid_order_guard.dart' as _i265;
import 'router/guards/init_guard.dart' as _i924;
import 'router/router_module.dart' as _i1029;
import 'theme/models/colors/app_colors.dart' as _i642;
import 'theme/theme.dart' as _i679;

const String _releaseEnv = 'releaseEnv';
const String _debugEnv = 'debugEnv';
const String _testEnv = 'testEnv';

// initializes the registration of main-scope dependencies inside of GetIt
Future<_i174.GetIt> $initGetIt(
  _i174.GetIt getIt, {
  String? environment,
  _i526.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i526.GetItHelper(getIt, environment, environmentFilter);
  final routerModule = _$RouterModule();
  final appModule = _$AppModule();
  final dioClientModule = _$DioClientModule();
  final mainTheme = _$MainTheme();
  final remoteConfigModule = _$RemoteConfigModule();
  gh.factory<_i360.AnalyticsRouteObserver>(
    () => routerModule.routerLoggingObserver(),
  );
  gh.factory<_i959.CurrentRouteToStreamObserver>(
    () => routerModule.currentRouteToStreamObserver(),
  );
  gh.factory<_i790.AutoRouteObserver>(() => routerModule.routeObserver());
  gh.singleton<_i132.BarcodeTemplateMapper>(
    () => _i132.BarcodeTemplateMapper(),
  );
  gh.singleton<_i763.CartMapper>(() => _i763.CartMapper());
  gh.singleton<_i763.ProductMergerLocal>(() => _i763.ProductMergerLocal());
  gh.singleton<_i198.CustomerAccountModelMapper>(
    () => const _i198.CustomerAccountModelMapper(),
  );
  gh.singleton<_i317.PaymentMapper>(() => _i317.PaymentMapper());
  gh.singleton<_i304.ReviewMapper>(() => const _i304.ReviewMapper());
  gh.singleton<_i1007.SbpMapper>(() => _i1007.SbpMapper());
  gh.singleton<_i281.UserDataModelMapper>(() => _i281.UserDataModelMapper());
  await gh.singletonAsync<_i460.SharedPreferences>(
    () => appModule.prefs,
    preResolve: true,
  );
  await gh.singletonAsync<_i214.Isar>(
    () => appModule.isar,
    preResolve: true,
    dispose: _i461.disposeIsar,
  );
  gh.lazySingleton<_i697.GS1BarcodeParser>(() => appModule.gs1BarcodeParser);
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioFridgeApiErrorHandler(),
    instanceName: 'fridgeApiClient',
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioGeocoderErrorHandler(),
    instanceName: 'geocoderClient',
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioPaymentErrorHandler(),
    instanceName: 'paymentServiceClient',
  );
  gh.lazySingleton<_i955.BarcodeRepository>(
    () => _i955.BarcodeRepositoryImpl(
      gs1BarcodeParser: gh<_i697.GS1BarcodeParser>(),
    ),
  );
  gh.singleton<_i950.ApplePayService>(() => _i950.ApplePayServiceImpl());
  gh.singleton<_i14.DioClientCreator>(
    () => dioClientModule.dioClientCreator(gh<_i710.AppEnvironment>()),
    registerFor: {_releaseEnv, _debugEnv},
  );
  gh.singleton<_i615.LocationRepository>(() => _i615.LocationRepositoryImpl());
  gh.factoryParam<
    _i719.CupertinoThemeData,
    _i642.AppColors?,
    _i264.Brightness?
  >(
    (appColors, brightness) => mainTheme.cupertinoThemeData(
      appColors: appColors,
      brightness: brightness,
    ),
  );
  gh.singleton<_i14.DioClientCreator>(
    () => dioClientModule.dioTestClientCreator(gh<_i710.AppEnvironment>()),
    registerFor: {_testEnv},
  );
  gh.factoryParam<
    _i190.SearchValueBloc<_i427.Country>,
    List<_i427.Country>,
    dynamic
  >((items, _) => _i190.SearchCountryBloc(items));
  gh.factoryParam<_i190.SearchValueBloc<_i427.City>, List<_i427.City>, dynamic>(
    (items, _) => _i190.SearchCityBloc(items),
  );
  gh.factoryParam<_i409.ThemeData, _i642.AppColors?, _i264.Brightness?>(
    (colors, brightness) =>
        mainTheme.themeData(colors: colors, brightness: brightness),
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioFileDownloaderErrorHandler(),
    instanceName: 'networkFileDownloaderClient',
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioOrderErrorHandler(),
    instanceName: 'orderServiceClient',
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioSbpClientHandler(),
    instanceName: 'sbpClient',
  );
  gh.factory<_i545.WebViewPaymentBloc>(
    () => _i545.WebViewPaymentBloc(appEnvironment: gh<_i710.AppEnvironment>()),
  );
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeDioCustomerApiClient(gh<_i14.DioClientCreator>()),
    instanceName: 'customerApiClient',
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioStaticFilesErrorHandler(),
    instanceName: 'staticFilesClient',
    registerFor: {_testEnv, _releaseEnv, _debugEnv},
  );
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeDioPaymentClient(gh<_i14.DioClientCreator>()),
    instanceName: 'paymentServiceClient',
  );
  gh.singleton<_i209.InputPhoneService>(
    () => _i209.InputPhoneServicePhoneNumberParsedImpl(),
    registerFor: {_releaseEnv, _debugEnv},
  );
  gh.singleton<_i1013.PaymentService>(
    () => _i1013.PaymentServiceImpl(
      dio: gh<_i361.Dio>(instanceName: 'paymentServiceClient'),
      errorHandler: gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'paymentServiceClient',
      ),
      appEnvironment: gh<_i710.AppEnvironment>(),
    ),
  );
  gh.singleton<_i695.CacheOptions>(
    () => dioClientModule.makeStaticFilesCacheOptions(
      gh<_i14.DioClientCreator>(),
    ),
    instanceName: 'staticFilesClient',
  );
  gh.singleton<_i730.AnalystService>(
    () => _i730.AnalystServiceTestImpl(),
    registerFor: {_testEnv},
  );
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeDioAuthServiceClient(gh<_i14.DioClientCreator>()),
    instanceName: 'authServiceClient',
  );
  gh.singleton<_i209.InputPhoneService>(
    () => _i209.InputPhoneServiceTestImpl(),
    registerFor: {_testEnv},
  );
  gh.singleton<_i478.OrderModelMapper>(
    () => _i478.OrderModelMapper(
      gh<_i281.UserDataModelMapper>(),
      gh<_i710.AppEnvironment>(),
    ),
  );
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeDioFridgeApiClient(gh<_i14.DioClientCreator>()),
    instanceName: 'fridgeApiClient',
  );
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeDioGeocoderClient(gh<_i14.DioClientCreator>()),
    instanceName: 'geocoderClient',
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioCustomerApiClientTestHandler(),
    instanceName: 'customerApiClient',
    registerFor: {_testEnv},
  );
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeDioSbpClient(gh<_i14.DioClientCreator>()),
    instanceName: 'sbpClient',
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioCustomerApiClientHandler(),
    instanceName: 'customerApiClient',
    registerFor: {_releaseEnv, _debugEnv},
  );
  gh.lazySingleton<_i361.Dio>(
    () => dioClientModule.makeDioFileDownloaderClient(
      gh<_i14.DioClientCreator>(),
    ),
    instanceName: 'networkFileDownloaderClient',
  );
  gh.factoryParam<
    _i663.FeedbackCubit,
    _i663.FeedbackType,
    _i748.AcceptedOrder?
  >((type, purchase) => _i663.FeedbackCubit(type, purchase));
  await gh.singletonAsync<_i996.CartService>(() {
    final i = _i996.CartServiceImpl(isar: gh<_i214.Isar>());
    return i.init().then((_) => i);
  }, preResolve: true);
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeDioOrderClient(gh<_i14.DioClientCreator>()),
    instanceName: 'orderServiceClient',
  );
  gh.factory<_i110.OnboardingBloc>(
    () => _i110.OnboardingBloc(prefers: gh<_i460.SharedPreferences>()),
  );
  gh.singleton<_i428.TokenService>(
    () => _i428.TokenServiceTestImpl(),
    registerFor: {_testEnv},
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioJsonRpcErrorHandler(),
    instanceName: 'authServiceClient',
    registerFor: {_releaseEnv, _debugEnv},
  );
  gh.lazySingleton<_i678.DioErrorHandler<_i678.DefaultApiError>>(
    () => dioClientModule.makeDioJsonRpcErrorTestHandler(),
    instanceName: 'authServiceClient',
    registerFor: {_testEnv},
  );
  await gh.singletonAsync<_i428.TokenService>(
    () => _i428.TokenServiceImpl.init(),
    registerFor: {_releaseEnv, _debugEnv},
    preResolve: true,
  );
  await gh.singletonAsync<_i730.AnalystService>(
    () => _i730.AnalystServiceImpl.create(
      gh<_i710.AppEnvironment>(),
      gh<_i478.OrderModelMapper>(),
    ),
    registerFor: {_releaseEnv, _debugEnv},
    preResolve: true,
  );
  gh.singleton<_i735.FridgeService>(
    () => _i735.FridgeServiceImpl(
      dio: gh<_i361.Dio>(instanceName: 'fridgeApiClient'),
      handler: gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'fridgeApiClient',
      ),
    ),
  );
  gh.singleton<_i429.TokenRepository>(
    () => _i429.TokenRepository(tokenService: gh<_i428.TokenService>()),
  );
  gh.lazySingleton<_i1041.NetworkFileService>(
    () => _i1041.NetworkFileServiceImpl(
      dio: gh<_i361.Dio>(instanceName: 'networkFileDownloaderClient'),
      errorHandler: gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'networkFileDownloaderClient',
      ),
    ),
  );
  gh.singleton<_i636.CustomerApiService>(
    () => _i636.CustomerApiServiceImpl(
      gh<_i361.Dio>(instanceName: 'customerApiClient'),
      gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'customerApiClient',
      ),
    ),
  );
  gh.singleton<_i329.FridgeRepository>(
    () => _i329.FridgeRepositoryImpl(fridgeService: gh<_i735.FridgeService>()),
  );
  gh.singleton<_i361.Dio>(
    () => dioClientModule.makeStaticFilesClientClient(
      gh<_i14.DioClientCreator>(),
      gh<_i695.CacheOptions>(instanceName: 'staticFilesClient'),
    ),
    instanceName: 'staticFilesClient',
  );
  gh.singleton<_i450.GeocoderService>(
    () => _i450.GeocoderServiceImpl(
      dio: gh<_i361.Dio>(instanceName: 'geocoderClient'),
      dioErrorHandler: gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'geocoderClient',
      ),
      appEnvironment: gh<_i710.AppEnvironment>(),
    ),
  );
  gh.singleton<_i102.OrderService>(
    () => _i102.OrderServiceImpl(
      gh<_i361.Dio>(instanceName: 'orderServiceClient'),
      gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'orderServiceClient',
      ),
      gh<_i710.AppEnvironment>(),
    ),
  );
  gh.singleton<_i1024.AuthService>(
    () => _i1024.AuthServiceImpl(
      gh<_i361.Dio>(instanceName: 'authServiceClient'),
      gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'authServiceClient',
      ),
      gh<_i710.AppEnvironment>(),
    ),
  );
  gh.singleton<_i874.RemoteConfigService>(
    () => remoteConfigModule.remoteConfigTestService(
      gh<_i361.Dio>(instanceName: 'staticFilesClient'),
      gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'staticFilesClient',
      ),
    ),
    registerFor: {_testEnv},
  );
  gh.singleton<_i874.RemoteConfigService>(
    () => remoteConfigModule.remoteConfigService(
      gh<_i361.Dio>(instanceName: 'staticFilesClient'),
      gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'staticFilesClient',
      ),
    ),
    registerFor: {_releaseEnv, _debugEnv},
  );
  gh.singleton<_i870.GeocoderRepository>(
    () => _i870.GeocoderRepositoryImpl(
      geocoderService: gh<_i450.GeocoderService>(),
    ),
  );
  gh.singleton<_i79.AuthRepository>(
    () => _i79.AuthRepository(
      authService: gh<_i1024.AuthService>(),
      inputPhoneService: gh<_i209.InputPhoneService>(),
      tokenService: gh<_i428.TokenService>(),
      userDataMapper: gh<_i281.UserDataModelMapper>(),
      analystService: gh<_i730.AnalystService>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.singleton<_i267.UnpaidOrdersRepository>(
    () => _i267.UnpaidOrdersRepositoryImpl(
      mapper: gh<_i478.OrderModelMapper>(),
      orderService: gh<_i102.OrderService>(),
      authRepository: gh<_i79.AuthRepository>(),
      analystService: gh<_i730.AnalystService>(),
    ),
  );
  gh.singleton<_i325.SbpPaymentService>(
    () => _i325.SbpPaymentServiceImpl(
      gh<_i361.Dio>(instanceName: 'sbpClient'),
      gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'sbpClient',
      ),
    ),
  );
  gh.singleton<_i335.OrderRepository>(
    () => _i335.OrderRepositoryImpl(
      orderService: gh<_i102.OrderService>(),
      orderModelMapper: gh<_i478.OrderModelMapper>(),
      analystService: gh<_i730.AnalystService>(),
    ),
  );
  gh.singleton<_i531.AssortmentService>(
    () => _i531.AssortmentServiceImpl(
      dio: gh<_i361.Dio>(instanceName: 'staticFilesClient'),
      errorHandler: gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'staticFilesClient',
      ),
    ),
  );
  gh.singleton<_i391.PaymentRepository>(
    () => _i391.PaymentRepositoryImpl(
      paymentService: gh<_i1013.PaymentService>(),
      paymentMapper: gh<_i317.PaymentMapper>(),
      authRepository: gh<_i79.AuthRepository>(),
      applePayService: gh<_i950.ApplePayService>(),
    ),
  );
  gh.singleton<_i299.StaticFilesService>(
    () => _i299.StaticFilesServiceImpl(
      gh<_i361.Dio>(instanceName: 'staticFilesClient'),
      gh<_i678.DioErrorHandler<_i678.DefaultApiError>>(
        instanceName: 'staticFilesClient',
      ),
      gh<_i695.CacheOptions>(instanceName: 'staticFilesClient'),
    ),
  );
  gh.singleton<_i265.HasUnpaidOrderGuard>(
    () => routerModule.hasUnpaidOrderGuard(gh<_i267.UnpaidOrdersRepository>()),
  );
  gh.singleton<_i87.CustomerAccountRepository>(
    () => _i87.CustomerAccountRepositoryImpl(
      customerApiService: gh<_i636.CustomerApiService>(),
      customerAccountMapper: gh<_i198.CustomerAccountModelMapper>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
    ),
  );
  gh.factory<_i199.BonusBalanceBloc>(
    () => _i199.BonusBalanceBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
      analystService: gh<_i730.AnalystService>(),
    ),
  );
  gh.factory<_i1022.PromotionDetailsBloc>(
    () => _i1022.PromotionDetailsBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
      analystService: gh<_i730.AnalystService>(),
    ),
  );
  gh.factory<_i944.BonusProgramInfoBloc>(
    () => _i944.BonusProgramInfoBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
    ),
  );
  gh.factory<_i143.HomePromotionBloc>(
    () => _i143.HomePromotionBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
    ),
  );
  gh.factory<_i757.OrderCouponCubit>(
    () => _i757.OrderCouponCubit(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
    ),
  );
  gh.factory<_i8.PromotionsBloc>(
    () => _i8.PromotionsBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
    ),
  );
  gh.singleton<_i52.ReviewRepository>(
    () => _i52.ReviewRepositoryImpl(
      customerApiService: gh<_i636.CustomerApiService>(),
      reviewMapper: gh<_i304.ReviewMapper>(),
      authRepository: gh<_i79.AuthRepository>(),
    ),
  );
  await gh.singletonAsync<_i44.RemoteConfigRepository>(
    () => _i44.RemoteConfigRepositoryImpl.init(gh<_i874.RemoteConfigService>()),
    preResolve: true,
    dispose: (i) => i.dispose(),
  );
  gh.factoryParam<_i1003.ChoosePaymentTypeBloc, String, dynamic>(
    (storeId, _) => _i1003.ChoosePaymentTypeBloc(
      paymentRepository: gh<_i391.PaymentRepository>(),
      storeId: storeId,
    ),
  );
  gh.factory<_i633.StoryBloc>(
    () => _i633.StoryBloc(
      analystService: gh<_i730.AnalystService>(),
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
    ),
  );
  gh.factoryParam<_i1002.PaymentCompletionWaitingBloc, _i704.Payment, dynamic>(
    (payment, _) => _i1002.PaymentCompletionWaitingBloc(
      paymentRepository: gh<_i391.PaymentRepository>(),
      payment: payment,
    ),
  );
  gh.factoryParam<_i516.ReviewsCubit, String?, dynamic>(
    (storeId, _) => _i516.ReviewsCubit(
      reviewRepository: gh<_i52.ReviewRepository>(),
      storeId: storeId,
    ),
  );
  gh.singleton<_i239.AuthGuard>(
    () => routerModule.authGuard(
      gh<_i79.AuthRepository>(),
      gh<_i460.SharedPreferences>(),
    ),
  );
  gh.singleton<_i907.SbpRepository>(
    () => _i907.SbpRepositoryImpl(
      sbpPaymentService: gh<_i325.SbpPaymentService>(),
      sbpMapper: gh<_i1007.SbpMapper>(),
    ),
  );
  gh.factory<_i855.FeedbackTabCubit>(
    () => _i855.FeedbackTabCubit(authRepository: gh<_i79.AuthRepository>()),
  );
  gh.factory<_i518.UserDataBloc>(
    () => _i518.UserDataBloc(authRepository: gh<_i79.AuthRepository>()),
  );
  gh.factoryParam<_i80.CreateOrderBloc, bool, dynamic>(
    (isCoffee, _) => _i80.CreateOrderBloc(
      isCoffee: isCoffee,
      paymentRepository: gh<_i391.PaymentRepository>(),
      authRepository: gh<_i79.AuthRepository>(),
    ),
  );
  gh.singleton<_i282.CityRepository>(
    () => _i282.CityRepositoryImpl(
      sharedPreferences: gh<_i460.SharedPreferences>(),
      staticFilesService: gh<_i299.StaticFilesService>(),
      geocoderService: gh<_i450.GeocoderService>(),
    ),
  );
  gh.factory<_i770.CurrentCityBloc>(
    () => _i770.CurrentCityBloc(cityRepository: gh<_i282.CityRepository>()),
  );
  gh.factoryParam<_i640.ProductMapBloc, _i519.Product, dynamic>(
    (product, _) => _i640.ProductMapBloc(
      cityRepository: gh<_i282.CityRepository>(),
      geocoderRepository: gh<_i870.GeocoderRepository>(),
      locationHelper: gh<_i615.LocationRepository>(),
      product: product,
    ),
  );
  gh.singleton<_i867.UpdateRepository>(
    () => _i867.UpdateRepository(
      staticFilesService: gh<_i299.StaticFilesService>(),
    ),
  );
  gh.factory<_i1036.ReviewBloc>(
    () => _i1036.ReviewBloc(reviewRepository: gh<_i52.ReviewRepository>()),
  );
  gh.singleton<_i882.BarcodeParserRepository>(
    () => _i882.BarcodeParserRepositoryImpl(
      staticFilesService: gh<_i299.StaticFilesService>(),
      barcodeTemplateMapper: gh<_i132.BarcodeTemplateMapper>(),
      analystService: gh<_i730.AnalystService>(),
    ),
  );
  gh.factoryParam<_i866.StoreDetailsCubit, _i427.Store, dynamic>(
    (store, _) => _i866.StoreDetailsCubit(
      customerRepository: gh<_i87.CustomerAccountRepository>(),
      store: store,
    ),
  );
  gh.singleton<_i546.CustomerApiPurchaseRepository>(
    () => _i546.CustomerApiPurchaseRepository(
      customerApiService: gh<_i636.CustomerApiService>(),
      authRepository: gh<_i79.AuthRepository>(),
      bonusCardRepository: gh<_i87.CustomerAccountRepository>(),
      orderModelMapper: gh<_i478.OrderModelMapper>(),
      cartMapper: gh<_i763.CartMapper>(),
    ),
  );
  gh.factoryParam<_i286.BonusAccountInfoCubit, String, dynamic>(
    (programId, _) => _i286.BonusAccountInfoCubit(
      customerRepository: gh<_i87.CustomerAccountRepository>(),
      programId: programId,
    ),
  );
  gh.singleton<_i17.AssortmentMapper>(
    () => _i17.AssortmentMapper(
      appEnvironment: gh<_i710.AppEnvironment>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
    ),
  );
  gh.factoryParam<_i400.SBPPaymentBloc, Uri, String>(
    (qrUrl, paymentId) => _i400.SBPPaymentBloc(
      sbpRepository: gh<_i907.SbpRepository>(),
      paymentRepository: gh<_i391.PaymentRepository>(),
      qrUrl: qrUrl,
      paymentId: paymentId,
    ),
  );
  gh.singleton<_i216.AssortmentRepository>(
    () => _i216.ProductsRepositoryImpl(
      productService: gh<_i531.AssortmentService>(),
      assortmentMapper: gh<_i17.AssortmentMapper>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
    ),
  );
  gh.factory<_i653.UserProfileBloc>(
    () => _i653.UserProfileBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
      authRepository: gh<_i79.AuthRepository>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
      cityRepository: gh<_i282.CityRepository>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
    ),
  );
  gh.factory<_i439.PointListBloc>(
    () => _i439.PointListBloc(
      locationHelper: gh<_i615.LocationRepository>(),
      cityRepository: gh<_i282.CityRepository>(),
    ),
  );
  gh.factory<_i1049.ReportProblemBloc>(
    () => _i1049.ReportProblemBloc(
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
    ),
  );
  gh.factory<_i826.SendFeedbackBloc>(
    () => _i826.SendFeedbackBloc(
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
    ),
  );
  gh.factory<_i348.HomeProductsBloc>(
    () => _i348.HomeProductsBloc(
      assortmentRepository: gh<_i216.AssortmentRepository>(),
      cityRepository: gh<_i282.CityRepository>(),
    ),
  );
  gh.singleton<_i887.CityGuard>(
    () => routerModule.cityGuard(
      gh<_i282.CityRepository>(),
      gh<_i460.SharedPreferences>(),
    ),
  );
  gh.factory<_i375.AuthBloc>(
    () => _i375.AuthBloc(
      authRepository: gh<_i79.AuthRepository>(),
      analystService: gh<_i730.AnalystService>(),
      authGuard: gh<_i239.AuthGuard>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
    ),
  );
  gh.singleton<_i763.ProductMergerDB>(
    () => _i763.ProductMergerDB(
      barcodeRepository: gh<_i882.BarcodeParserRepository>(),
    ),
  );
  gh.singleton<_i791.CartRepositoryCoffeeImpl>(
    () => _i791.CartRepositoryCoffeeImpl(
      assortmentService: gh<_i531.AssortmentService>(),
      cartMapper: gh<_i763.CartMapper>(),
      assortmentMapper: gh<_i17.AssortmentMapper>(),
      customerApiService: gh<_i636.CustomerApiService>(),
      cartService: gh<_i996.CartService>(),
      productMergerLocal: gh<_i763.ProductMergerLocal>(),
      productMergerDB: gh<_i763.ProductMergerDB>(),
      cityRepository: gh<_i282.CityRepository>(),
      analystService: gh<_i730.AnalystService>(),
      authRepository: gh<_i79.AuthRepository>(),
    ),
  );
  gh.factory<_i668.StoreNavigator>(
    () => _i668.StoreNavigator.getNavigator(gh<_i867.UpdateRepository>()),
  );
  gh.singleton<_i791.CartRepository>(
    () => _i791.CartRepositoryImpl(
      assortmentService: gh<_i531.AssortmentService>(),
      cartMapper: gh<_i763.CartMapper>(),
      assortmentMapper: gh<_i17.AssortmentMapper>(),
      customerApiService: gh<_i636.CustomerApiService>(),
      cartService: gh<_i996.CartService>(),
      productMergerLocal: gh<_i763.ProductMergerLocal>(),
      productMergerDB: gh<_i763.ProductMergerDB>(),
      cityRepository: gh<_i282.CityRepository>(),
      analystService: gh<_i730.AnalystService>(),
      authRepository: gh<_i79.AuthRepository>(),
    ),
  );
  gh.factory<_i623.MapBloc>(
    () => _i623.MapBloc(
      cityRepository: gh<_i282.CityRepository>(),
      geocoderRepository: gh<_i870.GeocoderRepository>(),
      locationHelper: gh<_i615.LocationRepository>(),
    ),
  );
  gh.factory<_i1072.EditProductBloc>(
    () => _i1072.EditProductBloc(
      productsRepository: gh<_i216.AssortmentRepository>(),
      cartRepository: gh<_i791.CartRepository>(),
    ),
  );
  gh.factory<_i641.CityListBloc>(
    () => _i641.CityListBloc(
      cityRepository: gh<_i282.CityRepository>(),
      geocoderRepository: gh<_i870.GeocoderRepository>(),
      cityGuard: gh<_i887.CityGuard>(),
      locationHelper: gh<_i615.LocationRepository>(),
    ),
  );
  gh.factoryParam<_i857.CartSearchBloc, _i427.Store, dynamic>(
    (store, _) => _i857.CartSearchBloc(
      productsRepository: gh<_i216.AssortmentRepository>(),
      cityRepository: gh<_i282.CityRepository>(),
      store: store,
    ),
  );
  gh.factoryParam<_i1004.LastPurchaseBloc, bool, dynamic>(
    (shouldShowFeedbackBanner, _) => _i1004.LastPurchaseBloc(
      cartRepository: gh<_i791.CartRepository>(),
      unpaidOrdersRepository: gh<_i267.UnpaidOrdersRepository>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
      shouldShowFeedbackBanner: shouldShowFeedbackBanner,
    ),
  );
  gh.factoryParam<_i579.ProductDetailsBloc, String?, dynamic>(
    (assortmentFile, _) => _i579.ProductDetailsBloc(
      productsRepository: gh<_i216.AssortmentRepository>(),
      cartRepository: gh<_i791.CartRepository>(),
      assortmentFile: assortmentFile,
    ),
  );
  gh.singleton<_i1066.StartupInteractor>(
    () => _i1066.StartupInteractorImpl(
      authRepository: gh<_i79.AuthRepository>(),
      authGuard: gh<_i239.AuthGuard>(),
      cartRepository: gh<_i791.CartRepository>(),
      productsRepository: gh<_i216.AssortmentRepository>(),
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
      cityRepository: gh<_i282.CityRepository>(),
      fridgeRepository: gh<_i329.FridgeRepository>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
      analystService: gh<_i730.AnalystService>(),
      currentRouteToStreamObserver: gh<_i959.CurrentRouteToStreamObserver>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
      unpaidOrdersRepository: gh<_i267.UnpaidOrdersRepository>(),
      barcodeParserRepository: gh<_i882.BarcodeParserRepository>(),
      hasUnpaidOrderGuard: gh<_i265.HasUnpaidOrderGuard>(),
    ),
    dispose: (i) => i.dispose(),
  );
  gh.factory<_i46.OrderInteractorCoffeeImpl>(
    () => _i46.OrderInteractorCoffeeImpl(
      authRepository: gh<_i79.AuthRepository>(),
      orderRepository: gh<_i335.OrderRepository>(),
      inputPhoneService: gh<_i209.InputPhoneService>(),
      cartRepository: gh<_i791.CartRepositoryCoffeeImpl>(),
      paymentRepository: gh<_i391.PaymentRepository>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
      customerApiRepository: gh<_i546.CustomerApiPurchaseRepository>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
    ),
  );
  gh.factory<_i589.CoffeeCartBloc>(
    () => _i589.CoffeeCartBloc(
      cartRepository: gh<_i791.CartRepositoryCoffeeImpl>(),
      assortmentRepository: gh<_i216.AssortmentRepository>(),
      barcodeRepository: gh<_i955.BarcodeRepository>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
      orderInteractor: gh<_i46.OrderInteractorCoffeeImpl>(),
      paymentRepository: gh<_i391.PaymentRepository>(),
      analystService: gh<_i730.AnalystService>(),
      cityRepository: gh<_i282.CityRepository>(),
      prefs: gh<_i460.SharedPreferences>(),
      unpaidOrdersRepository: gh<_i267.UnpaidOrdersRepository>(),
      barcodeParserRepository: gh<_i882.BarcodeParserRepository>(),
      fridgeRepository: gh<_i329.FridgeRepository>(),
    ),
  );
  gh.factory<_i311.SearchBloc>(
    () =>
        _i311.SearchBloc(productsRepository: gh<_i216.AssortmentRepository>()),
  );
  gh.factoryParam<_i952.FridgeQrScannerBloc, bool?, dynamic>(
    (shouldOpenFridge, _) => _i952.FridgeQrScannerBloc(
      fridgeRepository: gh<_i329.FridgeRepository>(),
      cityRepository: gh<_i282.CityRepository>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
      prefs: gh<_i460.SharedPreferences>(),
      cartRepository: gh<_i791.CartRepository>(),
      shouldOpenFridge: shouldOpenFridge,
    ),
  );
  gh.singleton<_i924.InitGuard>(
    () => routerModule.initGuard(gh<_i1066.StartupInteractor>()),
  );
  gh.factoryParam<_i53.DrinkListCubit, String, dynamic>(
    (storeFile, _) => _i53.DrinkListCubit(
      assortmentRepository: gh<_i216.AssortmentRepository>(),
      storeFile: storeFile,
    ),
  );
  gh.factoryParam<_i348.StoreProductsBloc, String, dynamic>(
    (storeFile, _) => _i348.StoreProductsBloc(
      assortmentRepository: gh<_i216.AssortmentRepository>(),
      storeFile: storeFile,
    ),
  );
  gh.singleton<_i1009.HasUnfinishedPurchaseGuard>(
    () => routerModule.hasUnfinishedPurchaseGuard(gh<_i791.CartRepository>()),
  );
  gh.factory<_i15.CartCountBloc>(
    () => _i15.CartCountBloc(cartRepository: gh<_i791.CartRepository>()),
  );
  gh.singleton<_i46.OrderInteractor>(
    () => _i46.OrderInteractorImpl(
      authRepository: gh<_i79.AuthRepository>(),
      orderRepository: gh<_i335.OrderRepository>(),
      inputPhoneService: gh<_i209.InputPhoneService>(),
      cartRepository: gh<_i791.CartRepository>(),
      paymentRepository: gh<_i391.PaymentRepository>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
      customerApiRepository: gh<_i546.CustomerApiPurchaseRepository>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
    ),
  );
  gh.singleton<_i390.OrderHistoryInteractor>(
    () => _i390.OrderInteractorImpl(
      authRepository: gh<_i79.AuthRepository>(),
      orderRepository: gh<_i335.OrderRepository>(),
      cartRepository: gh<_i791.CartRepository>(),
      paymentRepository: gh<_i391.PaymentRepository>(),
      assortmentRepository: gh<_i216.AssortmentRepository>(),
      cityRepository: gh<_i282.CityRepository>(),
      unpaidOrdersRepository: gh<_i267.UnpaidOrdersRepository>(),
    ),
  );
  gh.singleton<_i722.AppRouter>(
    () => routerModule.appRouter(
      gh<_i239.AuthGuard>(),
      gh<_i924.InitGuard>(),
      gh<_i887.CityGuard>(),
      gh<_i265.HasUnpaidOrderGuard>(),
      gh<_i1009.HasUnfinishedPurchaseGuard>(),
    ),
  );
  gh.factory<_i170.SplashBloc>(
    () => _i170.SplashBloc(
      updateRepository: gh<_i867.UpdateRepository>(),
      startupInteractor: gh<_i1066.StartupInteractor>(),
      appEnvironment: gh<_i710.AppEnvironment>(),
      analystService: gh<_i730.AnalystService>(),
      storeNavigator: gh<_i668.StoreNavigator>(),
    ),
  );
  gh.factoryParam<_i65.OrderDetailsBloc, String, dynamic>(
    (orderId, _) => _i65.OrderDetailsBloc(
      orderHistoryInteractor: gh<_i390.OrderHistoryInteractor>(),
      networkFileService: gh<_i1041.NetworkFileService>(),
      orderId: orderId,
    ),
  );
  gh.factoryParam<_i1046.OrderBloc, _i427.Store?, dynamic>(
    (store, _) => _i1046.OrderBloc(
      orderInteractor: gh<_i46.OrderInteractor>(),
      store: store,
    ),
  );
  gh.factory<_i589.CartBloc>(
    () => _i589.CartBloc(
      cartRepository: gh<_i791.CartRepository>(),
      assortmentRepository: gh<_i216.AssortmentRepository>(),
      barcodeRepository: gh<_i955.BarcodeRepository>(),
      remoteConfigRepository: gh<_i44.RemoteConfigRepository>(),
      orderInteractor: gh<_i46.OrderInteractor>(),
      paymentRepository: gh<_i391.PaymentRepository>(),
      analystService: gh<_i730.AnalystService>(),
      cityRepository: gh<_i282.CityRepository>(),
      prefs: gh<_i460.SharedPreferences>(),
      unpaidOrdersRepository: gh<_i267.UnpaidOrdersRepository>(),
      barcodeParserRepository: gh<_i882.BarcodeParserRepository>(),
      fridgeRepository: gh<_i329.FridgeRepository>(),
    ),
  );
  gh.factory<_i114.UnpaidOrderDetailsBloc>(
    () => _i114.UnpaidOrderDetailsBloc(
      orderHistoryInteractor: gh<_i390.OrderHistoryInteractor>(),
      prefs: gh<_i460.SharedPreferences>(),
    ),
  );
  gh.factory<_i638.FeedbackOrderHistoryBloc>(
    () => _i638.FeedbackOrderHistoryBloc(
      orderHistoryInteractor: gh<_i390.OrderHistoryInteractor>(),
    ),
  );
  gh.factoryParam<_i9.OrderHistoryBloc, bool?, dynamic>(
    (hideUnpaid, _) => _i9.OrderHistoryBloc(
      orderHistoryInteractor: gh<_i390.OrderHistoryInteractor>(),
      hideUnpaid: hideUnpaid,
    ),
  );
  gh.factory<_i297.AboutUsBloc>(
    () => _i297.AboutUsBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
      appRouter: gh<_i722.AppRouter>(),
    ),
  );
  gh.factory<_i69.AboutUsItemBloc>(
    () => _i69.AboutUsItemBloc(
      customerAccountRepository: gh<_i87.CustomerAccountRepository>(),
      appRouter: gh<_i722.AppRouter>(),
    ),
  );
  return getIt;
}

class _$RouterModule extends _i1029.RouterModule {}

class _$AppModule extends _i461.AppModule {}

class _$DioClientModule extends _i253.DioClientModule {}

class _$MainTheme extends _i679.MainTheme {}

class _$RemoteConfigModule extends _i490.RemoteConfigModule {}
