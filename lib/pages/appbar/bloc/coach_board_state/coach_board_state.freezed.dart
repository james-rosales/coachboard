// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'coach_board_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$CoachBoardState {
  int get actionsIndex => throw _privateConstructorUsedError;

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
  $Res call({int actionsIndex});
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
    Object? actionsIndex = null,
  }) {
    return _then(_value.copyWith(
      actionsIndex: null == actionsIndex
          ? _value.actionsIndex
          : actionsIndex // ignore: cast_nullable_to_non_nullable
              as int,
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
  $Res call({int actionsIndex});
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
    Object? actionsIndex = null,
  }) {
    return _then(_$_CoachBoardState(
      actionsIndex: null == actionsIndex
          ? _value.actionsIndex
          : actionsIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_CoachBoardState implements _CoachBoardState {
  _$_CoachBoardState({this.actionsIndex = 0});

  @override
  @JsonKey()
  final int actionsIndex;

  @override
  String toString() {
    return 'CoachBoardState(actionsIndex: $actionsIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CoachBoardState &&
            (identical(other.actionsIndex, actionsIndex) ||
                other.actionsIndex == actionsIndex));
  }

  @override
  int get hashCode => Object.hash(runtimeType, actionsIndex);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoachBoardStateCopyWith<_$_CoachBoardState> get copyWith =>
      __$$_CoachBoardStateCopyWithImpl<_$_CoachBoardState>(this, _$identity);
}

abstract class _CoachBoardState implements CoachBoardState {
  factory _CoachBoardState({final int actionsIndex}) = _$_CoachBoardState;

  @override
  int get actionsIndex;
  @override
  @JsonKey(ignore: true)
  _$$_CoachBoardStateCopyWith<_$_CoachBoardState> get copyWith =>
      throw _privateConstructorUsedError;
}
