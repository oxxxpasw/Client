import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:dio/dio.dart';
import 'package:package_info_plus/package_info_plus.dart';

class AppInfoInterceptor extends Interceptor {
  Map<String, dynamic>? _info;

  @override
  Future<void> onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    options.headers.addAll(_info ??= await _getPackageInfo());
    super.onRequest(options, handler);
  }

  Future<Map<String, dynamic>> _getPackageInfo() async {
    try {
      final deviceInfoPlugin = DeviceInfoPlugin();
      PackageInfo packageInfo = await PackageInfo.fromPlatform();
      String? os, manufacturer, model;
      if (Platform.isAndroid) {
        AndroidDeviceInfo androidInfo = await deviceInfoPlugin.androidInfo;
        os =
            'Android ${androidInfo.version.release} (SDK ${androidInfo.version.sdkInt})';
        manufacturer = androidInfo.manufacturer;
        model = androidInfo.model;
      } else if (Platform.isIOS) {
        IosDeviceInfo isoInfo = await deviceInfoPlugin.iosInfo;
        os = '${isoInfo.systemName} ${isoInfo.systemVersion}';
        manufacturer = 'Apple';
        model = isoInfo.name;
      }
      return ({
        'x-package-name': packageInfo.packageName,
        'x-version': '${packageInfo.version}+${packageInfo.buildNumber}',
        'x-os': os,
        'x-model': '$manufacturer $model',
        'x-app-secret': 'lilcoffee_app_sec_984f92bc87',
      }).map(
        (key, value) => MapEntry(
          key,
          value?.replaceAll(RegExp(r'[^A-Za-z0-9().,;?\-+:!]'), ' '),
        ),
      );
    } catch (e) {
      return {};
    }
  }
}
