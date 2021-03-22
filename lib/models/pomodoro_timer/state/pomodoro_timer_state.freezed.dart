// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pomodoro_timer_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PomodoroTimerState _$PomodoroTimerStateFromJson(Map<String, dynamic> json) {
  return _PomodoroTimerState.fromJson(json);
}

/// @nodoc
class _$PomodoroTimerStateTearOff {
  const _$PomodoroTimerStateTearOff();

  _PomodoroTimerState call(
      {required int secondsLeft,
      required bool isRunning,
      required bool isBreak}) {
    return _PomodoroTimerState(
      secondsLeft: secondsLeft,
      isRunning: isRunning,
      isBreak: isBreak,
    );
  }

  PomodoroTimerState fromJson(Map<String, Object> json) {
    return PomodoroTimerState.fromJson(json);
  }
}

/// @nodoc
const $PomodoroTimerState = _$PomodoroTimerStateTearOff();

/// @nodoc
mixin _$PomodoroTimerState {
  int get secondsLeft => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;
  bool get isBreak => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PomodoroTimerStateCopyWith<PomodoroTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroTimerStateCopyWith<$Res> {
  factory $PomodoroTimerStateCopyWith(
          PomodoroTimerState value, $Res Function(PomodoroTimerState) then) =
      _$PomodoroTimerStateCopyWithImpl<$Res>;
  $Res call({int secondsLeft, bool isRunning, bool isBreak});
}

/// @nodoc
class _$PomodoroTimerStateCopyWithImpl<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  _$PomodoroTimerStateCopyWithImpl(this._value, this._then);

  final PomodoroTimerState _value;
  // ignore: unused_field
  final $Res Function(PomodoroTimerState) _then;

  @override
  $Res call({
    Object? secondsLeft = freezed,
    Object? isRunning = freezed,
    Object? isBreak = freezed,
  }) {
    return _then(_value.copyWith(
      secondsLeft: secondsLeft == freezed
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isBreak: isBreak == freezed
          ? _value.isBreak
          : isBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$PomodoroTimerStateCopyWith<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  factory _$PomodoroTimerStateCopyWith(
          _PomodoroTimerState value, $Res Function(_PomodoroTimerState) then) =
      __$PomodoroTimerStateCopyWithImpl<$Res>;
  @override
  $Res call({int secondsLeft, bool isRunning, bool isBreak});
}

/// @nodoc
class __$PomodoroTimerStateCopyWithImpl<$Res>
    extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements _$PomodoroTimerStateCopyWith<$Res> {
  __$PomodoroTimerStateCopyWithImpl(
      _PomodoroTimerState _value, $Res Function(_PomodoroTimerState) _then)
      : super(_value, (v) => _then(v as _PomodoroTimerState));

  @override
  _PomodoroTimerState get _value => super._value as _PomodoroTimerState;

  @override
  $Res call({
    Object? secondsLeft = freezed,
    Object? isRunning = freezed,
    Object? isBreak = freezed,
  }) {
    return _then(_PomodoroTimerState(
      secondsLeft: secondsLeft == freezed
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      isBreak: isBreak == freezed
          ? _value.isBreak
          : isBreak // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PomodoroTimerState
    with DiagnosticableTreeMixin
    implements _PomodoroTimerState {
  _$_PomodoroTimerState(
      {required this.secondsLeft,
      required this.isRunning,
      required this.isBreak});

  factory _$_PomodoroTimerState.fromJson(Map<String, dynamic> json) =>
      _$_$_PomodoroTimerStateFromJson(json);

  @override
  final int secondsLeft;
  @override
  final bool isRunning;
  @override
  final bool isBreak;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroTimerState(secondsLeft: $secondsLeft, isRunning: $isRunning, isBreak: $isBreak)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroTimerState'))
      ..add(DiagnosticsProperty('secondsLeft', secondsLeft))
      ..add(DiagnosticsProperty('isRunning', isRunning))
      ..add(DiagnosticsProperty('isBreak', isBreak));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PomodoroTimerState &&
            (identical(other.secondsLeft, secondsLeft) ||
                const DeepCollectionEquality()
                    .equals(other.secondsLeft, secondsLeft)) &&
            (identical(other.isRunning, isRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isRunning, isRunning)) &&
            (identical(other.isBreak, isBreak) ||
                const DeepCollectionEquality().equals(other.isBreak, isBreak)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondsLeft) ^
      const DeepCollectionEquality().hash(isRunning) ^
      const DeepCollectionEquality().hash(isBreak);

  @JsonKey(ignore: true)
  @override
  _$PomodoroTimerStateCopyWith<_PomodoroTimerState> get copyWith =>
      __$PomodoroTimerStateCopyWithImpl<_PomodoroTimerState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PomodoroTimerStateToJson(this);
  }
}

abstract class _PomodoroTimerState implements PomodoroTimerState {
  factory _PomodoroTimerState(
      {required int secondsLeft,
      required bool isRunning,
      required bool isBreak}) = _$_PomodoroTimerState;

  factory _PomodoroTimerState.fromJson(Map<String, dynamic> json) =
      _$_PomodoroTimerState.fromJson;

  @override
  int get secondsLeft => throw _privateConstructorUsedError;
  @override
  bool get isRunning => throw _privateConstructorUsedError;
  @override
  bool get isBreak => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PomodoroTimerStateCopyWith<_PomodoroTimerState> get copyWith =>
      throw _privateConstructorUsedError;
}
