import 'dart:io';

void main(List<String> arguments) async {
  if (arguments.isEmpty) {
    print('Usage: dart script.dart <directory_path>');
    return;
  }

  final directoryPath = arguments[0];
  final directory = Directory(directoryPath);

  if (!await directory.exists()) {
    print('Directory does not exist: $directoryPath');
    return;
  }

  final files = directory.listSync().whereType<File>();

  for (var file in files) {
    final fileName = file.uri.pathSegments.last;
    final match = RegExp(r'(.+)@([0-9.]+)x\.png$').firstMatch(fileName);

    if (match != null) {
      final baseName = match.group(1)!;
      String suffix = match.group(2)!;

      // Добавляем .0 к целым числам
      if (!suffix.contains('.')) {
        suffix = '$suffix.0';
      }

      final newDirPath = '${directory.path}/${suffix}x';
      final newDir = Directory(newDirPath);

      // Создаем поддиректорию, если она отсутствует
      if (!await newDir.exists()) {
        await newDir.create();
      }

      // Перемещаем и переименовываем файл
      final newFilePath = '$newDirPath/$baseName.png';
      await file.rename(newFilePath);
      print('Moved: $fileName -> $newFilePath');
    }
  }

  print('Processing completed.');
}
