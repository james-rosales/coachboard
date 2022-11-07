import 'bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:coachboard/pages/home/home.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(super.initialState) {
    on<FirstIconPressed>(_firsticonPressed);
    on<SecondIconPressed>(_secondiconPressed);
    on<FourthIconPressed>(_fourthiconPressed);
  }

  void _firsticonPressed(FirstIconPressed event, Emitter<HomeState> emit) {
    var icon = event.icon;
    var page = state.currentPage;
    if (icon == true) {
      page = HomeTab.halfcourt;
    } else {
      page = HomeTab.fullcourt;
    }
    emit(
      state.copyWith(
        firstIcon: icon = !icon,
        currentPage: page,
      ),
    );
  }

  void _secondiconPressed(SecondIconPressed event, Emitter<HomeState> emit) {
    var icon = event.icon;
    var page = state.currentPage;
    if (icon == true) {
      page = HomeTab.magnet;
    } else {
      page = HomeTab.freehand;
    }
    emit(
      state.copyWith(
        secondIcon: icon = !icon,
        currentPage: page,
      ),
    );
  }

  void _fourthiconPressed(FourthIconPressed event, Emitter<HomeState> emit) {
    emit(
      state.copyWith(
        currentPage: HomeTab.login,
      ),
    );
  }
}
