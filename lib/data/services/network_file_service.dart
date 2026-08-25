import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:sosedifedi/data/const/injectable_names.dart';
import 'package:sosedifedi/utils/dio_error_handler/dio_error_handler.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';

typedef ProgressCallback = void Function(int count, int total);

class NetworkFileOptions {
  ///Путь для загрузки файла
  ///Если файл уже существует, он будет заменен
  final File? file;

  ///Вызывается при изменении прогресса
  final ProgressCallback? progressCallback;

  const NetworkFileOptions({
    this.file,
    this.progressCallback,
  });
}

abstract class NetworkFileService {
  const NetworkFileService();

  Future<DefaultResponse<File>> download(
    Uri url, [
    NetworkFileOptions options,
  ]);
}

@LazySingleton(as: NetworkFileService)
class NetworkFileServiceImpl implements NetworkFileService {
  const NetworkFileServiceImpl({
    @Named(InjectableNames.fileDownloaderClient) required this.dio,
    @Named(InjectableNames.fileDownloaderClient) required this.errorHandler,
  });

  @protected
  final Dio dio;

  @protected
  final DioErrorHandler<DefaultApiError> errorHandler;

  @override
  Future<DefaultResponse<File>> download(
    Uri url, [
    NetworkFileOptions options = const NetworkFileOptions(),
  ]) async {
    return _download(url.toString(), options);
  }

  Future<File> _createFile(Uri url) async {
    final separator = p.separator;
    final tempDir = (await getTemporaryDirectory()).path;
    final fileName = p.basename(url.path);

    return File(
      '$tempDir${separator}downloads$separator$fileName',
    );
  }

  Future<DefaultResponse<File>> _download(
    String url,
    NetworkFileOptions options,
  ) async {
    try {
      var file = options.file ?? await _createFile(Uri.parse(url));
      if (await file.exists()) {
        await file.delete();
      }
      final response = await errorHandler.processRequest<Response>(
        () => dio.download(
          url,
          file.path,
          onReceiveProgress: options.progressCallback,
          deleteOnError: true,
        ),
        false,
      );
      if (response.hasError) {
        return ApiResponse.error(response.error);
      }
      return ApiResponse.success(file);
    } catch (e) {
      return ApiResponse.error(CommonResponseError.undefinedError(e));
    }
  }
}
