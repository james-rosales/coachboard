// ignore: depend_on_referenced_packages

import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

enum Page {
  fullcourt,
  freehand,
  plays,
  login,
  halfcourt,
  magnet,
}

@freezed
class HomeState with _$HomeState {
  factory HomeState({
    @Default(Page.fullcourt) Page currentPage,
    @Default(true) bool firstIcon,
    @Default(true) bool secondIcon,
    @Default(true) bool thirdIcon,
    @Default(true) bool fourthIcon,
  }) = _HomeState;
}
