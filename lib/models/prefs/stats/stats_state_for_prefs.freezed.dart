// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stats_state_for_prefs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsStateForPrefs _$StatsStateForPrefsFromJson(Map<String, dynamic> json) {
  return _StatsStateForPrefs.fromJson(json);
}

/// @nodoc
class _$StatsStateForPrefsTearOff {
  const _$StatsStateForPrefsTearOff();

  _StatsStateForPrefs call(
      {required String stateJsonString, required DateTime savedDate}) {
    return _StatsStateForPrefs(
      stateJsonString: stateJsonString,
      savedDate: savedDate,
    );
  }

  StatsStateForPrefs fromJson(Map<String, Object> json) {
    return StatsStateForPrefs.fromJson(json);
  }
}

/// @nodoc
const $StatsStateForPrefs = _$StatsStateForPrefsTearOff();

/// @nodoc
mixin _$StatsStateForPrefs {
  String get stateJsonString => throw _privateConstructorUsedError;
  DateTime get savedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsStateForPrefsCopyWith<StatsStateForPrefs> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateForPrefsCopyWith<$Res> {
  factory $StatsStateForPrefsCopyWith(
          StatsStateForPrefs value, $Res Function(StatsStateForPrefs) then) =
      _$StatsStateForPrefsCopyWithImpl<$Res>;
  $Res call({String stateJsonString, DateTime savedDate});
}

/// @nodoc
class _$StatsStateForPrefsCopyWithImpl<$Res>
    implements $StatsStateForPrefsCopyWith<$Res> {
  _$StatsStateForPrefsCopyWithImpl(this._value, this._then);

  final StatsStateForPrefs _value;
  // ignore: unused_field
  final $Res Function(StatsStateForPrefs) _then;

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
abstract class _$StatsStateForPrefsCopyWith<$Res>
    implements $StatsStateForPrefsCopyWith<$Res> {
  factory _$StatsStateForPrefsCopyWith(
          _StatsStateForPrefs value, $Res Function(_StatsStateForPrefs) then) =
      __$StatsStateForPrefsCopyWithImpl<$Res>;
  @override
  $Res call({String stateJsonString, DateTime savedDate});
}

/// @nodoc
class __$StatsStateForPrefsCopyWithImpl<$Res>
    extends _$StatsStateForPrefsCopyWithImpl<$Res>
    implements _$StatsStateForPrefsCopyWith<$Res> {
  __$StatsStateForPrefsCopyWithImpl(
      _StatsStateForPrefs _value, $Res Function(_StatsStateForPrefs) _then)
      : super(_value, (v) => _then(v as _StatsStateForPrefs));

  @override
  _StatsStateForPrefs get _value => super._value as _StatsStateForPrefs;

  @override
  $Res call({
    Object? stateJsonString = freezed,
    Object? savedDate = freezed,
  }) {
    return _then(_StatsStateForPrefs(
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
class _$_StatsStateForPrefs
    with DiagnosticableTreeMixin
    implements _StatsStateForPrefs {
  _$_StatsStateForPrefs(
      {required this.stateJsonString, required this.savedDate});

  factory _$_StatsStateForPrefs.fromJson(Map<String, dynamic> json) =>
      _$_$_StatsStateForPrefsFromJson(json);

  @override
  final String stateJsonString;
  @override
  final DateTime savedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatsStateForPrefs(stateJsonString: $stateJsonString, savedDate: $savedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatsStateForPrefs'))
      ..add(DiagnosticsProperty('stateJsonString', stateJsonString))
      ..add(DiagnosticsProperty('savedDate', savedDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatsStateForPrefs &&
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
  _$StatsStateForPrefsCopyWith<_StatsStateForPrefs> get copyWith =>
      __$StatsStateForPrefsCopyWithImpl<_StatsStateForPrefs>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatsStateForPrefsToJson(this);
  }
}

abstract class _StatsStateForPrefs implements StatsStateForPrefs {
  factory _StatsStateForPrefs(
      {required String stateJsonString,
      required DateTime savedDate}) = _$_StatsStateForPrefs;

  factory _StatsStateForPrefs.fromJson(Map<String, dynamic> json) =
      _$_StatsStateForPrefs.fromJson;

  @override
  String get stateJsonString => throw _privateConstructorUsedError;
  @override
  DateTime get savedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatsStateForPrefsCopyWith<_StatsStateForPrefs> get copyWith =>
      throw _privateConstructorUsedError;
}
