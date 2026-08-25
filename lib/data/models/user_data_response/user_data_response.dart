import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_data_response.freezed.dart';
part 'user_data_response.g.dart';

@freezed
abstract class UserDataResponse with _$UserDataResponse {
  const UserDataResponse._();

  @JsonSerializable(includeIfNull: false)
  const factory UserDataResponse({
    String? firstName,
    String? surname,
    DateTime? birthDay,
    @JsonKey(unknownEnumValue: Gender.unknown) Gender? gender,
    String? email,
  }) = _UserDataResponse;

  factory UserDataResponse.fromJson(Map<String, dynamic> json) =>
      _$UserDataResponseFromJson(json);
}

enum Gender {
  @JsonValue('men')
  men,
  @JsonValue('woman')
  women,
  @JsonValue('unknown')
  unknown,
}
