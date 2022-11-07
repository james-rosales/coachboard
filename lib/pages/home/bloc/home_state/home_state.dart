// ignore: depend_on_referenced_packages
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

enum HomeTab {
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
    @Default(HomeTab.fullcourt) HomeTab currentPage,
    @Default(true) bool firstIcon,
    @Default(null) IconData? icon,
    @Default(true) bool secondIcon,
    @Default(true) bool thirdIcon,
    @Default(true) bool fourthIcon,
  }) = _HomeState;
}
