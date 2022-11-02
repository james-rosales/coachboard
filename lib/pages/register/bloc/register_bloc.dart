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

    emit(
      state.copyWith(
        firstName: firstName,
      ),
    );
  }

  void _lastnameChanged(LastNameChanged event, Emitter<RegisterState> emit) {
    var lastName = event.lastName;
    emit(
      state.copyWith(
        lastName: lastName,
      ),
    );
  }

  void _emailChanged(EmailChanged event, Emitter<RegisterState> emit) {
    var email = event.email;
    emit(
      state.copyWith(
        email: email,
      ),
    );
  }

  void _passwordChanged(PasswordChanged event, Emitter<RegisterState> emit) {
    var password = event.password;
    emit(
      state.copyWith(
        password: password,
      ),
    );
  }

  void _confirmpasswordChanged(
      ConfirmPasswordChanged event, Emitter<RegisterState> emit) {
    var confirmpassword = event.confirmpassword;
    emit(
      state.copyWith(
        confirmpassword: confirmpassword,
      ),
    );
  }

  void _teamnameChanged(TeamNameChanged event, Emitter<RegisterState> emit) {
    var teamname = event.teamname;
    emit(
      state.copyWith(
        teamname: teamname,
      ),
    );
  }

  Future<void> _registerPressed(
      RegisterPressed event, Emitter<RegisterState> emit) async {
    var errorText = state.errorText;
    emit(state.copyWith(
      requestStatus: RequestStatus.waiting,
    ));
    if (state.firstName.isEmpty) {
      errorText = 'First name must not be empty';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          errorType: ErrorType.empty,
          errorText: errorText,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
    } else if (state.lastName.isEmpty) {
      errorText = 'Last name must not be empty';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          errorType: ErrorType.empty,
          errorText: errorText,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
    } else if (state.email.isEmpty) {
      errorText = 'Email  must not be empty';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          errorType: ErrorType.empty,
          errorText: errorText,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
    } else if (!RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(state.email)) {
      errorText = 'Email address must be valid';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          errorType: ErrorType.empty,
          errorText: errorText,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
    } else if (state.password.isEmpty) {
      errorText = 'Password is too short';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          errorType: ErrorType.empty,
          errorText: errorText,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
    } else if (state.confirmpassword != state.password) {
      errorText = 'Password does not match';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          errorType: ErrorType.empty,
          errorText: errorText,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
      ));
    } else if (state.teamname.isEmpty) {
      errorText = 'Team Name must not be empty';
      emit(
        state.copyWith(
          requestStatus: RequestStatus.failure,
          errorType: ErrorType.empty,
          errorText: errorText,
        ),
      );
      emit(state.copyWith(
        requestStatus: RequestStatus.waiting,
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
