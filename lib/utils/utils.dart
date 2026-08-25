import 'dart:io';

import 'package:sosedifedi/utils/extensions.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/material.dart';

class RestorableDateTimeController
    extends RestorableChangeNotifier<DateTimeController> {
  RestorableDateTimeController(DateTime? value) : _initialValue = value;

  final DateTime? _initialValue;

  @override
  DateTimeController createDefaultValue() {
    return DateTimeController(_initialValue);
  }

  @override
  DateTimeController fromPrimitives(Object? data) {
    return DateTimeController(DateTime.tryParse((data as String)));
  }

  @override
  Object? toPrimitives() {
    return value.value?.toIso8601String();
  }
}

class DateTimeController extends ValueNotifier<DateTime?> {
  DateTimeController(DateTime? value) : super(value);
}

Future<String?> deviceId() async {
  final deviceInfo = DeviceInfoPlugin();
  if (Platform.isAndroid) {
    AndroidDeviceInfo androidInfo = await deviceInfo.androidInfo;
    return androidInfo.id;
  } else if (Platform.isIOS) {
    IosDeviceInfo isoInfo = await deviceInfo.iosInfo;
    return isoInfo.identifierForVendor;
  }
  throw UnsupportedError('platform not supported');
}

num? readNumJsonValueValue(Map<dynamic, dynamic> json, String key) {
  final val = json[key];
  if (val is String) {
    return val.tryParseNum();
  }
  return val;
}

extension FormatDouble on double {
  String toFormatString() =>
      this == toInt() ? toInt().toString() : toStringAsFixed(2);
}
