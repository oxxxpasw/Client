import 'package:sosedifedi/data/models/user_data_response/user_data_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

export 'package:sosedifedi/data/models/user_data_response/user_data_response.dart'
    show Gender;

part 'user_data.freezed.dart';

@freezed
abstract class UserData with _$UserData {
  const UserData._();

  const factory UserData({
    String? firstName,
    String? surname,
    DateTime? birthDay,
    Gender? gender,
    String? email,
    String? phone,
  }) = _UserData;
}
