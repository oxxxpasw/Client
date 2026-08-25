import 'package:sosedifedi/data/services/token_service.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

@singleton
class TokenRepository {
  const TokenRepository({required this.tokenService});

  @protected
  final TokenService tokenService;

  Future<void> setToken(String token, String phone) async {
    tokenService.setToken(token);
  }

  Future<bool> deleteToken() async {
    return tokenService.deleteToken();
  }

  Future<String?> getToken() async {
    return tokenService.getToken();
  }
}
