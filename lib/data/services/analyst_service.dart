import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'dart:isolate';

import 'package:async/async.dart';
import 'package:sosedifedi/data/mappers/order_mapper.dart';
import 'package:sosedifedi/data/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/domain/models/cart/cart_model.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/domain/models/product/product.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/presentation/runner.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/foundation.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:package_info_plus/package_info_plus.dart';

enum ProductSource {
  barcode,
  search,
}

class AnalystEvent {
  const AnalystEvent(
    this.name,
    this.data,
    this.date, {
    this.page,
    this.userId,
  });

  final String name;
  final dynamic data;
  final DateTime date;
  final String? page;
  final String? userId;

  Map<String, dynamic> toJson() {
    return {
      'date': date.toIso8601String(),
      'event': name,
      'data': data,
      'fromPage': page,
    };
  }

  @override
  String toString() {
    return '$date: $name, page: $page;\n${jsonEncode(data)}';
  }
}

abstract class AnalystService {
  ///создание события
  Future<void> addAction(String name, data, [String? page]);

  void appOpen({
    String? deeplink,
  });

  void auth({
    required String? phone,
    bool success = false,
    String? message,
  });

  ///создание события перехада на страницу
  void goToPage(String? pageName, String? previousPageName);

  ///создание события клика по кнопке
  void btnClick(String btnData, [String? page]);

  ///создание события клика по карточке товара
  void productClick(String? nomenclatureCode);

  ///создание события добавления товора в корзину
  void addToCart(Product product, [ProductSource? source]);

  ///создание события удоления товора из корзины
  Future<void> removeFromCart({
    String? nomenclatureCode,
    required List<CartItem> cartBefore,
    required List<CartItem> cartAfter,
    bool all = false,
  });

  ///создание события изменения товара в корзине
  Future<void> amountCartChange({
    String? nomenclatureCode,
    required List<CartItem> cartBefore,
    required List<CartItem> cartAfter,
    required num amountBefore,
    required num amountAfter,
  });

  void cartChange({
    required Cart? cartBefore,
    required Cart cartAfter,
  });

  ///создание события клика по категории
  void categoryClick(
    int? categoryId,
  );

  ///создание события создания заказа
  Future<void> createOrder(
    OrderModel order,
  );

  ///создание события просмотра списка заказов
  Future<void> orderList(
    List<AcceptedOrderResponse> orders,
  );

  ///создание события клика по акции
  void saleClick(
    String saleName,
  );

  ///создание события клика по акции
  void openLink(String url);

  ///создание ошибки
  void error(String message, [String? page]);

  void selectStore({required String storeId});

  void bonusCardChanged({required String? bonusCard});

  void selectGroup({required String groupId});

  void selectProduct({required String productId});

  void processPayment({required PaymentType? paymentType});

  void bannerClick({required PromotionShortInfo? promotion, String? screen});

  void qrScanned(String? data);

  void barcodeEntered(String? data);

  static Future<Map<String, dynamic>> deviceInfo() async {
    final deviceInfoPlugin = DeviceInfoPlugin();
    PackageInfo packageInfo = await PackageInfo.fromPlatform();
    String? os, id, manufacturer, model;
    if (Platform.isAndroid) {
      AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
      id = androidInfo.id;
      os =
          'Android ${androidInfo.version.release} (SDK ${androidInfo.version.sdkInt})';
      manufacturer = androidInfo.manufacturer;
      model = androidInfo.model;
    } else if (Platform.isIOS) {
      IosDeviceInfo isoInfo = await deviceInfoPlugin.iosInfo;
      id = isoInfo.identifierForVendor;
      os = '${isoInfo.systemName} ${isoInfo.systemVersion}';
      manufacturer = 'Apple';
      model = isoInfo.name;
    }
    return ({
      'x-package-name': packageInfo.packageName,
      'x-version': '${packageInfo.version}+${packageInfo.buildNumber}',
      'x-os': os,
      'x-device-id': id,
      'x-model': '$manufacturer $model',
    }).map(
      (key, value) => MapEntry(
        key,
        value?.replaceAll(RegExp(r'[^A-Za-z0-9().,;?\-+:!]'), ' '),
      ),
    );
  }

  void dispatch();
}

///Перед использованием вызвать метод [init()]
@releaseEnv
@debugEnv
@preResolve
@Singleton(as: AnalystService)
class AnalystServiceImpl extends AnalystService {
  @protected
  final OrderModelMapper orderModelMapper;
  @protected
  final ReceivePort receivePort;
  @protected
  final StreamQueue<dynamic> queue;
  @protected
  final SendPort sendPort;
  @protected
  User? _user;

  @factoryMethod
  static Future<AnalystService> create(
    AppEnvironment appEnvironment,
    OrderModelMapper orderModelMapper,
  ) async {
    final receivePort = ReceivePort();
    final deviceInfoValue = await AnalystService.deviceInfo();
    await Isolate.spawn(
      _sendEvents,
      (
        port: receivePort.sendPort,
        deviceInfo: deviceInfoValue,
        analystEndpoint: appEnvironment.analystEndpoint
      ),
    );

    final queue = StreamQueue<dynamic>(receivePort);
    final sendPort = await queue.next.timeout(
      const Duration(seconds: 3),
      onTimeout: () => receivePort.sendPort,
    );

    return AnalystServiceImpl._(receivePort, queue, sendPort, orderModelMapper);
  }

