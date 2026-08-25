class UiException implements Exception {
  final dynamic error;

  UiException._([this.error]);

  factory UiException(dynamic error) {
    if (error is Exception || error is String) {
      return UiException._(
        error.toString().replaceAll(RegExp(r'^Exception:|Exception'), ''),
      );
    }
    return UiException._(error);
  }

  String get message => (error?.toString()) ?? '';

  @override
  String toString() {
    Object? error = this.error;
    if (error == null) return "Произошла ошибка";
    return error.toString();
  }
}
