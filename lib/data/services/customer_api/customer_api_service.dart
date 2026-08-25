import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/data/models/account_transaction/account_transaction.dart';
import 'package:sosedifedi/data/models/bonus_details_by_store/bonus_details_by_store.dart';
import 'package:sosedifedi/data/models/cart_response/cart_response.dart';
import 'package:sosedifedi/data/models/customer_account_response/customer_account_response.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/data/models/promotion/promotion.dart';
import 'package:sosedifedi/data/models/review_request/review_request.dart';
import 'package:sosedifedi/data/models/review_response/review_response.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:uuid/uuid.dart';

///Сервис для работы с customerApi2
abstract class CustomerApiService {
  ///Получение максимума бонусов для списания
  Future<double> getBonuses({required String token});

  ///Получение данных карт
  Future<DefaultResponse<CustomerAccountResponse>> getAccounts(
      {required String token});

  ///Получение данных карт
  Future<DefaultResponse<CustomerAccountResponse>> getGlobalPromotions({
    required String dataownerId,
  });

  ///Получение временной карты
  Future<DefaultResponse<int>> getTemporaryBonusesCard({required String token});

  ///Получение Promotion
  Future<DefaultResponse<Promotion>> getPromotion({
    String? token,
    required String id,
  });

  ///Получение Promotion по покупке
  Future<DefaultResponse<Promotion>> getPromotionsByPurchase({
    String? token,
    required String purchaseId,
  });

  ///Получение временной карты
  Future<DefaultResponse<dynamic>> setPromotionResult({
    required String token,
    required String id,
    required Map<String, dynamic> data,
  });

  ///Создание покупки
  Future<DefaultResponse<CustomerApiPurchase>> createPurchase({
    required CustomerApiRequest request,
  });

  ///Установка платежа
  Future<DefaultResponse<dynamic>> setPayment({
    required String token,
    required OrderResponse order,
  });

  ///Получение покупок пользователя
  Future<ApiResponse<CommonResponseError, dynamic>> getPurchase({
    required String token,
  });

  ///Получение транзакций пользователя
  Future<ApiResponse<CommonResponseError, dynamic>> getTransactions({
    required String token,
  });

  Future<ApiResponse<CommonResponseError, dynamic>> rollbackPurchase({
    required String token,
    required String purchaseId,
  });

  Future<DefaultResponse<Purchase>> getDiscountPurchase({
    required CustomerApiRequest request,
    double? bonusesToSpent,
  });

  Future<DefaultResponse<void>> createReview({
    required ReviewRequest request,
    required String token,
  });

  Future<DefaultResponse<String>> uploadImage({
    required String base64Image,
    required String token,
  });

  Future<DefaultResponse<List<ReviewResponse>>> getReviewsByUser({
    required String token,
  });

  Future<DefaultResponse<List<AccountTransaction>>> getAccountTransactions({
    required String programId,
    required String token,
  });

  Future<DefaultResponse<BonusDetailsByStore>> getAccountBonusesByStore({
    required String storeId,
    required String token,
  });

  void dispose();
}

@Singleton(as: CustomerApiService)
class CustomerApiServiceImpl extends CustomerApiService {
  CustomerApiServiceImpl(
    @Named(InjectableNames.customerApiClient) this._dio,
    @Named(InjectableNames.customerApiClient) this._dioJsonRpcErrorHandler,
  );

  final Dio _dio;
  final DioErrorHandler<DefaultApiError> _dioJsonRpcErrorHandler;

  ///Получение максимума бонусов для списания
  @override
  Future<double> getBonuses({required String token}) async {
    final ApiResponse cards =
        await _jsonRpc(method: 'GetAccounts', data: [token]);
    double bonuses = 0;
    if (cards.isSuccess) {
      cards.result['Cards'].forEach((el) {
        if (bonuses < el['Bonuses']) {
          bonuses = el['Bonuses'];
        }
      });
    }
    return bonuses;
  }

