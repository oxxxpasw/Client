import 'package:sosedifedi/data/services/analyst_service.dart';
import 'package:sosedifedi/keys.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:rxdart/rxdart.dart';

class CustomBlocObserver extends BlocObserver {
  static BehaviorSubject errorEventSubject = BehaviorSubject();

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    String? page;
    final context = Keys.navigatorKey.currentContext;
    if (context != null) {
      page = ModalRoute.of(context)?.settings.name;
    }
    GetIt.I.get<AnalystService>().error(
          '$error on $bloc bloc\n$stackTrace',
          page,
        );
    errorEventSubject.add(error);
    super.onError(bloc, error, stackTrace);
  }
}
