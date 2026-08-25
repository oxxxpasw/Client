import 'package:flutter/foundation.dart';
import 'package:gs1_barcode_parser/gs1_barcode_parser.dart';
import 'package:injectable/injectable.dart';

abstract class BarcodeRepository {
  GS1Barcode getGS1Barcode(String barcode);
}

@LazySingleton(as: BarcodeRepository)
class BarcodeRepositoryImpl extends BarcodeRepository {
  BarcodeRepositoryImpl({required this.gs1BarcodeParser});

  @protected
  final GS1BarcodeParser gs1BarcodeParser;

  @override
  GS1Barcode getGS1Barcode(String barcode) {
    return gs1BarcodeParser.parse(barcode);
  }
}
