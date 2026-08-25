import 'package:phone_numbers_parser/phone_numbers_parser.dart'
    as phone_numbers_parser;
import 'package:sosedifedi/domain/models/phone/phone.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:flutter_libphonenumber/flutter_libphonenumber.dart';
import 'package:injectable/injectable.dart';

abstract class InputPhoneService {
  Future<Phone> formatPhone(String phone);
}

class InputPhoneServiceImpl extends InputPhoneService {
  InputPhoneServiceImpl._();

  factory InputPhoneServiceImpl() {
    init();
    return InputPhoneServiceImpl._();
  }

  @override
  Future<Phone> formatPhone(String phone) async {
    String formattedPhone = formatNumberSync(phone);
    try {
      Map<String, dynamic> parsedPhone =
          await parse(formattedPhone);
      return Phone(
        originalPhone: phone,
        formattedPhone: formattedPhone,
        e164: parsedPhone['e164'],
      );
    } catch (e) {
      return Phone(
        originalPhone: phone,
        formattedPhone: formattedPhone,
        e164: null,
      );
    }
  }
}

@testEnv
@Singleton(as: InputPhoneService)
class InputPhoneServiceTestImpl extends InputPhoneService {
  String? _testPhone;

  set testPhone(String? phone) {
    _testPhone = phone;
  }

  @override
  Future<Phone> formatPhone(String phone) async {
    if (phone == _testPhone) {
      return Phone(
        originalPhone: phone,
        formattedPhone: phone,
        e164: phone,
      );
    }
    return Phone(
      originalPhone: phone,
      formattedPhone: phone,
      e164: null,
    );
  }
}

@releaseEnv
@debugEnv
@Singleton(as: InputPhoneService)
class InputPhoneServicePhoneNumberParsedImpl implements InputPhoneService {
  @override
  Future<Phone> formatPhone(String phone) {
    final frPhone = phone_numbers_parser.PhoneNumber.parse(phone);
    return Future.value(
      Phone(
        originalPhone: phone,
        formattedPhone: '+${frPhone.countryCode} ${frPhone.getFormattedNsn()}',
        e164: frPhone.isValid(type: phone_numbers_parser.PhoneNumberType.mobile)
            ? frPhone.international
            : null,
      ),
    );
  }
}
