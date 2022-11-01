import 'package:coachboard/models/result/result.dart';
import 'package:coachboard/models/text_field_input/text_field_input.dart';

import 'bloc.dart';
import 'package:bloc/bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(super.initialState) {
    on<FirstNameChanged>(_firstnameChanged);
    on<LastNameChanged>(_lastnameChanged);
    on<MiddleNameChanged>(_middlenameChanged);
    on<EmailChanged>(_emailChanged);
    on<PasswordChanged>(_passwordChanged);
    on<ConfirmPasswordChanged>(_confirmpasswordChanged);
    on<TeamNameChanged>(_teamnameChanged);
    on<RegisterPressed>(_registerPressed);
  }

  void _firstnameChanged(FirstNameChanged event, Emitter<RegisterState> emit) {
    var firstName = event.firstName;

    var errorType = ErrorType.none;
    if (firstName.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(
      state.copyWith.firstName(
        value: firstName,
        errorType: errorType,
      ),
    );
  }

  void _lastnameChanged(LastNameChanged event, Emitter<RegisterState> emit) {
    var lastName = event.lastName;

    var errorType = ErrorType.none;
    if (lastName.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(
      state.copyWith.lastName(
        value: lastName,
        errorType: errorType,
      ),
    );
  }

  void _middlenameChanged(
      MiddleNameChanged event, Emitter<RegisterState> emit) {
    var middleName = event.middleName;

    var errorType = ErrorType.none;
    if (middleName.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(
      state.copyWith.middleName(
        value: middleName,
        errorType: errorType,
      ),
    );
  }

  void _emailChanged(EmailChanged event, Emitter<RegisterState> emit) {
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

  void _passwordChanged(PasswordChanged event, Emitter<RegisterState> emit) {
    var password = event.password;

    var errorType = ErrorType.none;
    if (password.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(
      state.copyWith.password(
        value: password,
        errorType: errorType,
      ),
    );
  }

  void _confirmpasswordChanged(
      ConfirmPasswordChanged event, Emitter<RegisterState> emit) {
    var confirmpassword = event.confirmPassword;

    var errorType = ErrorType.none;
    if (confirmpassword.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(
      state.copyWith.confirmPassword(
        value: confirmpassword,
        errorType: errorType,
      ),
    );
  }

  void _teamnameChanged(TeamNameChanged event, Emitter<RegisterState> emit) {
    var teamName = event.teamName;

    var errorType = ErrorType.none;
    if (teamName.isEmpty) {
      errorType = ErrorType.empty;
    }
    emit(
      state.copyWith.teamName(
        value: teamName,
        errorType: errorType,
      ),
    );
  }

  Future<void> _registerPressed(
      RegisterPressed event, Emitter<RegisterState> emit) async {
    var firstNameError = state.firstName.error;
    // var lastNameError = state.lastName.error;
    // var emailError = state.email.error;
    if (state.firstName.value.isEmpty) {
      firstNameError = 'First Name must not be empty';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          firstName: state.firstName.copyWith(
            error: firstNameError,
          ),
        ),
      );
    } else {
      emit(state.copyWith(
        requestStatus: RequestStatus.inProgress,
      ));
      await Future.delayed(const Duration(seconds: 10));
      emit(state.copyWith(
        requestStatus: RequestStatus.success,
      ));
    }
  }
}
