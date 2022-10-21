abstract class CoachBoardEvent {
  CoachBoardEvent();
}

class EmailChanged extends CoachBoardEvent {
  final String email;

  EmailChanged(this.email);
}

class LoginPressed extends CoachBoardEvent {
  LoginPressed();
}