  AnalystServiceImpl._(
    this.receivePort,
    this.queue,
    this.sendPort,
    this.orderModelMapper,
  ) {
    _listenAuthStream();
  }

  _listenAuthStream() async {
    await Runner.injectableInitFuture;
    GetIt.I.get<AuthRepository>().tokenStream.listen((event) async {
      if (event == null) {
        _user = null;
      } else if (_user?.token != event.user.token) {
        _user = event.user;
      }
    });
  }

  @override
  Future<void> addAction(String name, data, [String? page]) async {
    try {
      return sendPort.send(AnalystEvent(
        name,
        data,
        DateTime.now(),
        page: page,
        userId: _user?.userId,
      ));
    } catch (_) {}
  }

  @override
  void auth({
    required String? phone,
    bool success = false,
    String? message,
  }) =>
      addAction('auth', {
        'phone': phone,
        'success': success,
        'message': message,
      });

  @override
  void goToPage(String? pageName, String? previousPageName) =>
      addAction('pageChanged', pageName, previousPageName);

  @override
  void btnClick(String btnData, [String? page]) =>
      addAction('click', btnData, page);

  @override
  void productClick(String? nomenclatureCode) => addAction('productClick', {
        'nomenclatureCode': nomenclatureCode,
      });

  @override
  void addToCart(Product product, [ProductSource? source]) => addAction(
        'addToCart',
        {
          'product': product.toJson(),
          'source': source?.name,
        },
      );

  @override
  Future<void> removeFromCart({
    String? nomenclatureCode,
    required List<CartItem> cartBefore,
    required List<CartItem> cartAfter,
    bool all = false,
  }) async {
    try {
      serialize(List<CartItem> orders) {
        return orders.map((e) => e.toJson()).toList();
      }

      final serializedCartBefore = await compute(serialize, cartBefore);
      final serializedCartAfter = await compute(serialize, cartAfter);

      await addAction('removeFromСart', {
        'nomenclatureCode': nomenclatureCode,
        'cartBefore': serializedCartBefore,
        'cartAfter': serializedCartAfter,
        'all': all,
      });
    } catch (e, stack) {
      error('$e\n$stack');
    }
  }

  @override
  Future<void> amountCartChange({
    String? nomenclatureCode,
    required List<CartItem> cartBefore,
    required List<CartItem> cartAfter,
    required num amountBefore,
    required num amountAfter,
  }) async {
    try {
      serialize(List<CartItem> orders) {
        return orders.map((e) => e.toJson()).toList();
      }

      final serializedCartBefore = await compute(serialize, cartBefore);
      final serializedCartAfter = await compute(serialize, cartAfter);

      await addAction('amountCartChange', {
        'nomenclatureCode': nomenclatureCode,
        'cartBefore': serializedCartBefore,
        'cartAfter': serializedCartAfter,
        'amountBefore': amountBefore,
        'amountAfter': amountAfter,
      });
    } catch (e, stack) {
      error('$e\n$stack');
    }
  }

  @override
  void categoryClick(
    int? categoryId,
  ) =>
      addAction('categoryClick', {
        'categoryId': categoryId,
      });

  @override
  Future<void> createOrder(
    OrderModel order,
  ) async {
    try {
      final orderResponse = orderModelMapper.mapToOrderResponse(order);
      await addAction('createOrder', {
        'createOrder': orderResponse.toJson(),
      });
    } catch (e, stack) {
      error('$e\n$stack');
    }
  }

  @override
  Future<void> orderList(
    List<AcceptedOrderResponse> orders,
  ) async {
    try {
      final serializedOrder =
          await compute((List<AcceptedOrderResponse> orders) {
        return orders.map((e) => e.toJson()).toList();
      }, orders);
      await addAction('orders', {
        'orders': serializedOrder,
      });
    } catch (e, stack) {
      error('$e\n$stack');
    }
  }

  @override
  void saleClick(
    String saleName,
  ) =>
      addAction('saleClick', {
        'saleName': saleName,
      });

  @override
  void openLink(String url) => addAction('openLink', {
        'url': url,
      });

  @override
  void error(String message, [String? page]) =>
      addAction('error', message, page);

  static Future<void> _sendEvents(
    ({
      SendPort port,
      Map<String, dynamic> deviceInfo,
      String analystEndpoint,
    }) initValues,
  ) async {
    final p = initValues.port;
    final deviceInfo = initValues.deviceInfo;
    final analystEndpoint = initValues.analystEndpoint;
    final commandPort = ReceivePort();
    p.send(commandPort.sendPort);
    List<AnalystEvent> events = [];
    final dio = Dio();

    Future<void> sendEvents() async {
      try {
        await dio.post(
          analystEndpoint,
          data: jsonEncode({
            'user_id': events.last.userId,
            'device_info': deviceInfo,
            'events': events.map((e) => e.toJson()).toList(),
          }),
        );
      } catch (e) {
        log(e.toString());
      }
      events.clear();
    }

    await for (final message in commandPort) {
      if (events.length > 2) {
        await sendEvents();
      }
      if (message is AnalystEvent) {
        events.add(message);
        log(message.toString());
      } else if (message == null) {
        await sendEvents();
        break;
      }
    }
    dio.close();
    log('Spawned isolate finished.');
    Isolate.exit();
  }

