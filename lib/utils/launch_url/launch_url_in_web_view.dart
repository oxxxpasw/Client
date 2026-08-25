import 'package:flutter_inappwebview/flutter_inappwebview.dart';

///Запускает [url] с помощью [InAppBrowser.openWithSystemBrowser].
///Позволяет избежать обработку [url] как диплинк для приложения.
Future<void> launchUrlInBrowser(String url) async {
  try {
    final uri = Uri.parse(url).replace(
      fragment: 'no_universal_links',
    );

    await InAppBrowser.openWithSystemBrowser(url: WebUri.uri(uri));
  } catch (_) {}
}
