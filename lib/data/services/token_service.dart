import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class TokenService {
  Future<void> setToken(String token);

  Future<bool> deleteToken();

  Future<String?> getToken();

  Future<String?> getPhone();
}

@releaseEnv
@debugEnv
@preResolve
@Singleton(as: TokenService)
class TokenServiceImpl extends TokenService {
  TokenServiceImpl._(this._prefs);

  @factoryMethod
  static Future<TokenService> init() async {
    return TokenServiceImpl._(await SharedPreferences.getInstance());
  }

  final SharedPreferences _prefs;

  @override
  Future<void> setToken(String token) async {
    await _prefs.setString('token', token);
  }

  @override
  Future<bool> deleteToken() async {
    final bool deleteToken = await _prefs.remove('token');
    final bool deletePhone = await _prefs.remove('phone');
    return deleteToken && deletePhone;
  }

  @override
  Future<String?> getToken() async {
    return _prefs.getString('token');
  }

  @override
  Future<String?> getPhone() async {
    return _prefs.getString('phone');
  }
}

@testEnv
@Singleton(as: TokenService)
class TokenServiceTestImpl extends TokenService {
  String? token;

  @override
  Future<void> setToken(String token) {
    token = token;
    return SynchronousFuture(null);
  }

  @override
  Future<bool> deleteToken() {
    token = null;
    return SynchronousFuture(true);
  }

  @override
  Future<String?> getToken() async {
    return SynchronousFuture(token);
  }

  @override
  Future<String?> getPhone() async {
    return SynchronousFuture(null);
  }
}
