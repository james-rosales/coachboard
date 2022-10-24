import 'package:freezed_annotation/freezed_annotation.dart';

part 'coach_board_state.freezed.dart';

@freezed
class CoachBoardState with _$CoachBoardState {
  factory CoachBoardState({
    @Default(0) int actionsIndex,
  }) = _CoachBoardState;
}
