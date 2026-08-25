part of 'barcode.dart';

sealed class BarcodeComponent extends Equatable {
  const BarcodeComponent();

  Object? get value;

  @override
  List<Object?> get props => [value];
}

class WeightKGComponent extends BarcodeComponent {
  @override
  final int? value;

  const WeightKGComponent({this.value});

  factory WeightKGComponent.fromRawValue(String rawValue) =>
      WeightKGComponent(value: int.tryParse(rawValue));
}

class WeightGComponent extends BarcodeComponent {
  @override
  final int? value;

  const WeightGComponent({this.value});

  factory WeightGComponent.fromRawValue(String rawValue) =>
      WeightGComponent(value: int.tryParse(rawValue));
}

class SKUComponent extends BarcodeComponent {
  @override
  final int? value;

  const SKUComponent({this.value});

  factory SKUComponent.fromRawValue(String rawValue) =>
      SKUComponent(value: int.tryParse(rawValue));
}

class ControlComponent extends BarcodeComponent {
  @override
  final String? value;

  const ControlComponent({this.value});
}

class GtinComponent extends BarcodeComponent {
  @override
  final String? value;

  const GtinComponent({this.value});

  factory GtinComponent.fromRawValue(String rawValue) => GtinComponent(
        value: rawValue,
      );
}

class ExpirationDateTimeComponent extends BarcodeComponent {
  @override
  final DateTime? value;

  const ExpirationDateTimeComponent({this.value});

  factory ExpirationDateTimeComponent.fromRawValue(String rawValue) =>
      ExpirationDateTimeComponent(
        value: DateFormat('yy/MM/dd/HH/mm')
            .tryParse(splitDate(rawValue).join('/')),
      );
}

class DDMMYYComponent extends BarcodeComponent {
  @override
  final DateTime? value;

  const DDMMYYComponent({this.value});

  factory DDMMYYComponent.fromRawValue(String rawValue) => DDMMYYComponent(
        value: DateFormat('dd/MM/yy').tryParse(splitDate(rawValue).join('/')),
      );
}

class HoursComponent extends BarcodeComponent {
  @override
  final int? value;

  const HoursComponent({this.value});

  factory HoursComponent.fromRawValue(String rawValue) => HoursComponent(
        value: int.tryParse(rawValue),
      );
}

class MinutesComponent extends BarcodeComponent {
  @override
  final int? value;

  const MinutesComponent({this.value});

  factory MinutesComponent.fromRawValue(String rawValue) => MinutesComponent(
        value: int.tryParse(rawValue),
      );
}

Iterable<String> splitDate(String value) sync* {
  assert(value.length.isEven);
  for (int i = 0; i < value.length; i += 2) {
    yield value.substring(i, i + 2);
  }
}
