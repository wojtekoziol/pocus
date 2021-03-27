// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'prefs_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$PrefsStateTearOff {
  const _$PrefsStateTearOff();

  _PrefsState call(
      {required int pomodoroDuration,
      required int shortBreakDuration,
      required int longBreakDuration,
      required int intervalsNumber}) {
    return _PrefsState(
      pomodoroDuration: pomodoroDuration,
      shortBreakDuration: shortBreakDuration,
      longBreakDuration: longBreakDuration,
      intervalsNumber: intervalsNumber,
    );
  }
}

/// @nodoc
const $PrefsState = _$PrefsStateTearOff();

/// @nodoc
mixin _$PrefsState {
  int get pomodoroDuration => throw _privateConstructorUsedError;
  int get shortBreakDuration => throw _privateConstructorUsedError;
  int get longBreakDuration => throw _privateConstructorUsedError;
  int get intervalsNumber => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PrefsStateCopyWith<PrefsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PrefsStateCopyWith<$Res> {
  factory $PrefsStateCopyWith(
          PrefsState value, $Res Function(PrefsState) then) =
      _$PrefsStateCopyWithImpl<$Res>;
  $Res call(
      {int pomodoroDuration,
      int shortBreakDuration,
      int longBreakDuration,
      int intervalsNumber});
}

/// @nodoc
class _$PrefsStateCopyWithImpl<$Res> implements $PrefsStateCopyWith<$Res> {
  _$PrefsStateCopyWithImpl(this._value, this._then);

  final PrefsState _value;
  // ignore: unused_field
  final $Res Function(PrefsState) _then;

  @override
  $Res call({
    Object? pomodoroDuration = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
    Object? intervalsNumber = freezed,
  }) {
    return _then(_value.copyWith(
      pomodoroDuration: pomodoroDuration == freezed
          ? _value.pomodoroDuration
          : pomodoroDuration // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      intervalsNumber: intervalsNumber == freezed
          ? _value.intervalsNumber
          : intervalsNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$PrefsStateCopyWith<$Res> implements $PrefsStateCopyWith<$Res> {
  factory _$PrefsStateCopyWith(
          _PrefsState value, $Res Function(_PrefsState) then) =
      __$PrefsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pomodoroDuration,
      int shortBreakDuration,
      int longBreakDuration,
      int intervalsNumber});
}

/// @nodoc
class __$PrefsStateCopyWithImpl<$Res> extends _$PrefsStateCopyWithImpl<$Res>
    implements _$PrefsStateCopyWith<$Res> {
  __$PrefsStateCopyWithImpl(
      _PrefsState _value, $Res Function(_PrefsState) _then)
      : super(_value, (v) => _then(v as _PrefsState));

  @override
  _PrefsState get _value => super._value as _PrefsState;

  @override
  $Res call({
    Object? pomodoroDuration = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
    Object? intervalsNumber = freezed,
  }) {
    return _then(_PrefsState(
      pomodoroDuration: pomodoroDuration == freezed
          ? _value.pomodoroDuration
          : pomodoroDuration // ignore: cast_nullable_to_non_nullable
              as int,
      shortBreakDuration: shortBreakDuration == freezed
          ? _value.shortBreakDuration
          : shortBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      longBreakDuration: longBreakDuration == freezed
          ? _value.longBreakDuration
          : longBreakDuration // ignore: cast_nullable_to_non_nullable
              as int,
      intervalsNumber: intervalsNumber == freezed
          ? _value.intervalsNumber
          : intervalsNumber // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
class _$_PrefsState with DiagnosticableTreeMixin implements _PrefsState {
  _$_PrefsState(
      {required this.pomodoroDuration,
      required this.shortBreakDuration,
      required this.longBreakDuration,
      required this.intervalsNumber});

  @override
  final int pomodoroDuration;
  @override
  final int shortBreakDuration;
  @override
  final int longBreakDuration;
  @override
  final int intervalsNumber;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PrefsState(pomodoroDuration: $pomodoroDuration, shortBreakDuration: $shortBreakDuration, longBreakDuration: $longBreakDuration, intervalsNumber: $intervalsNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PrefsState'))
      ..add(DiagnosticsProperty('pomodoroDuration', pomodoroDuration))
      ..add(DiagnosticsProperty('shortBreakDuration', shortBreakDuration))
      ..add(DiagnosticsProperty('longBreakDuration', longBreakDuration))
      ..add(DiagnosticsProperty('intervalsNumber', intervalsNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PrefsState &&
            (identical(other.pomodoroDuration, pomodoroDuration) ||
                const DeepCollectionEquality()
                    .equals(other.pomodoroDuration, pomodoroDuration)) &&
            (identical(other.shortBreakDuration, shortBreakDuration) ||
                const DeepCollectionEquality()
                    .equals(other.shortBreakDuration, shortBreakDuration)) &&
            (identical(other.longBreakDuration, longBreakDuration) ||
                const DeepCollectionEquality()
                    .equals(other.longBreakDuration, longBreakDuration)) &&
            (identical(other.intervalsNumber, intervalsNumber) ||
                const DeepCollectionEquality()
                    .equals(other.intervalsNumber, intervalsNumber)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(pomodoroDuration) ^
      const DeepCollectionEquality().hash(shortBreakDuration) ^
      const DeepCollectionEquality().hash(longBreakDuration) ^
      const DeepCollectionEquality().hash(intervalsNumber);

  @JsonKey(ignore: true)
  @override
  _$PrefsStateCopyWith<_PrefsState> get copyWith =>
      __$PrefsStateCopyWithImpl<_PrefsState>(this, _$identity);
}

abstract class _PrefsState implements PrefsState {
  factory _PrefsState(
      {required int pomodoroDuration,
      required int shortBreakDuration,
      required int longBreakDuration,
      required int intervalsNumber}) = _$_PrefsState;

  @override
  int get pomodoroDuration => throw _privateConstructorUsedError;
  @override
  int get shortBreakDuration => throw _privateConstructorUsedError;
  @override
  int get longBreakDuration => throw _privateConstructorUsedError;
  @override
  int get intervalsNumber => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PrefsStateCopyWith<_PrefsState> get copyWith =>
      throw _privateConstructorUsedError;
}
