import 'package:auto_route/auto_route.dart';
import 'package:rxdart/rxdart.dart';
import 'package:flutter/widgets.dart';

class CurrentRouteToStreamObserver extends AutoRouterObserver {
  static final _subject = BehaviorSubject<Route>();

  Stream<Route> get currentRouteStream => _subject.stream;

  @override
  void didPush(Route route, Route? previousRoute) {
    _addToStream(route);
  }

  @override
  void didPop(Route route, Route? previousRoute) {
    _addToStream(route);
  }

  @override
  void didReplace({Route? newRoute, Route? oldRoute}) {
    final current = _subject.valueOrNull;
    if (current != null && newRoute != null && current == oldRoute) {
      _addToStream(newRoute);
    }
  }

  @override
  void didRemove(Route route, Route? previousRoute) {
    final current = _subject.valueOrNull;
    if (current != null && current == previousRoute) {
      _addToStream(route);
    }
  }

  void _addToStream(Route route) {
    _subject.add(route);
  }
}
