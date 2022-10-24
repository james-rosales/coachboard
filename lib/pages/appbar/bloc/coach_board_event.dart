abstract class CoachBoardEvent {
  CoachBoardEvent();
}

class ActionsPressed extends CoachBoardEvent {
  final int actions;
  ActionsPressed(this.actions);
}
