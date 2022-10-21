import 'package:bloc/bloc.dart';

import 'bloc.dart';

class CoachBoardBloc extends Bloc<CoachBoardEvent, CoachBoardState> {
  CoachBoardBloc(super.initialState) {
    on<EmailChanged>(_emailChanged);
    on<LoginPressed>(_loginPressed);
  }

  void _emailChanged(EmailChanged event, Emitter<CoachBoardState> emit) {
    var email = event.email;
    emit(state.copyWith(
      email: email,
    ));
  }

  void _loginPressed(LoginPressed event, Emitter<CoachBoardState> emit) {
    var errorEmail = state.errorTextemail;

    if (state.email.isEmpty) {
      errorEmail = 'Email address cannot be empty';
    } else {
      errorEmail = null;
    }

    emit(state.copyWith(
      errorTextemail: errorEmail,
    ));
  }
}
