// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'stats_state_for_prefs.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

StatsState _$StatsStateFromJson(Map<String, dynamic> json) {
  return _StatsState.fromJson(json);
}

/// @nodoc
class _$StatsStateTearOff {
  const _$StatsStateTearOff();

  _StatsState call({required StatsState state, required DateTime savedDate}) {
    return _StatsState(
      state: state,
      savedDate: savedDate,
    );
  }

  StatsState fromJson(Map<String, Object> json) {
    return StatsState.fromJson(json);
  }
}

/// @nodoc
const $StatsState = _$StatsStateTearOff();

/// @nodoc
mixin _$StatsState {
  StatsState get state => throw _privateConstructorUsedError;
  DateTime get savedDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $StatsStateCopyWith<StatsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StatsStateCopyWith<$Res> {
  factory $StatsStateCopyWith(
          StatsState value, $Res Function(StatsState) then) =
      _$StatsStateCopyWithImpl<$Res>;
  $Res call({StatsState state, DateTime savedDate});

  $StatsStateCopyWith<$Res> get state;
}

/// @nodoc
class _$StatsStateCopyWithImpl<$Res> implements $StatsStateCopyWith<$Res> {
  _$StatsStateCopyWithImpl(this._value, this._then);

  final StatsState _value;
  // ignore: unused_field
  final $Res Function(StatsState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? savedDate = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StatsState,
      savedDate: savedDate == freezed
          ? _value.savedDate
          : savedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }

  @override
  $StatsStateCopyWith<$Res> get state {
    return $StatsStateCopyWith<$Res>(_value.state, (value) {
      return _then(_value.copyWith(state: value));
    });
  }
}

/// @nodoc
abstract class _$StatsStateCopyWith<$Res> implements $StatsStateCopyWith<$Res> {
  factory _$StatsStateCopyWith(
          _StatsState value, $Res Function(_StatsState) then) =
      __$StatsStateCopyWithImpl<$Res>;
  @override
  $Res call({StatsState state, DateTime savedDate});

  @override
  $StatsStateCopyWith<$Res> get state;
}

/// @nodoc
class __$StatsStateCopyWithImpl<$Res> extends _$StatsStateCopyWithImpl<$Res>
    implements _$StatsStateCopyWith<$Res> {
  __$StatsStateCopyWithImpl(
      _StatsState _value, $Res Function(_StatsState) _then)
      : super(_value, (v) => _then(v as _StatsState));

  @override
  _StatsState get _value => super._value as _StatsState;

  @override
  $Res call({
    Object? state = freezed,
    Object? savedDate = freezed,
  }) {
    return _then(_StatsState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as StatsState,
      savedDate: savedDate == freezed
          ? _value.savedDate
          : savedDate // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$_StatsState with DiagnosticableTreeMixin implements _StatsState {
  _$_StatsState({required this.state, required this.savedDate});

  factory _$_StatsState.fromJson(Map<String, dynamic> json) =>
      _$_$_StatsStateFromJson(json);

  @override
  final StatsState state;
  @override
  final DateTime savedDate;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'StatsState(state: $state, savedDate: $savedDate)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'StatsState'))
      ..add(DiagnosticsProperty('state', state))
      ..add(DiagnosticsProperty('savedDate', savedDate));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _StatsState &&
            (identical(other.state, state) ||
                const DeepCollectionEquality().equals(other.state, state)) &&
            (identical(other.savedDate, savedDate) ||
                const DeepCollectionEquality()
                    .equals(other.savedDate, savedDate)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(state) ^
      const DeepCollectionEquality().hash(savedDate);

  @JsonKey(ignore: true)
  @override
  _$StatsStateCopyWith<_StatsState> get copyWith =>
      __$StatsStateCopyWithImpl<_StatsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$_$_StatsStateToJson(this);
  }
}

abstract class _StatsState implements StatsState {
  factory _StatsState(
      {required StatsState state, required DateTime savedDate}) = _$_StatsState;

  factory _StatsState.fromJson(Map<String, dynamic> json) =
      _$_StatsState.fromJson;

  @override
  StatsState get state => throw _privateConstructorUsedError;
  @override
  DateTime get savedDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$StatsStateCopyWith<_StatsState> get copyWith =>
      throw _privateConstructorUsedError;
}
