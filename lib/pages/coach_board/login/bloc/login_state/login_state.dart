import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class CoachBoardState with _$CoachBoardState {
  factory CoachBoardState({
    @Default('') String email,
    @Default(null) String? errorTextemail,
  }) = _CoachBoardState;
}
