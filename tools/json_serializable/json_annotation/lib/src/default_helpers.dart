// Copyright (c) 2018, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

typedef _CastFunction<R> = R Function(Object?);

/// Helper function used in generated code when
/// `JsonSerializableGenerator.defaultOnException` is `true`.
///
/// Should not be used directly.
T $defaultCreate<T>(
  String className,
  Map map,
  T Function(
    S Function<S>(
      String,
      _CastFunction<S>, {
      Object? Function(Map, String)? readValue,
      S? defaultValue,
    }),
  )
  constructor, {
  Map<String, String> fieldKeyMap = const {},
}) {
  Q _checkedConvert<Q>(
    String key,
    _CastFunction<Q> convertFunction, {
    Object? Function(Map, String)? readValue,
    Q? defaultValue,
  }) =>
      $defaultConvert<Q>(
        map,
        key,
        convertFunction,
        readValue: readValue,
        defaultValue: defaultValue,
      );

  return constructor(_checkedConvert);
}

/// Helper function used in generated code when
/// `JsonSerializableGenerator.defaultOnException` is `true`.
///
/// Should not be used directly.
T $defaultConvert<T>(
  Map map,
  String key,
  T Function(dynamic) castFunc, {
  Object? Function(Map, String)? readValue,
  T? defaultValue,
}) {
  try {
    return castFunc(readValue == null ? map[key] : readValue(map, key));
  } catch (error) {
    if (defaultValue != null) {
      return defaultValue;
    }
    rethrow;
  }
}
