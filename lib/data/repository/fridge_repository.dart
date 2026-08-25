import 'package:sosedifedi/data/models/user/user.dart';
import 'package:sosedifedi/data/services/fridge_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter/foundation.dart';
import 'package:injectable/injectable.dart';

abstract class FridgeRepository {
  Future<DefaultResponse> openFridge(String fridgeId);
  set user(User? user);
}

@Singleton(as: FridgeRepository)
class FridgeRepositoryImpl extends FridgeRepository {
  FridgeRepositoryImpl({
    required this.fridgeService,
  });

  @protected
  User? _currentUser;

  @override
  set user(User? user) {
    _currentUser = user;
  }

  @visibleForTesting
  @protected
  User? get user => _currentUser;

  @protected
  final FridgeService fridgeService;

  @override
  Future<DefaultResponse> openFridge(String fridgeId) {
    if (_currentUser == null) {
      return Future.value(
          const ApiResponse.error(CommonResponseError.unAuthorized()));
    }
    return fridgeService.openFridge(fridgeId, _currentUser!.token);
  }
}
