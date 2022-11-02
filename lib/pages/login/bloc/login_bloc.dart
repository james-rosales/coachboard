import 'bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:coachboard/models/result/result.dart';
import 'package:coachboard/models/text_field_input/text_field_input.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc(super.initialState) {
    on<EmailChanged>(_emailChanged);
    on<LoginPressed>(_loginPressed);
  }

  void _emailChanged(EmailChanged event, Emitter<LoginState> emit) {
    var email = event.email;

    var errorType = ErrorType.none;
    if (email.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(
      state.copyWith.email(
        value: email,
        errorType: errorType,
      ),
    );
  }

  Future<void> _loginPressed(
      LoginPressed event, Emitter<LoginState> emit) async {
    var errorText = state.email.error;
    emit(state.copyWith(
      requestStatus: RequestStatus.waiting,
    ));
    if (state.email.value.isEmpty) {
      errorText = 'Invalid Email Address';
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        email: state.email.copyWith(
          errorType: ErrorType.empty,
          error: errorText,
        ),
      ));
    } else {
      emit(state.copyWith(
        requestStatus: RequestStatus.inProgress,
      ));
      await Future.delayed(const Duration(seconds: 3));
      emit(state.copyWith(
        requestStatus: RequestStatus.success,
      ));
    }
  }
}
