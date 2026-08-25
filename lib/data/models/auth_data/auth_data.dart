import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/domain/models/user_data/user_data.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_data.freezed.dart';

@freezed
abstract class AuthData with _$AuthData {
  const factory AuthData({
    required User user,
    UserData? userData,
  }) = _AuthData;
}