  ///Получение данных карт
  @override
  Future<DefaultResponse<CustomerAccountResponse>> getAccounts(
      {required String token}) async {
    try {
      final response = await _jsonRpc(method: 'GetAccounts', data: [token]);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          CustomerAccountResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  ///Получение данных карт
  @override
  Future<DefaultResponse<CustomerAccountResponse>> getGlobalPromotions({
    required String dataownerId,
  }) async {
    try {
      final response =
          await _jsonRpc(method: 'GetDataOwnerInfo', data: [dataownerId]);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          CustomerAccountResponse.fromJson(response.result));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  ///Получение временной карты
  @override
  Future<DefaultResponse<int>> getTemporaryBonusesCard(
      {required String token}) async {
    try {
      final response =
          await _jsonRpc(method: 'GetTemporaryCard', data: [token]);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result['Number']);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  ///Получение Promotion
  @override
  Future<DefaultResponse<Promotion>> getPromotion({
    String? token,
    required String id,
  }) async {
    try {
      final response =
          await _jsonRpc(method: 'GetPromotion', data: [id, token]);
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        const PromotionConverter().fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  ///Получение Promotion по ID покупки
  @override
  Future<DefaultResponse<Promotion>> getPromotionsByPurchase({
    String? token,
    required String purchaseId,
  }) async {
    try {
      final response = await _jsonRpc(
        method: 'GetPromotionsByPurchase',
        data: [
          token,
          purchaseId,
        ],
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
        const PromotionConverter().fromJson(response.result),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  ///Получение временной карты
  @override
  Future<DefaultResponse<dynamic>> setPromotionResult({
    required String token,
    required String id,
    required Map<String, dynamic> data,
  }) async {
    try {
      final response = await _jsonRpc(
        method: 'SetPromotionResult',
        data: [
          token,
          id,
          {
            "answers": data,
          },
        ],
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  ///Создание покупки
  @override
  Future<DefaultResponse<CustomerApiPurchase>> createPurchase({
    required CustomerApiRequest request,
  }) async {
    final response = await _jsonRpc(
      method: 'CreatePurchase',
      data: [
        request.toJson(),
      ],
    );
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(CustomerApiPurchase.fromJson(response.result));
  }

  ///Установка платежа
  @override
  Future<DefaultResponse<dynamic>> setPayment({
    required String token,
    required OrderResponse order,
  }) {
    final double bonuses = order.bonusesToPay;

    return _jsonRpc(
      method: 'SetPayment',
      data: [
        {
          "Token": token,
          "BonusSum": bonuses,
          "CashSumm": 0.0,
          "BankSumm": order.totalPrice,
          "PurchaseId": order.purchase?.purchase.id ?? '',
          "OrderNumber": order.id,
        }
      ],
    );
  }

  ///Получение покупок пользователя
  @override
  Future<ApiResponse<CommonResponseError, dynamic>> getPurchase({
    required String token,
  }) {
    return _jsonRpc(
      method: 'GetAccountPurchase',
      data: [
        token,
      ],
    );
  }

  ///Получение транзакций пользователя
  @override
  Future<ApiResponse<CommonResponseError, dynamic>> getTransactions({
    required String token,
  }) {
    return _jsonRpc(
      method: 'GetAccountTransactions',
      data: [
        token,
      ],
    );
  }

  @override
  Future<ApiResponse<CommonResponseError, dynamic>> rollbackPurchase({
    required String token,
    required String purchaseId,
  }) {
    return _jsonRpc(
      method: 'RollbackPurchase',
      data: [
        token,
        purchaseId,
      ],
    );
  }

  @override
  Future<DefaultResponse<Purchase>> getDiscountPurchase({
    required CustomerApiRequest request,
    double? bonusesToSpent,
  }) async {
    final response = await _jsonRpc<Map<String, dynamic>>(
      method: 'GetDiscountPurchase',
      data: [
        request.toJson(),
        bonusesToSpent ?? 0.0,
      ],
    );
    if (response.hasError) {
      return ApiResponse.error(response.error);
    }
    return ApiResponse.success(Purchase.fromJson(response.result));
  }

  @override
  Future<DefaultResponse<void>> createReview({
    required ReviewRequest request,
    required String token,
  }) async {
    try {
      final response = await _jsonRpc<Map<String, dynamic>>(
        method: 'CreateOrUpdateReview',
        data: [
          token,
          null, // reviewId = null для создания нового отзыва
          ...request.toJson(),
        ],
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return const ApiResponse.success(null);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<String>> uploadImage({
    required String base64Image,
    required String token,
  }) async {
    try {
      final response = await _jsonRpc<Map<String, dynamic>>(
        method: 'UploadImageBase64',
        data: [
          token,
          base64Image,
        ],
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result['result'] as String);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<ReviewResponse>>> getReviewsByUser({
    required String token,
  }) async {
    try {
      final response = await _jsonRpc<List<dynamic>>(
        method: 'GetReviewsByCustomer',
        data: [
          token,
        ],
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(
        response.result.map((e) => ReviewResponse.fromJson(e)).toList(),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<AccountTransaction>>> getAccountTransactions({
    required String programId,
    required String token,
  }) async {
    try {
      final response = await _jsonRpc<Map<String, dynamic>>(
        method: 'GetAccountTransactions',
        data: [
          token,
          programId,
        ],
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(
        AccountTransactionsResponse.fromJson(response.result).transactions,
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<BonusDetailsByStore>> getAccountBonusesByStore({
    required String storeId,
    required String token,
  }) async {
    try {
      final response = await _jsonRpc<List<dynamic>>(
        method: 'GetAccountBonusesByStore',
        data: [
          token,
          storeId,
        ],
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }

      return ApiResponse.success(
        BonusDetailsByStore.fromJson(response.result.first),
      );
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  Future<DefaultResponse<T>> _jsonRpc<T>({
    required String method,
    required List data,
    Map<String, String>? headers,
  }) async {
    try {
      var response =
          await _dioJsonRpcErrorHandler.processRequest<Map<String, dynamic>>(
        () async {
          final result = await _dio.post(
            '',
            data: {
              'jsonrpc': '2.0',
              'method': method,
              'params': data,
              'id': const Uuid().v4(),
            },
            options: Options(
              headers: headers,
            ),
          );
          return await compute<String, Map<String, dynamic>>(
              (value) => jsonDecode(value), result.data as String);
        },
        true,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(response.result['result'] as T);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  dispose() {
    _dio.close();
  }
}
