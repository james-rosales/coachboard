abstract class HomeEvent {
  const HomeEvent();
}

class HomePagePressed extends HomeEvent {
  final int page;

  const HomePagePressed(this.page);
}
