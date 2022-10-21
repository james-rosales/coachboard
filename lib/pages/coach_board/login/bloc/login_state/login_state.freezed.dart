// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'login_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoachBoardState {
  String get email => throw _privateConstructorUsedError;
  String? get errorTextemail => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CoachBoardStateCopyWith<CoachBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoachBoardStateCopyWith<$Res> {
  factory $CoachBoardStateCopyWith(
          CoachBoardState value, $Res Function(CoachBoardState) then) =
      _$CoachBoardStateCopyWithImpl<$Res, CoachBoardState>;
  @useResult
  $Res call({String email, String? errorTextemail});
}

/// @nodoc
class _$CoachBoardStateCopyWithImpl<$Res, $Val extends CoachBoardState>
    implements $CoachBoardStateCopyWith<$Res> {
  _$CoachBoardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? errorTextemail = freezed,
  }) {
    return _then(_value.copyWith(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      errorTextemail: freezed == errorTextemail
          ? _value.errorTextemail
          : errorTextemail // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoachBoardStateCopyWith<$Res>
    implements $CoachBoardStateCopyWith<$Res> {
  factory _$$_CoachBoardStateCopyWith(
          _$_CoachBoardState value, $Res Function(_$_CoachBoardState) then) =
      __$$_CoachBoardStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String email, String? errorTextemail});
}

/// @nodoc
class __$$_CoachBoardStateCopyWithImpl<$Res>
    extends _$CoachBoardStateCopyWithImpl<$Res, _$_CoachBoardState>
    implements _$$_CoachBoardStateCopyWith<$Res> {
  __$$_CoachBoardStateCopyWithImpl(
      _$_CoachBoardState _value, $Res Function(_$_CoachBoardState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
    Object? errorTextemail = freezed,
  }) {
    return _then(_$_CoachBoardState(
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      errorTextemail: freezed == errorTextemail
          ? _value.errorTextemail
          : errorTextemail // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_CoachBoardState implements _CoachBoardState {
  _$_CoachBoardState({this.email = '', this.errorTextemail = null});

  @override
  @JsonKey()
  final String email;
  @override
  @JsonKey()
  final String? errorTextemail;

  @override
  String toString() {
    return 'CoachBoardState(email: $email, errorTextemail: $errorTextemail)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoachBoardState &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.errorTextemail, errorTextemail) ||
                other.errorTextemail == errorTextemail));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, errorTextemail);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoachBoardStateCopyWith<_$_CoachBoardState> get copyWith =>
      __$$_CoachBoardStateCopyWithImpl<_$_CoachBoardState>(this, _$identity);
}

abstract class _CoachBoardState implements CoachBoardState {
  factory _CoachBoardState({final String email, final String? errorTextemail}) =
      _$_CoachBoardState;

  @override
  String get email;
  @override
  String? get errorTextemail;
  @override
  @JsonKey(ignore: true)
  _$$_CoachBoardStateCopyWith<_$_CoachBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
