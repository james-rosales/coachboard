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

class EmailChanged extends RegisterEvent {
  final String email;

  EmailChanged(this.email);
}

class PasswordChanged extends RegisterEvent {
  final String password;

  PasswordChanged(this.password);
}

class ConfirmPasswordChanged extends RegisterEvent {
  final String confirmpassword;

  ConfirmPasswordChanged(this.confirmpassword);
}

class TeamNameChanged extends RegisterEvent {
  final String teamname;

  TeamNameChanged(this.teamname);
}

class RegisterPressed extends RegisterEvent {
  RegisterPressed();
}
