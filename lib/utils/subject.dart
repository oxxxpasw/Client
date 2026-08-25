import 'dart:async';

import 'package:rxdart/rxdart.dart';
import 'package:rxdart/src/utils/empty.dart';

class ValueSubject<T> extends Subject<T> implements ValueStream<T> {
  final _Wrapper<T> _wrapper;

  ValueSubject._(
    StreamController<T> controller,
    Stream<T> stream,
    this._wrapper,
  ) : super(controller, stream);

  /// Constructs a [ValueSubject], optionally pass handlers for
  /// [onListen], [onCancel] and a flag to handle events [sync].
  ///
  /// See also [StreamController.broadcast]
  factory ValueSubject({
    void Function()? onListen,
    void Function()? onCancel,
    bool sync = false,
  }) {
    // ignore: close_sinks
    final controller = StreamController<T>.broadcast(
      onListen: onListen,
      onCancel: onCancel,
      sync: sync,
    );

    final wrapper = _Wrapper<T>();

    return ValueSubject<T>._(controller, controller.stream, wrapper);
  }

  /// Constructs a [ValueSubject], optionally pass handlers for
  /// [onListen], [onCancel] and a flag to handle events [sync].
  ///
  /// [seedValue] becomes the current [value] and is emitted immediately.
  ///
  /// See also [StreamController.broadcast]
  factory ValueSubject.seeded(
    T seedValue, {
    void Function()? onListen,
    void Function()? onCancel,
    bool sync = false,
  }) {
    // ignore: close_sinks
    final controller = StreamController<T>.broadcast(
      onListen: onListen,
      onCancel: onCancel,
      sync: sync,
    );

    final wrapper = _Wrapper<T>.seeded(seedValue);

    return ValueSubject<T>._(
      controller,
      controller.stream,
      wrapper,
    );
  }

  @override
  void onAdd(T event) => _wrapper.setValue(event);

  @override
  void onAddError(Object error, [StackTrace? stackTrace]) =>
      _wrapper.setError(error, stackTrace);

  @override
  ValueStream<T> get stream => this;

  @override
  bool get hasValue => isNotEmpty(_wrapper.value);

  @override
  T get value {
    final value = _wrapper.value;
    if (isNotEmpty(value)) {
      return value as T;
    }
    throw ValueStreamError.hasNoValue();
  }

  @override
  T? get valueOrNull => unbox(_wrapper.value);

  /// Set and emit the new value.
  set value(T newValue) => add(newValue);

  @override
  bool get hasError => _wrapper.errorAndStackTrace != null;

  @override
  Object? get errorOrNull => _wrapper.errorAndStackTrace?.error;

  @override
  Object get error {
    final errorAndSt = _wrapper.errorAndStackTrace;
    if (errorAndSt != null) {
      return errorAndSt.error;
    }
    throw ValueStreamError.hasNoError();
  }

  @override
  StackTrace? get stackTrace => _wrapper.errorAndStackTrace?.stackTrace;

  @override
  StreamNotification<T>? get lastEventOrNull {
    if (isNotEmpty(_wrapper.value)) {
      return StreamNotification.data(_wrapper.value as T);
    }
    final errorAndSt = _wrapper.errorAndStackTrace;
    if (errorAndSt != null) {
      return StreamNotification.error(errorAndSt.error, errorAndSt.stackTrace);
    }
    return null;
  }
}

class _Wrapper<T> {
  bool isValue;
  var value = EMPTY;
  ErrorAndStackTrace? errorAndStackTrace;

  /// Non-seeded constructor
  _Wrapper() : isValue = false;

  _Wrapper.seeded(this.value) : isValue = true;

  void setValue(T event) {
    value = event;
    isValue = true;
  }

  void setError(Object error, StackTrace? stackTrace) {
    errorAndStackTrace = ErrorAndStackTrace(error, stackTrace);
    isValue = false;
  }
}
