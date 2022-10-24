import 'package:bloc/bloc.dart';

import 'bloc.dart';

class CoachBoardBloc extends Bloc<CoachBoardEvent, CoachBoardState> {
  CoachBoardBloc(super.initialState) {
    on<ActionsPressed>(_actionsPressed);
  }

  void _actionsPressed(ActionsPressed event, Emitter<CoachBoardState> emit) {
    var actionsindex = event.actions;

    emit(
      state.copyWith(
        actionsIndex: actionsindex,
      ),
    );
  }
}
