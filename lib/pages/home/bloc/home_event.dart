abstract class HomeEvent {
  const HomeEvent();
}

class FirstIconPressed extends HomeEvent {
  final bool icon;

  const FirstIconPressed(this.icon);
}

class SecondIconPressed extends HomeEvent {
  final bool icon;

  const SecondIconPressed(this.icon);
}

class ThirdIconPressed extends HomeEvent {
  final bool icon;

  const ThirdIconPressed(this.icon);
}

class FourthIconPressed extends HomeEvent {
  const FourthIconPressed();
}
