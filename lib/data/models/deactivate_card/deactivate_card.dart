import 'package:freezed_annotation/freezed_annotation.dart';

part 'deactivate_card.freezed.dart';
part 'deactivate_card.g.dart';

@Freezed(toJson: true)
abstract class DeactivateCardRequest with _$DeactivateCardRequest {
  const factory DeactivateCardRequest({
    required String subId,
    required String paymentType,
    required String token,
    required String cardId,
  }) = _DeactivateCardRequest;
}

@Freezed(toJson: false)
@freezed
abstract class DeactivateCardResponse with _$DeactivateCardResponse {
  const factory DeactivateCardResponse({
    String? message,
    String? status,
  }) = _DeactivateCardResponse;

  factory DeactivateCardResponse.fromJson(Map<String, dynamic> json) =>
      _$DeactivateCardResponseFromJson(json);
}
