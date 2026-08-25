import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/mappers/barcode_template_mapper.dart';
import 'package:sosedifedi/data/repository/barcode_parser_repository/barcode_parser.dart';
import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/data/services/static_files_service.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

abstract class BarcodeParserRepository {
  Future<void> init();

  Future<DefaultResponse<BarcodeData?>> parse(RawBarcode barcode);
}

@Singleton(as: BarcodeParserRepository)
class BarcodeParserRepositoryImpl implements BarcodeParserRepository {
  @protected
  final StaticFilesService staticFilesService;
  @protected
  final BarcodeTemplateMapper barcodeTemplateMapper;
  @protected
  final AnalystService analystService;

  BarcodeParser? _parser;

  BarcodeParserRepositoryImpl({
    required this.staticFilesService,
    required this.barcodeTemplateMapper,
    required this.analystService,
  });

  @override
  Future<DefaultResponse<BarcodeData?>> parse(RawBarcode barcode) async {
    if (_parser == null) {
      await init();
    }

    assert(_parser != null);

    try {
      return ApiResponse.success(_parser!.parse(barcode));
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }

  @override
  Future<void> init({
    BarcodeParser? parser,
  }) async {
    try {
      if (parser != null) {
        _parser = parser;
        return;
      }

      final response = await staticFilesService.getBarcodeTemplates();

      if (response.hasError) {
        analystService.error(response.error.toString());
        return;
      }

      _parser = BarcodeParserImpl(
        templates: barcodeTemplateMapper
            .mapFromResponse(response.result.templates)
            .toList(),
      );
    } catch (_) {}
  }
}
