import 'package:bloc/bloc.dart';
import 'package:sosedifedi/utils/sr_bloc/sr_mixin.dart';

/// Абстракция для расширения возможностей блок для отправки SingleResult - событий которые необходимо отрендерить 1 раз
/// - Навгиация
/// - Тост
/// - Снек
/// - Какое-то взаимодействие с анимацией
abstract class SrBloc<Event, State, SR> extends Bloc<Event, State>
    with SingleResultMixin<State, SR> {
  SrBloc(State state) : super(state);
}

abstract class SrCubit<State, SR> extends Cubit<State>
    with SingleResultMixin<State, SR> {
  SrCubit(super.state);
}
