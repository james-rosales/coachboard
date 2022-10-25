import 'bloc.dart';
import 'package:bloc/bloc.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState) {
    on<EmailChanged>(_emailChanged);
    on<LoginPressed>(_loginPressed);
  }

  void _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    var email = event.email;
    emit(state.copyWith(
      email: email,
    ));
  }

  void _loginPressed(LoginPressed event, Emitter<LoginState> emit) {
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
