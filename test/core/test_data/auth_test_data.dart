import 'package:sosedifedi/data/models/auth_data/auth_data.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/data/models/user/user.dart';

abstract class AuthTestData {
  static const String testPhone = '+75555555555';
  static const String testCode = '1234';
  static const String appSignature = 'testSignature';

  static String get token => authData.user.token;

  static AuthData authData = AuthData(
    user: const User(
      systemId: 'd0b39b289с1feb8d7',
      mobileNumber: testPhone,
      createDate: '10/13/22 13:16:48',
      token: 'DcOe3k0QvxyngATzPzBcdpuGBRpPdp',
      userId: '6f471c89-01d2-4425-b544-0daf8d53fa39',
    ),
    userData: UserDataModel(
      firstName: 'Name',
      birthDay: DateTime(1970),
      gender: Gender.men,
    ),
  );

  static UserDataResponse userDataResponse = UserDataResponse(
    firstName: 'Name',
    birthDay: DateTime(1970),
    gender: 'men',
  );

  static const Map<String, dynamic> sendVerifyByPhoneJson = {
    'jsonrpc': '2.0',
    'method': 'sendVerifyByPhone',
    'params': ['d0b39b289с1feb8d7', testPhone, null, appSignature],
    'id': 1,
  };

  static const Map<String, dynamic> getTokenByPhoneJson = {
    'jsonrpc': '2.0',
    'method': 'getTokenByPhone',
    'params': ['d0b39b289с1feb8d7', testPhone, testCode],
    'id': 1,
  };

  static const Map<String, dynamic> getAdditionalInfoJson = {
    'jsonrpc': '2.0',
    'method': 'getAdditionalInfo',
    'params': ['d0b39b289с1feb8d7', 'DcOe3k0QvxyngATzPzBcdpuGBRpPdp'],
    'id': 1,
  };

  static const Map<String, dynamic> getTokenData = {
    'jsonrpc': '2.0',
    'method': 'getTokenData',
    'params': ['d0b39b289с1feb8d7', 'DcOe3k0QvxyngATzPzBcdpuGBRpPdp'],
    'id': 1,
  };

  static const Map<String, dynamic> updateAdditionalInfoJson = {
    'id': 1,
    'jsonrpc': 2.0,
    'method': 'updateAdditionalInfo',
    'params': [
      'd0b39b289с1feb8d7',
      'DcOe3k0QvxyngATzPzBcdpuGBRpPdp',
      {
        'first_name': 'Name',
        'birth_day': '1970-01-01T00:00:00.000',
        'gender': 'men',
      },
    ],
  };

  static const Map<String, dynamic> sendVerifyByPhoneResponseJson = {
    'result': [
      {"msg": "OK", "code": 0, "data": []},
    ],
    'id': 1,
  };

  static const Map<String, dynamic> getTokenByPhoneResponseJson = {
    'result': [
      {
        "msg": "OK",
        "code": 0,
        "data": {
          "system_id": "d0b39b289с1feb8d7",
          "id_data_owner": "AF83A4BF-6951-4140-9A81-AB18012CA761",
          "mobile_number": testPhone,
          "user_id": "6f471c89-01d2-4425-b544-0daf8d53fa39",
          "token": "DcOe3k0QvxyngATzPzBcdpuGBRpPdp",
          "create_date": "10/13/22 13:16:48",
        },
      },
    ],
    'id': 1,
  };

  static const Map<String, dynamic> getTokenByPhoneErrorResponseJson = {
    'result': [
      {"code": 230, "msg": "verify code not found"},
    ],
    'id': 1,
  };

  static const Map<String, dynamic> errorResponse = {
    'result': [
      {"code": 999, "msg": "testError"},
    ],
    'id': 1,
  };

  static const Map<String, dynamic> getAdditionalInfoResponseJson = {
    'result': [
      {
        "msg": "OK",
        "code": 0,
        "data": {
          "gender": "man",
          "birth_day": "1970-01-01T00:00:00.000",
          "first_name": "Name",
        },
      },
    ],
    'id': 1,
  };

  static const Map<String, dynamic> getAdditionalInfoEmptyResponseJson = {
    'result': [
      {"msg": "OK", "code": 1, "data": {}},
    ],
    'id': 1,
  };

  static const Map<String, dynamic> updateAdditionalInfoResponseJson = {
    'result': [
      {
        "msg": "OK",
        "code": 0,
        "data": {
          'first_name': 'Name',
          'birth_day': '1970-01-01T00:00:00.000',
          'gender': 'men',
        },
      },
    ],
    'id': 1,
  };

  static const Map<String, dynamic> getTokenDataResponseJson =
      getTokenByPhoneResponseJson;
}
