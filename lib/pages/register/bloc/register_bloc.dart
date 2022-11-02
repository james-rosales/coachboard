import 'bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:coachboard/models/result/result.dart';
import 'package:coachboard/models/text_field_input/text_field_input.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(super.initialState) {
    on<FirstNameChanged>(_firstnameChanged);
    on<LastNameChanged>(_lastnameChanged);
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<ConfirmPasswordChanged>(_confirmpasswordChanged);
    on<TeamNameChanged>(_teamnameChanged);
    on<RegisterPressed>(_registerPressed);
  }

  void _firstnameChanged(FirstNameChanged event, Emitter<RegisterState> emit) {
    var firstName = event.firstName;

    emit(state.copyWith.firstName(
      value: firstName,
      errorType: ErrorType.none,
    ));
  }

  void _lastnameChanged(LastNameChanged event, Emitter<RegisterState> emit) {
    var lastName = event.lastName;

    emit(state.copyWith.lastName(
      value: lastName,
      errorType: ErrorType.none,
    ));
  }

  void _emailChanged(EmailChanged event, Emitter<RegisterState> emit) {
    var email = event.email;

    emit(state.copyWith.email(
      value: email,
      errorType: ErrorType.none,
    ));
  }

  void _passwordChanged(PasswordChanged event, Emitter<RegisterState> emit) {
    var password = event.password;

    emit(state.copyWith.password(
      value: password,
      errorType: ErrorType.none,
    ));
  }

  void _confirmpasswordChanged(
      ConfirmPasswordChanged event, Emitter<RegisterState> emit) {
    var confirmpassword = event.confirmpassword;

    emit(state.copyWith.confirmpassword(
      value: confirmpassword,
      errorType: ErrorType.none,
    ));
  }

  void _teamnameChanged(TeamNameChanged event, Emitter<RegisterState> emit) {
    var teamname = event.teamname;

    emit(state.copyWith.teamname(
      value: teamname,
      errorType: ErrorType.none,
    ));
  }

  Future<void> _registerPressed(
      RegisterPressed event, Emitter<RegisterState> emit) async {
    emit(state.copyWith(
      requestStatus: RequestStatus.waiting,
    ));

    if (state.firstName.value.isEmpty) {
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        firstName: state.firstName.copyWith(
          errorType: ErrorType.empty,
        ),
      ));
    } else if (state.lastName.value.isEmpty) {
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        lastName: state.lastName.copyWith(
          errorType: ErrorType.empty,
        ),
      ));
    } else if (state.email.value.isEmpty) {
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        email: state.email.copyWith(
          errorType: ErrorType.empty,
        ),
      ));
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(state.email.value)) {
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        email: state.email.copyWith(
          errorType: ErrorType.format,
        ),
      ));
    } else if (state.password.value.isEmpty) {
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        password: state.password.copyWith(
          errorType: ErrorType.empty,
        ),
      ));
    } else if (state.confirmpassword != state.password) {
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        confirmpassword: state.confirmpassword.copyWith(
          errorType: ErrorType.format,
        ),
      ));
    } else if (state.teamname.value.isEmpty) {
      emit(state.copyWith(
        requestStatus: RequestStatus.failure,
        teamname: state.teamname.copyWith(
          errorType: ErrorType.empty,
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
