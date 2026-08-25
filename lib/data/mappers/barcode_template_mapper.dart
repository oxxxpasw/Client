import 'package:injectable/injectable.dart';
import 'package:sosedifedi/data/models/barcode_template_response/barcode_template_response.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

@singleton
class BarcodeTemplateMapper {
  Iterable<BarcodeTemplate> mapFromResponse(
    List<BarcodeTemplateResponse> barcodeTemplateResponse,
  ) sync* {
    for (var barcodeTemplateResponse in barcodeTemplateResponse) {
      final format =
          _mapBarcodeFormatFromResponse(barcodeTemplateResponse.barcodeFormat);
      yield BarcodeTemplate(
        name: barcodeTemplateResponse.name,
        barcodeFormat: format,
        prefix: barcodeTemplateResponse.prefix ?? '',
        parts: _mapBarcodePartFromResponse(
          barcodeTemplateResponse.parts,
        ).toList(),
      );
    }
  }

  Iterable<BarcodePart> _mapBarcodePartFromResponse(
    List<BarcodePartResponse> barcodePartResponse,
  ) sync* {
    for (var barcodePartResponse in barcodePartResponse) {
      final type =
          _mapBarcodeComponentTypeFromResponse(barcodePartResponse.type);
      if (type == null) {
        continue;
      }
      //В ответе startPosition начинается с 1
      yield BarcodePart(
        componentType: type,
        startPosition: barcodePartResponse.startPosition - 1,
        endPosition: barcodePartResponse.endPosition,
        length: barcodePartResponse.length,
        prefix: barcodePartResponse.applicationIdentifiers,
      );
    }
  }

  BarcodeFormat _mapBarcodeFormatFromResponse(
    BarcodeFormatResponse barcodeFormat,
  ) =>
      switch (barcodeFormat) {
        BarcodeFormatResponse.ean13 => BarcodeFormat.ean13,
        BarcodeFormatResponse.unknown => BarcodeFormat.unknown,
        BarcodeFormatResponse.ean128 => BarcodeFormat.code128,
        BarcodeFormatResponse.dataMatrix => BarcodeFormat.dataMatrix,
        BarcodeFormatResponse.ean8 => BarcodeFormat.ean8,
      };

  BarcodeComponentType? _mapBarcodeComponentTypeFromResponse(
    BarcodePartTypeResponse type,
  ) =>
      switch (type) {
        BarcodePartTypeResponse.sku => BarcodeComponentType.sku,
        BarcodePartTypeResponse.weightKg => BarcodeComponentType.weightKG,
        BarcodePartTypeResponse.weightG => BarcodeComponentType.weightG,
        BarcodePartTypeResponse.control => BarcodeComponentType.control,
        BarcodePartTypeResponse.gtin => BarcodeComponentType.gtin,
        BarcodePartTypeResponse.expirationDateTime =>
          BarcodeComponentType.expirationDateTime,
        BarcodePartTypeResponse.ddMMyy => BarcodeComponentType.ddMMyy,
        BarcodePartTypeResponse.hh => BarcodeComponentType.hh,
        BarcodePartTypeResponse.mm => BarcodeComponentType.mm,
        BarcodePartTypeResponse.unknown => null,
      };
}
