import 'package:coachboard/models/result/result.dart';
import 'package:coachboard/models/text_field_input/text_field_input.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_state.freezed.dart';

enum ErrorTypeState {
  empty,
  length,
  value,
  format,
  none,
}

@freezed
class RegisterState with _$RegisterState {
  factory RegisterState({
    @Default(ErrorType.none) ErrorType errorType,
    @Default('') String? errorText,
    @Default('') String firstName,
    @Default('') String lastName,
    @Default('') String email,
    @Default('') String password,
    @Default('') String confirmpassword,
    @Default('') String teamname,
    @Default(RequestStatus.waiting) RequestStatus requestStatus,
  }) = _RegisterState;
}
