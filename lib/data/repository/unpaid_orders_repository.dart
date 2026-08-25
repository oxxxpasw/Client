import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:rxdart/subjects.dart';
import 'package:sosedifedi/data/mappers/order_mapper.dart';
import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/data/services/order_service.dart';
import 'package:sosedifedi/domain/models/order/accepted_order/accepted_order.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class UnpaidOrdersRepository {
  bool hasUnpaidOrder();

  Future<DefaultResponse<AcceptedOrder?>> getLastUnpaidOrder();

  Future<void> refreshUnpaidOrder();

  Stream<DefaultResponse<AcceptedOrder?>> get unpaidOrderStream;

  void dispose() {}
}

const _kRefreshDuration = Duration(minutes: 1);

@Singleton(as: UnpaidOrdersRepository)
class UnpaidOrdersRepositoryImpl extends UnpaidOrdersRepository {
  UnpaidOrdersRepositoryImpl({
    required this.mapper,
    required this.orderService,
    required this.authRepository,
    required this.analystService,
  }) {
    _subscription = authRepository.tokenStream.listen(_onAuthEvent);
    timer = Timer.periodic(_kRefreshDuration, (_) => refreshUnpaidOrder());
  }

  @protected
  final OrderModelMapper mapper;

  @protected
  final OrderService orderService;

  @protected
  final AuthRepository authRepository;

  @protected
  final AnalystService analystService;

  StreamSubscription? _subscription;

  final _orderSubject = BehaviorSubject<DefaultResponse<AcceptedOrder?>>();

  Timer? timer;

  @override
  Stream<DefaultResponse<AcceptedOrder?>> get unpaidOrderStream =>
      _orderSubject;

  @override
  bool hasUnpaidOrder() {
    final value = _orderSubject.valueOrNull;
    if (value == null || value.hasError) {
      return false;
    }
    return value.result != null;
  }

  @override
  Future<DefaultResponse<AcceptedOrder?>> getLastUnpaidOrder() async {
    final result = await _getUnpaidOrder(authRepository.authData?.user.token);
    _addItemToStream(result);
    return result;
  }

  @override
  Future<void> refreshUnpaidOrder() async {
    _addItemToStream(
      await _getUnpaidOrder(authRepository.authData?.user.token),
    );
  }

  void _addItemToStream(DefaultResponse<AcceptedOrder?> item) {
    if (_orderSubject.valueOrNull != item) {
      _orderSubject.add(item);
    }
  }

  Future<void> _onAuthEvent(AuthData? data) async {
    _orderSubject.add(
      await _getUnpaidOrder(data?.user.token),
    );
  }

  Future<DefaultResponse<AcceptedOrder?>> _getUnpaidOrder(String? token) async {
    try {
      if (token == null) {
        return const ApiResponse.success(null);
      }
      final response = await orderService.getLastUnpaidOrder(token: token);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(response.result != null
          ? mapper.mapFromAcceptedOrderResponse(response.result!)
          : null);
    } catch (e) {
      analystService.error(e.toString());
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    _subscription?.cancel();
    _orderSubject.close();
  }
}
