// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'settings_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SettingsState _$SettingsStateFromJson(Map<String, dynamic> json) {
  return _SettingsState.fromJson(json);
}

/// @nodoc
class _$SettingsStateTearOff {
  const _$SettingsStateTearOff();

  _SettingsState call(
      {required int pomodoroDuration,
      required int shortBreakDuration,
      required int longBreakDuration,
      required int intervalsNumber}) {
    return _SettingsState(
      pomodoroDuration: pomodoroDuration,
      shortBreakDuration: shortBreakDuration,
      longBreakDuration: longBreakDuration,
      intervalsNumber: intervalsNumber,
    );
  }

  SettingsState fromJson(Map<String, Object> json) {
    return SettingsState.fromJson(json);
  }
}

/// @nodoc
const $SettingsState = _$SettingsStateTearOff();

/// @nodoc
mixin _$SettingsState {
  int get pomodoroDuration => throw _privateConstructorUsedError;
  int get shortBreakDuration => throw _privateConstructorUsedError;
  int get longBreakDuration => throw _privateConstructorUsedError;
  int get intervalsNumber => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {int pomodoroDuration,
      int shortBreakDuration,
      int longBreakDuration,
      int intervalsNumber});
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

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
abstract class _$SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$SettingsStateCopyWith(
          _SettingsState value, $Res Function(_SettingsState) then) =
      __$SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pomodoroDuration,
      int shortBreakDuration,
      int longBreakDuration,
      int intervalsNumber});
}

/// @nodoc
class __$SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$SettingsStateCopyWith<$Res> {
  __$SettingsStateCopyWithImpl(
      _SettingsState _value, $Res Function(_SettingsState) _then)
      : super(_value, (v) => _then(v as _SettingsState));

  @override
  _SettingsState get _value => super._value as _SettingsState;

  @override
  $Res call({
    Object? pomodoroDuration = freezed,
    Object? shortBreakDuration = freezed,
    Object? longBreakDuration = freezed,
    Object? intervalsNumber = freezed,
  }) {
    return _then(_SettingsState(
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

@JsonSerializable()

/// @nodoc
class _$_SettingsState with DiagnosticableTreeMixin implements _SettingsState {
  _$_SettingsState(
      {required this.pomodoroDuration,
      required this.shortBreakDuration,
      required this.longBreakDuration,
      required this.intervalsNumber});

  factory _$_SettingsState.fromJson(Map<String, dynamic> json) =>
      _$_$_SettingsStateFromJson(json);

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
    return 'SettingsState(pomodoroDuration: $pomodoroDuration, shortBreakDuration: $shortBreakDuration, longBreakDuration: $longBreakDuration, intervalsNumber: $intervalsNumber)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'SettingsState'))
      ..add(DiagnosticsProperty('pomodoroDuration', pomodoroDuration))
      ..add(DiagnosticsProperty('shortBreakDuration', shortBreakDuration))
      ..add(DiagnosticsProperty('longBreakDuration', longBreakDuration))
      ..add(DiagnosticsProperty('intervalsNumber', intervalsNumber));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _SettingsState &&
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
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      __$SettingsStateCopyWithImpl<_SettingsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_SettingsStateToJson(this);
  }
}

abstract class _SettingsState implements SettingsState {
  factory _SettingsState(
      {required int pomodoroDuration,
      required int shortBreakDuration,
      required int longBreakDuration,
      required int intervalsNumber}) = _$_SettingsState;

  factory _SettingsState.fromJson(Map<String, dynamic> json) =
      _$_SettingsState.fromJson;

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
  _$SettingsStateCopyWith<_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
