import 'package:equatable/equatable.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';
import 'package:mobile_scanner/mobile_scanner.dart';

part 'barcode.freezed.dart';
part 'barcode_components.dart';

@freezed
abstract class RawBarcode with _$RawBarcode {
  const factory RawBarcode({
    required String rawValue,
    @Default(BarcodeFormat.unknown) BarcodeFormat format,
  }) = _RawBarcode;
}

@freezed
sealed class BarcodeData with _$BarcodeData {
  const BarcodeData._();

  const factory BarcodeData({
    required RawBarcode rawBarcode,
    required Map<Type, BarcodeComponent> components,
  }) = _BarcodeData;

  T? getComponent<T extends BarcodeComponent>() => components[T] as T?;

  DateTime? getExpirationDate() {
    final expirationDate = getComponent<ExpirationDateTimeComponent>()?.value;
    if (expirationDate != null) return expirationDate;

    var baseDate = getComponent<DDMMYYComponent>()?.value;
    if (baseDate == null) return null;

    final hh = getComponent<HoursComponent>()?.value;
    if (hh != null) {
      baseDate = baseDate.add(Duration(hours: hh));
    }

    final mm = getComponent<MinutesComponent>()?.value;
    if (mm != null) {
      baseDate = baseDate.add(Duration(minutes: mm));
    }

    return baseDate;
  }

  bool get isExpired {
    final expirationDate = getExpirationDate();
    return expirationDate != null && expirationDate.isBefore(DateTime.now());
  }
}

@freezed
abstract class BarcodeTemplate with _$BarcodeTemplate {
  const BarcodeTemplate._();

  const factory BarcodeTemplate({
    required BarcodeFormat barcodeFormat,
    required List<BarcodePart> parts,
    required String prefix,
    String? name,
  }) = _BarcodeTemplate;

  bool isValidBarcode(RawBarcode barcode) =>
      (barcodeFormat == BarcodeFormat.unknown ||
          barcode.format == BarcodeFormat.unknown ||
          barcode.format == barcodeFormat) &&
      barcode.rawValue.startsWith(prefix);
}

@freezed
abstract class BarcodePart with _$BarcodePart {
  const BarcodePart._();

  const factory BarcodePart({
    required int startPosition,
    required int endPosition,
    required int length,
    required BarcodeComponentType componentType,
    String? prefix,
  }) = _BarcodePart;
}

enum BarcodeComponentType {
  weightKG,
  weightG,
  sku,
  control,
  gtin,
  expirationDateTime,
  ddMMyy,
  hh,
  mm,
}
