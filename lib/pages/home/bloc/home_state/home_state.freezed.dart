// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'home_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$HomeState {
  Page get currentPage => throw _privateConstructorUsedError;
  bool get firstIcon => throw _privateConstructorUsedError;
  bool get secondIcon => throw _privateConstructorUsedError;
  bool get thirdIcon => throw _privateConstructorUsedError;
  bool get fourthIcon => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $HomeStateCopyWith<HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $HomeStateCopyWith<$Res> {
  factory $HomeStateCopyWith(HomeState value, $Res Function(HomeState) then) =
      _$HomeStateCopyWithImpl<$Res, HomeState>;
  @useResult
  $Res call(
      {Page currentPage,
      bool firstIcon,
      bool secondIcon,
      bool thirdIcon,
      bool fourthIcon});
}

/// @nodoc
class _$HomeStateCopyWithImpl<$Res, $Val extends HomeState>
    implements $HomeStateCopyWith<$Res> {
  _$HomeStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? firstIcon = null,
    Object? secondIcon = null,
    Object? thirdIcon = null,
    Object? fourthIcon = null,
  }) {
    return _then(_value.copyWith(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as Page,
      firstIcon: null == firstIcon
          ? _value.firstIcon
          : firstIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      secondIcon: null == secondIcon
          ? _value.secondIcon
          : secondIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      thirdIcon: null == thirdIcon
          ? _value.thirdIcon
          : thirdIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      fourthIcon: null == fourthIcon
          ? _value.fourthIcon
          : fourthIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_HomeStateCopyWith<$Res> implements $HomeStateCopyWith<$Res> {
  factory _$$_HomeStateCopyWith(
          _$_HomeState value, $Res Function(_$_HomeState) then) =
      __$$_HomeStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Page currentPage,
      bool firstIcon,
      bool secondIcon,
      bool thirdIcon,
      bool fourthIcon});
}

/// @nodoc
class __$$_HomeStateCopyWithImpl<$Res>
    extends _$HomeStateCopyWithImpl<$Res, _$_HomeState>
    implements _$$_HomeStateCopyWith<$Res> {
  __$$_HomeStateCopyWithImpl(
      _$_HomeState _value, $Res Function(_$_HomeState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? currentPage = null,
    Object? firstIcon = null,
    Object? secondIcon = null,
    Object? thirdIcon = null,
    Object? fourthIcon = null,
  }) {
    return _then(_$_HomeState(
      currentPage: null == currentPage
          ? _value.currentPage
          : currentPage // ignore: cast_nullable_to_non_nullable
              as Page,
      firstIcon: null == firstIcon
          ? _value.firstIcon
          : firstIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      secondIcon: null == secondIcon
          ? _value.secondIcon
          : secondIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      thirdIcon: null == thirdIcon
          ? _value.thirdIcon
          : thirdIcon // ignore: cast_nullable_to_non_nullable
              as bool,
      fourthIcon: null == fourthIcon
          ? _value.fourthIcon
          : fourthIcon // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_HomeState implements _HomeState {
  _$_HomeState(
      {this.currentPage = Page.fullcourt,
      this.firstIcon = true,
      this.secondIcon = true,
      this.thirdIcon = true,
      this.fourthIcon = true});

  @override
  @JsonKey()
  final Page currentPage;
  @override
  @JsonKey()
  final bool firstIcon;
  @override
  @JsonKey()
  final bool secondIcon;
  @override
  @JsonKey()
  final bool thirdIcon;
  @override
  @JsonKey()
  final bool fourthIcon;

  @override
  String toString() {
    return 'HomeState(currentPage: $currentPage, firstIcon: $firstIcon, secondIcon: $secondIcon, thirdIcon: $thirdIcon, fourthIcon: $fourthIcon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_HomeState &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage) &&
            (identical(other.firstIcon, firstIcon) ||
                other.firstIcon == firstIcon) &&
            (identical(other.secondIcon, secondIcon) ||
                other.secondIcon == secondIcon) &&
            (identical(other.thirdIcon, thirdIcon) ||
                other.thirdIcon == thirdIcon) &&
            (identical(other.fourthIcon, fourthIcon) ||
                other.fourthIcon == fourthIcon));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, currentPage, firstIcon, secondIcon, thirdIcon, fourthIcon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      __$$_HomeStateCopyWithImpl<_$_HomeState>(this, _$identity);
}

abstract class _HomeState implements HomeState {
  factory _HomeState(
      {final Page currentPage,
      final bool firstIcon,
      final bool secondIcon,
      final bool thirdIcon,
      final bool fourthIcon}) = _$_HomeState;

  @override
  Page get currentPage;
  @override
  bool get firstIcon;
  @override
  bool get secondIcon;
  @override
  bool get thirdIcon;
  @override
  bool get fourthIcon;
  @override
  @JsonKey(ignore: true)
  _$$_HomeStateCopyWith<_$_HomeState> get copyWith =>
      throw _privateConstructorUsedError;
}
