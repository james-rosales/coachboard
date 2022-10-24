import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default('') String email,
    @Default(null) String? errorTextemail,
  }) = _LoginState;
}