import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<T> debounce<T>(Duration duration) {
  return (events, mapper) => events.debounceTime(duration).flatMap(mapper);
}

EventTransformer<T> throttle<T>(Duration duration) {
  return (events, mapper) => events.throttleTime(duration).flatMap(mapper);
}
