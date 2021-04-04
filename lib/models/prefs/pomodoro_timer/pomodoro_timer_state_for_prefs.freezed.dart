// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'pomodoro_timer_state_for_prefs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PomodoroTimerStateForPrefs _$PomodoroTimerStateForPrefsFromJson(
    Map<String, dynamic> json) {
  return _PomodoroTimerStateForPrefs.fromJson(json);
}

/// @nodoc
class _$PomodoroTimerStateForPrefsTearOff {
  const _$PomodoroTimerStateForPrefsTearOff();

  _PomodoroTimerStateForPrefs call(
      {required String stateJsonString, required DateTime savedDate}) {
    return _PomodoroTimerStateForPrefs(
      stateJsonString: stateJsonString,
      savedDate: savedDate,
    );
  }

  PomodoroTimerStateForPrefs fromJson(Map<String, Object> json) {
    return PomodoroTimerStateForPrefs.fromJson(json);
  }
}

/// @nodoc
const $PomodoroTimerStateForPrefs = _$PomodoroTimerStateForPrefsTearOff();

/// @nodoc
mixin _$PomodoroTimerStateForPrefs {
  String get stateJsonString => throw _privateConstructorUsedError;
  DateTime get savedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PomodoroTimerStateForPrefsCopyWith<PomodoroTimerStateForPrefs>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PomodoroTimerStateForPrefsCopyWith<$Res> {
  factory $PomodoroTimerStateForPrefsCopyWith(PomodoroTimerStateForPrefs value,
          $Res Function(PomodoroTimerStateForPrefs) then) =
      _$PomodoroTimerStateForPrefsCopyWithImpl<$Res>;
  $Res call({String stateJsonString, DateTime savedDate});
}

/// @nodoc
class _$PomodoroTimerStateForPrefsCopyWithImpl<$Res>
    implements $PomodoroTimerStateForPrefsCopyWith<$Res> {
  _$PomodoroTimerStateForPrefsCopyWithImpl(this._value, this._then);

  final PomodoroTimerStateForPrefs _value;
  // ignore: unused_field
  final $Res Function(PomodoroTimerStateForPrefs) _then;

  @override
  $Res call({
    Object? stateJsonString = freezed,
    Object? savedDate = freezed,
  }) {
    return _then(_value.copyWith(
      stateJsonString: stateJsonString == freezed
          ? _value.stateJsonString
          : stateJsonString // ignore: cast_nullable_to_non_nullable
              as String,
      savedDate: savedDate == freezed
          ? _value.savedDate
          : savedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$PomodoroTimerStateForPrefsCopyWith<$Res>
    implements $PomodoroTimerStateForPrefsCopyWith<$Res> {
  factory _$PomodoroTimerStateForPrefsCopyWith(
          _PomodoroTimerStateForPrefs value,
          $Res Function(_PomodoroTimerStateForPrefs) then) =
      __$PomodoroTimerStateForPrefsCopyWithImpl<$Res>;
  @override
  $Res call({String stateJsonString, DateTime savedDate});
}

/// @nodoc
class __$PomodoroTimerStateForPrefsCopyWithImpl<$Res>
    extends _$PomodoroTimerStateForPrefsCopyWithImpl<$Res>
    implements _$PomodoroTimerStateForPrefsCopyWith<$Res> {
  __$PomodoroTimerStateForPrefsCopyWithImpl(_PomodoroTimerStateForPrefs _value,
      $Res Function(_PomodoroTimerStateForPrefs) _then)
      : super(_value, (v) => _then(v as _PomodoroTimerStateForPrefs));

  @override
  _PomodoroTimerStateForPrefs get _value =>
      super._value as _PomodoroTimerStateForPrefs;

  @override
  $Res call({
    Object? stateJsonString = freezed,
    Object? savedDate = freezed,
  }) {
    return _then(_PomodoroTimerStateForPrefs(
      stateJsonString: stateJsonString == freezed
          ? _value.stateJsonString
          : stateJsonString // ignore: cast_nullable_to_non_nullable
              as String,
      savedDate: savedDate == freezed
          ? _value.savedDate
          : savedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_PomodoroTimerStateForPrefs
    with DiagnosticableTreeMixin
    implements _PomodoroTimerStateForPrefs {
  _$_PomodoroTimerStateForPrefs(
      {required this.stateJsonString, required this.savedDate});

  factory _$_PomodoroTimerStateForPrefs.fromJson(Map<String, dynamic> json) =>
      _$_$_PomodoroTimerStateForPrefsFromJson(json);

  @override
  final String stateJsonString;
  @override
  final DateTime savedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroTimerStateForPrefs(stateJsonString: $stateJsonString, savedDate: $savedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroTimerStateForPrefs'))
      ..add(DiagnosticsProperty('stateJsonString', stateJsonString))
      ..add(DiagnosticsProperty('savedDate', savedDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _PomodoroTimerStateForPrefs &&
            (identical(other.stateJsonString, stateJsonString) ||
                const DeepCollectionEquality()
                    .equals(other.stateJsonString, stateJsonString)) &&
            (identical(other.savedDate, savedDate) ||
                const DeepCollectionEquality()
                    .equals(other.savedDate, savedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(stateJsonString) ^
      const DeepCollectionEquality().hash(savedDate);

  @JsonKey(ignore: true)
  @override
  _$PomodoroTimerStateForPrefsCopyWith<_PomodoroTimerStateForPrefs>
      get copyWith => __$PomodoroTimerStateForPrefsCopyWithImpl<
          _PomodoroTimerStateForPrefs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_PomodoroTimerStateForPrefsToJson(this);
  }
}

abstract class _PomodoroTimerStateForPrefs
    implements PomodoroTimerStateForPrefs {
  factory _PomodoroTimerStateForPrefs(
      {required String stateJsonString,
      required DateTime savedDate}) = _$_PomodoroTimerStateForPrefs;

  factory _PomodoroTimerStateForPrefs.fromJson(Map<String, dynamic> json) =
      _$_PomodoroTimerStateForPrefs.fromJson;

  @override
  String get stateJsonString => throw _privateConstructorUsedError;
  @override
  DateTime get savedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$PomodoroTimerStateForPrefsCopyWith<_PomodoroTimerStateForPrefs>
      get copyWith => throw _privateConstructorUsedError;
}
