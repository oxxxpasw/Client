import 'dart:convert';

import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:http_mock_adapter/http_mock_adapter.dart';

import 'app_info_intercepter.dart';

///Абстракция для создания DIO-клиентов
abstract class DioClientCreator {
  Dio makeDioJsonRpcClient();

  Dio makeDioCustomerApiClient();

  Dio makeDioStaticFilesClient();

  Dio makeDioSbpClient();

  Dio makeDioPaymentClient();

  Dio makeDioOrderClient();

  Dio makeDioGeocoderClient();

  Dio makeFridgeApiClient();

  Dio makeFileDownloaderClient();
}

class DioClientCreatorImpl implements DioClientCreator {
  static const defaultConnectTimeout = Duration(milliseconds: 5000);
  static const defaultReceiveTimeout = Duration(milliseconds: 25000);

  @protected
  final AppEnvironment appEnvironment;

  DioClientCreatorImpl(this.appEnvironment);

  @override
  Dio makeDioJsonRpcClient() => _baseDio(appEnvironment.authServiceEndpoint);

  @override
  Dio makeDioCustomerApiClient() =>
      _baseDio('${appEnvironment.customerApiEndpoint}json.rpc/');

  @override
  Dio makeDioStaticFilesClient() =>
      _baseDio('${appEnvironment.apiEndpoint}static/');

  @override
  Dio makeDioSbpClient() => _baseDio(appEnvironment.sbpUrl);

  @override
  Dio makeDioPaymentClient() =>
      _baseDio('${appEnvironment.paymentServiceEndpoint}/api');

  @override
  Dio makeDioOrderClient() => _baseDio(appEnvironment.orderEndpoint);

  @override
  Dio makeDioGeocoderClient() => _baseDio(appEnvironment.geocoderApiUrl);

  @override
  Dio makeFridgeApiClient() => _baseDio(appEnvironment.fridgeApiUrl);

  @override
  Dio makeFileDownloaderClient() =>
      _baseDio('')..options.persistentConnection = false;

  Dio _baseDio(final String url) {
    final startDio = Dio();

    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = defaultConnectTimeout;
    startDio.options.receiveTimeout = defaultReceiveTimeout;
    startDio.options.contentType = Headers.jsonContentType;
    startDio.transformer = FlutterTransformer();
    startDio.interceptors.add(AppInfoInterceptor());
    return startDio;
  }
}

class DioTestClientCreatorImpl implements DioClientCreator {
  static const defaultConnectTimeout = Duration(milliseconds: 5000);
  static const defaultReceiveTimeout = Duration(milliseconds: 25000);

  @protected
  final AppEnvironment appEnvironment;

  DioTestClientCreatorImpl(this.appEnvironment);

  @override
  Dio makeDioJsonRpcClient() => _baseDio(appEnvironment.authServiceEndpoint);

  @override
  Dio makeDioCustomerApiClient() =>
      _baseDio('${appEnvironment.customerApiEndpoint}json.rpc/');

  @override
  Dio makeDioStaticFilesClient() =>
      _baseDio('${appEnvironment.apiEndpoint}static/');

  @override
  Dio makeDioSbpClient() => _baseDio(appEnvironment.sbpUrl);

  @override
  Dio makeDioPaymentClient() =>
      _baseDio('${appEnvironment.paymentServiceEndpoint}/api');

  @override
  Dio makeDioOrderClient() => _baseDio(appEnvironment.orderEndpoint);

  @override
  Dio makeDioGeocoderClient() => _baseDio(appEnvironment.geocoderApiUrl);

  Dio _baseDio(final String url) {
    final startDio = Dio();

    startDio.options.baseUrl = url;
    startDio.options.connectTimeout = defaultConnectTimeout;
    startDio.options.receiveTimeout = defaultReceiveTimeout;
    startDio.transformer = FlutterTransformer();
    startDio.httpClientAdapter = DioAdapter(dio: startDio);
    return startDio;
  }

  @override
  Dio makeFridgeApiClient() => _baseDio(appEnvironment.fridgeApiUrl);

  @override
  Dio makeFileDownloaderClient() =>
      _baseDio('')..options.persistentConnection = false;
}

class FlutterTransformer extends DefaultTransformer {
  FlutterTransformer() : super(jsonDecodeCallback: _parseJson);
}

dynamic _parseAndDecode(String response) {
  return jsonDecode(response);
}

Future _parseJson(String text) {
  return compute<String, dynamic>(_parseAndDecode, text);
}
