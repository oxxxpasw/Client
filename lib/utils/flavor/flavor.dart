import 'package:sosedifedi/messages.g.dart';
import 'package:flutter/services.dart';

abstract final class FlavorApi {
  static FlavorApi? _instance;

  static FlavorApi get instance {
    _instance ??= _FlavorApi();
    return _instance!;
  }

  Future<String?> getFlavor();

  Future<bool> containsKey(String key);
}

final class _FlavorApi extends FlavorApi {
  _FlavorApi() : _hostApi = FlavorHostApi();

  final FlavorHostApi _hostApi;

  @override
  Future<String?> getFlavor() async {
    try {
      final result = await Future.any<String?>([
        _hostApi.getFlavor(),
        Future.delayed(const Duration(milliseconds: 500), () => null),
      ]);
      return result;
    } catch (_) {
      return null;
    }
  }

  @override
  Future<bool> containsKey(String key) async {
    final flavor = await getFlavor();
    return flavor?.toLowerCase().contains(key.toLowerCase()) ?? false;
  }
}
