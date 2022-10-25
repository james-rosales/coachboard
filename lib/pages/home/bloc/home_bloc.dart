import 'bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:coachboard/pages/home/home.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initialState) {
    on<HomePagePressed>(_homepagePressed);
  }

  void _homepagePressed(HomePagePressed event, Emitter<HomeState> emit) {
    emit(state.copyWith(
      currentPage: Page.values[event.page],
    ));
    print(state.currentPage.index);
  }
}
