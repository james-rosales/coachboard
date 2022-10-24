abstract class LoginEvent {
  LoginEvent();
}

class EmailChanged extends LoginEvent {
  final String email;

  EmailChanged(this.email);
}

class LoginPressed extends LoginEvent {
  LoginPressed();
}
