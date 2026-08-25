// import 'dart:async';
// import 'dart:io';
//
// import 'package:dio/dio.dart';
// import 'package:flutter/foundation.dart';
// import 'package:path/path.dart' as p;
// import 'package:path_provider/path_provider.dart';
// import 'package:sosedifedi/utils/functional_models/api_response.dart';
// import 'package:url_launcher/url_launcher.dart';
//
// typedef ProgressCallback = void Function(int count, int total);
//
// abstract class NetworkFile {
//   const NetworkFile();
//   static NetworkFile? _instance;
//
//   static NetworkFile get instance {
//     _instance ??= NetworkFileBaseImpl();
//     return _instance!;
//   }
//
//   Future<DefaultResponse<File>> download(Uri url, NetworkFileOptions options);
// }
//
// class NetworkFileBaseImpl implements NetworkFile {
//   @override
//   Future<File> download(Uri url, NetworkFileOptions options) async {
//     return _download(url.toString(), options);
//   }
//
//   Future<File> _createFile(Uri url) async {
//     final separator = p.separator;
//     final tempDir = (await getTemporaryDirectory()).path;
//     final fileName = p.basename(url.toString());
//
//     return File(
//       '$tempDir${separator}downloads$separator$fileName',
//     );
//   }
//
//   Future<File> _download(
//     String url,
//     NetworkFileOptions options,
//   ) async {
//     var shouldCloseClient = false;
//     var client = options.client;
//
//     if (client == null) {
//       shouldCloseClient = true;
//       client = Dio(BaseOptions());
//     }
//
//     client.download(url, options)
//
//     var file = options.file ?? await _createFile(Uri.parse(url));
//
//     final completer = Completer<File>();
//
//     StreamSubscription? subscription;
//     RandomAccessFile? sink;
//
//     try {
//       if (await file.exists()) {
//         await file.delete();
//       }
//
//
//
//       file = await file.create(recursive: true);
//       sink = await file.open(mode: FileMode.writeOnlyAppend);
//
//       final response = await client.get<ResponseBody>(
//         url,
//         options: Options(
//           responseType: ResponseType.stream,
//         ),
//       );
//       subscription = response.data!.stream.listen(
//         (Uint8List data) async {
//           subscription!.pause();
//           await sink!.writeFrom(data);
//           final currentProgress = data.length;
//           options.progressCallback?.call(currentProgress, total);
//           subscription.resume();
//         },
//         onDone: () async {
//           if (!completer.isCompleted) {
//             completer.complete(file);
//           }
//           subscription!.cancel();
//           if (shouldCloseClient) client?.close();
//           await sink!.close();
//         },
//         onError: (error) async => throw error,
//       );
//
//       return completer.future;
//     } catch (e) {
//       subscription?.cancel();
//       if (shouldCloseClient) client.close();
//       await sink?.close();
//       await file.delete();
//       rethrow;
//     }
//   }
// }
//
// class NetworkFileOptions {
//   ///Клиент для HTTP запроса
//   ///Если не null, после окончания загрузки необходимо вызвать [dio.close()]
//   final Dio? client;
//
//   ///Путь для загрузки файла
//   ///Если файл уже существует, он будет заменен
//   final File? file;
//
//   ///Вызывается при изменении прогресса
//   final ProgressCallback? progressCallback;
//
//   const NetworkFileOptions({
//     this.client,
//     this.file,
//     this.progressCallback,
//   });
// }