  @override
  dispatch() {
    sendPort.send(null);
  }

  @override
  void appOpen({String? deeplink}) => addAction('appOpen', {
        'deeplink': deeplink,
      });

  @override
  void selectStore({required String storeId}) => addAction('selectStore', {
        'storeId': storeId,
      });

  @override
  void bonusCardChanged({required String? bonusCard}) => addAction(
        'bonusCardChanged',
        {
          'bonusCardChanged': bonusCard,
        },
        null,
      );

  @override
  void selectGroup({required String groupId}) => addAction(
        'selectGroup',
        {
          'groupId': groupId,
        },
        null,
      );

  @override
  void selectProduct({required String productId}) => addAction(
        'selectProduct',
        {
          'productId': productId,
        },
        null,
      );

  @override
  void processPayment({required PaymentType? paymentType}) => addAction(
        'processPayment',
        {
          'paymentType': paymentType?.toJson(),
        },
        null,
      );

  @override
  void bannerClick({required PromotionShortInfo? promotion, String? screen}) =>
      addAction(
        'bannerClick',
        {
          'promotion': promotion?.toJson(),
          'screen': screen,
        },
        null,
      );

  @override
  void cartChange({required Cart? cartBefore, required Cart cartAfter}) =>
      addAction(
        'cartChange',
        {
          'cartBefore': cartBefore?.toJson(),
          'cartAfter': cartAfter.toJson(),
        },
        null,
      );

  @override
  void qrScanned(String? data) => addAction(
        'qrScanned',
        {
          'data': data,
        },
        null,
      );

  @override
  void barcodeEntered(String? data) => addAction(
        'barcodeEntered',
        {
          'data': data,
        },
        null,
      );
}

@testEnv
@Singleton(as: AnalystService)
class AnalystServiceTestImpl extends AnalystService {
  @override
  Future<void> addAction(String name, data, [String? page]) {
    return SynchronousFuture(null);
  }

  @override
  void auth({
    required String? phone,
    bool success = false,
    String? message,
  }) {
    return;
  }

  @override
  void goToPage(String? pageName, String? previousPageName) {
    return;
  }

  @override
  void btnClick(String btnData, [String? page]) {
    return;
  }

  @override
  void productClick(String? nomenclatureCode) {
    return;
  }

  @override
  void addToCart(Product? product, [ProductSource? source]) {
    return;
  }

  @override
  Future<void> removeFromCart({
    String? nomenclatureCode,
    required List<CartItem> cartBefore,
    required List<CartItem> cartAfter,
    bool all = false,
  }) async {
    return SynchronousFuture(null);
  }

  @override
  Future<void> amountCartChange({
    String? nomenclatureCode,
    required List<CartItem> cartBefore,
    required List<CartItem> cartAfter,
    required num amountBefore,
    required num amountAfter,
  }) async {
    return SynchronousFuture(null);
  }

  @override
  void categoryClick(
    int? categoryId,
  ) {
    try {
      addAction('categoryClick', {
        'categoryId': categoryId,
      });
    } catch (e, stack) {
      error('$e\n$stack');
    }
  }

  @override
  Future<void> createOrder(
    OrderModel order,
  ) async {
    return SynchronousFuture(null);
  }

  @override
  Future<void> orderList(
    List<AcceptedOrderResponse> orders,
  ) async {
    return SynchronousFuture(null);
  }

  @override
  void saleClick(
    String saleName,
  ) {
    return;
  }

  @override
  void openLink(String url) {
    return;
  }

  @override
  void error(String message, [String? page]) {
    return;
  }

  @override
  dispatch() {
    return;
  }

  @override
  void appOpen({String? deeplink}) {
    return;
  }

  @override
  void selectStore({required String storeId}) {
    return;
  }

  @override
  void bonusCardChanged({required String? bonusCard}) {
    return;
  }

  @override
  void selectGroup({required String groupId}) {
    return;
  }

  @override
  void selectProduct({required String productId}) {
    return;
  }

  @override
  void processPayment({required PaymentType? paymentType}) {
    return;
  }

  @override
  void bannerClick({required PromotionShortInfo? promotion, String? screen}) {
    return;
  }

  @override
  void cartChange({required Cart? cartBefore, required Cart cartAfter}) {
    return;
  }

  @override
  void qrScanned(String? data) {
    return;
  }

  @override
  void barcodeEntered(String? data) {
    return;
  }
}

class UserInfo {
  final String? token;
  final String? id;

  UserInfo({
    this.token,
    this.id,
  });

  UserInfo copyWith({String? token, String? id}) {
    return UserInfo(
      token: token ?? this.token,
      id: id ?? this.id,
    );
  }
}
