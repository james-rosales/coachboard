abstract class RegisterEvent {
  RegisterEvent();
}

class FirstNameChanged extends RegisterEvent {
  final String firstName;

  FirstNameChanged(this.firstName);
}

class LastNameChanged extends RegisterEvent {
  final String lastName;

  LastNameChanged(this.lastName);
}

class MiddleNameChanged extends RegisterEvent {
  final String middleName;

  MiddleNameChanged(this.middleName);
}

class EmailChanged extends RegisterEvent {
  final String email;

  EmailChanged(this.email);
}

class PasswordChanged extends RegisterEvent {
  final String password;

  PasswordChanged(this.password);
}

class ConfirmPasswordChanged extends RegisterEvent {
  final String confirmPassword;

  ConfirmPasswordChanged(this.confirmPassword);
}

class TeamNameChanged extends RegisterEvent {
  final String teamName;

  TeamNameChanged(this.teamName);
}

class RegisterPressed extends RegisterEvent {
  RegisterPressed();
}
