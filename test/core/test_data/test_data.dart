import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';

abstract class TestData {
  static Exception testException = Exception('testException');
  static CommonResponseError<DefaultApiError> errorResponse =
      CommonResponseError.undefinedError(testException);
}
