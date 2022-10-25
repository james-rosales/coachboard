// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

enum Page {
  fullcourt,
  freehand,
  plays,
  login,
  register,
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(Page.fullcourt) Page currentPage,
  }) = _HomeState;
}
