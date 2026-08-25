import 'package:sosedifedi/data/mappers/sbp_mapper.dart';
import 'package:sosedifedi/data/services/sbp_payment_service.dart';
import 'package:sosedifedi/domain/models/sbp_bank/sbp_bank.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:injectable/injectable.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class SbpRepository {
  Future<DefaultResponse<List<SbpBank>>> getAvailableBanks(Uri qrUrl);
  Future<DefaultResponse<List<SbpBank>>> getAllBanks(Uri qrUrl);
}

@Singleton(as: SbpRepository)
class SbpRepositoryImpl extends SbpRepository {
  SbpRepositoryImpl({
    required this.sbpPaymentService,
    required this.sbpMapper,
  });

  final SbpPaymentService sbpPaymentService;
  final SbpMapper sbpMapper;

  ///Возвращает список банков поддержкой СБП установленных на устройстве.
  ///Если ни одного не найдено вернет все банки с поддержкой СБП
  @override
  Future<DefaultResponse<List<SbpBank>>> getAvailableBanks(Uri qrUrl) async {
    try {
      final response = await sbpPaymentService.getBankList();
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      final bankList = sbpMapper.banksFromResponse(response.result, qrUrl);
      final result = <SbpBank>[];
      for (final bank in bankList) {
        if (await canLaunchUrl(bank.uri)) {
          result.add(bank);
        }
      }
      if (result.isEmpty) {
        return ApiResponse.success(bankList);
      }
      return ApiResponse.success(result);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<DefaultResponse<List<SbpBank>>> getAllBanks(Uri qrUrl) async {
    try {
      final response = await sbpPaymentService.getBankList();
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(
          sbpMapper.banksFromResponse(response.result, qrUrl));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
