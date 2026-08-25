import 'package:freezed_annotation/freezed_annotation.dart';

part 'phone.freezed.dart';

@freezed
abstract class Phone with _$Phone {
  const factory Phone({
    required String originalPhone,
    required String formattedPhone,
    String? e164,
  }) = _Phone;
}
