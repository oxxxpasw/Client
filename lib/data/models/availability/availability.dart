import 'package:freezed_annotation/freezed_annotation.dart';

enum AvailabilityType {
  preOrder,
  selfService,
  kiosk,
  @JsonValue('kiosk-dishes')
  kioskDishes,
  @JsonValue('kiosk-vape')
  kioskVape,
  unknown,
}
