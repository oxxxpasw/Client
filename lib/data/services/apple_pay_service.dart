import 'package:easy_localization/easy_localization.dart';
import 'package:injectable/injectable.dart';
import 'package:pay/pay.dart';
import 'package:sosedifedi/data/models/apple_pay_result/apple_pay_result.dart';
import 'package:sosedifedi/generated/locale_keys.g.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class ApplePayService {
  Future<DefaultResponse<ApplePayResult>> pay(double total);
}

@Singleton(as: ApplePayService)
class ApplePayServiceImpl extends ApplePayService {
  @override
  Future<DefaultResponse<ApplePayResult>> pay(double total) async {
    try {
      final config = await PaymentConfiguration.fromAsset(
        'default_payment_profile_apple_pay.json',
      );

      final paymentItems = [
        PaymentItem(
          label: (await config.parameterMap())['displayName'] ??
              LocaleKeys.title.tr(),
          amount: total.toStringAsFixed(2),
          status: PaymentItemStatus.final_price,
        )
      ];

      final Pay payClient = Pay(
        {
          PayProvider.apple_pay: config,
        },
      );

      final result = await payClient.userCanPay(PayProvider.apple_pay);

      if (!result) {
        const ApiResponse.error(
          CommonResponseError.undefinedError('Apple Pay is not available'),
        );
      }

      final payResult = await payClient.showPaymentSelector(
        PayProvider.apple_pay,
        paymentItems,
      );
      return ApiResponse.success(ApplePayResult.fromJson(payResult));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
