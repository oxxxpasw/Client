import 'package:collection/collection.dart';
import 'package:sosedifedi/domain/models/barcode/barcode.dart';

abstract class BarcodeParser {
  BarcodeData? parse(RawBarcode barcode);
}

class BarcodeParserImpl implements BarcodeParser {
  static const defaultGroupSeparator = '\u001d';
  static const defaultFNC1 = '\u00e8';

  static const List<String> startCodes = [']d2', ']e0', ']C1', ']Q3'];

  BarcodeParserImpl({
    required this.templates,
  });

  final List<BarcodeTemplate> templates;

  @override
  BarcodeData? parse(RawBarcode barcode) {
    barcode = barcode.copyWith(
      rawValue: _normalize(barcode.rawValue),
    );

    for (final template in templates) {
      try {
        final result = _tryParse(
          template: template,
          barcode: barcode,
        );
        if (result != null) return result;
      } catch (_) {}
    }
    return null;
  }

  BarcodeData? _tryParse({
    required BarcodeTemplate template,
    required RawBarcode barcode,
  }) {
    if (!template.isValidBarcode(barcode)) {
      return null;
    }

    return BarcodeData(
      rawBarcode: barcode,
      components: Map.fromEntries(
        template.parts.map(
          (part) {
            final component = _tryParseComponent(
              part: part,
              value: barcode.rawValue,
            );
            return component != null
                ? MapEntry(component.runtimeType, component)
                : null;
          },
        ).whereNotNull(),
      ),
    );
  }

  BarcodeComponent? _tryParseComponent({
    required BarcodePart part,
    required String value,
  }) {
    try {
      var rawValue = value.substring(part.startPosition, part.endPosition);
      if (part.prefix != null) {
        if (!rawValue.startsWith(part.prefix!)) {
          return null;
        }
        rawValue = rawValue.replaceFirst(part.prefix!, '');
      }
      return switch (part.componentType) {
        BarcodeComponentType.weightKG =>
          WeightKGComponent.fromRawValue(rawValue),
        BarcodeComponentType.weightG => WeightGComponent.fromRawValue(rawValue),
        BarcodeComponentType.sku => SKUComponent.fromRawValue(rawValue),
        BarcodeComponentType.control => ControlComponent(value: rawValue),
        BarcodeComponentType.gtin => GtinComponent.fromRawValue(rawValue),
        BarcodeComponentType.expirationDateTime =>
          ExpirationDateTimeComponent.fromRawValue(rawValue),
        BarcodeComponentType.ddMMyy => DDMMYYComponent.fromRawValue(rawValue),
        BarcodeComponentType.hh => HoursComponent.fromRawValue(rawValue),
        BarcodeComponentType.mm => MinutesComponent.fromRawValue(rawValue),
      };
    } catch (_) {
      return null;
    }
  }

  /// Функция удаления контрольных символов в начале строки
  String _normalize(String data) {
    String result = data;
    while (result.startsWith(defaultGroupSeparator) ||
        result.startsWith(defaultFNC1)) {
      result = result.substring(1);
    }
    final code = startCodes.firstWhereOrNull(
      (code) => result.startsWith(code),
    );

    if (code == null) {
      return result;
    }

    return result.substring(code.length);
  }
}
