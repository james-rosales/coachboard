import 'package:coachboard/models/result/result.dart';
import 'package:coachboard/models/text_field_input/text_field_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  factory LoginState({
    @Default(TextFieldInput()) TextFieldInput email,
    @Default(TextFieldInput()) TextFieldInput password,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _LoginState;
}
