import 'package:freezed_annotation/freezed_annotation.dart';

part 'sbp_bank.freezed.dart';

@freezed
abstract class SbpBank with _$SbpBank {
  const factory SbpBank({
    required String bankName,
    Uri? logoURL,
    required Uri uri,
  }) = _SbpBank;
}
