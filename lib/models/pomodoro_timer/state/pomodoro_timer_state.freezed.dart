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
  switch (json['runtimeType'] as String) {
    case 'pomodoro':
      return Pomodoro.fromJson(json);
    case 'shortBreak':
      return ShortBreak.fromJson(json);
    case 'longBreak':
      return LongBreak.fromJson(json);

    default:
      throw FallThroughError();
  }
}

/// @nodoc
class _$PomodoroTimerStateTearOff {
  const _$PomodoroTimerStateTearOff();

  Pomodoro pomodoro(
      {required int secondsLeft,
      required int secondsInitial,
      required int currentInterval,
      required bool isRunning}) {
    return Pomodoro(
      secondsLeft: secondsLeft,
      secondsInitial: secondsInitial,
      currentInterval: currentInterval,
      isRunning: isRunning,
    );
  }

  ShortBreak shortBreak(
      {required int secondsLeft,
      required int secondsInitial,
      required bool isRunning,
      required int nextInterval}) {
    return ShortBreak(
      secondsLeft: secondsLeft,
      secondsInitial: secondsInitial,
      isRunning: isRunning,
      nextInterval: nextInterval,
    );
  }

  LongBreak longBreak(
      {required int secondsLeft,
      required int secondsInitial,
      required bool isRunning}) {
    return LongBreak(
      secondsLeft: secondsLeft,
      secondsInitial: secondsInitial,
      isRunning: isRunning,
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
  int get secondsInitial => throw _privateConstructorUsedError;
  bool get isRunning => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secondsLeft, int secondsInitial,
            int currentInterval, bool isRunning)
        pomodoro,
    required TResult Function(int secondsLeft, int secondsInitial,
            bool isRunning, int nextInterval)
        shortBreak,
    required TResult Function(
            int secondsLeft, int secondsInitial, bool isRunning)
        longBreak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secondsLeft, int secondsInitial, int currentInterval,
            bool isRunning)?
        pomodoro,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning,
            int nextInterval)?
        shortBreak,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning)?
        longBreak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pomodoro value) pomodoro,
    required TResult Function(ShortBreak value) shortBreak,
    required TResult Function(LongBreak value) longBreak,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pomodoro value)? pomodoro,
    TResult Function(ShortBreak value)? shortBreak,
    TResult Function(LongBreak value)? longBreak,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
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
  $Res call({int secondsLeft, int secondsInitial, bool isRunning});
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
    Object? secondsInitial = freezed,
    Object? isRunning = freezed,
  }) {
    return _then(_value.copyWith(
      secondsLeft: secondsLeft == freezed
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      secondsInitial: secondsInitial == freezed
          ? _value.secondsInitial
          : secondsInitial // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class $PomodoroCopyWith<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  factory $PomodoroCopyWith(Pomodoro value, $Res Function(Pomodoro) then) =
      _$PomodoroCopyWithImpl<$Res>;
  @override
  $Res call(
      {int secondsLeft,
      int secondsInitial,
      int currentInterval,
      bool isRunning});
}

/// @nodoc
class _$PomodoroCopyWithImpl<$Res>
    extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements $PomodoroCopyWith<$Res> {
  _$PomodoroCopyWithImpl(Pomodoro _value, $Res Function(Pomodoro) _then)
      : super(_value, (v) => _then(v as Pomodoro));

  @override
  Pomodoro get _value => super._value as Pomodoro;

  @override
  $Res call({
    Object? secondsLeft = freezed,
    Object? secondsInitial = freezed,
    Object? currentInterval = freezed,
    Object? isRunning = freezed,
  }) {
    return _then(Pomodoro(
      secondsLeft: secondsLeft == freezed
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      secondsInitial: secondsInitial == freezed
          ? _value.secondsInitial
          : secondsInitial // ignore: cast_nullable_to_non_nullable
              as int,
      currentInterval: currentInterval == freezed
          ? _value.currentInterval
          : currentInterval // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$Pomodoro with DiagnosticableTreeMixin implements Pomodoro {
  _$Pomodoro(
      {required this.secondsLeft,
      required this.secondsInitial,
      required this.currentInterval,
      required this.isRunning});

  factory _$Pomodoro.fromJson(Map<String, dynamic> json) =>
      _$_$PomodoroFromJson(json);

  @override
  final int secondsLeft;
  @override
  final int secondsInitial;
  @override
  final int currentInterval;
  @override
  final bool isRunning;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroTimerState.pomodoro(secondsLeft: $secondsLeft, secondsInitial: $secondsInitial, currentInterval: $currentInterval, isRunning: $isRunning)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroTimerState.pomodoro'))
      ..add(DiagnosticsProperty('secondsLeft', secondsLeft))
      ..add(DiagnosticsProperty('secondsInitial', secondsInitial))
      ..add(DiagnosticsProperty('currentInterval', currentInterval))
      ..add(DiagnosticsProperty('isRunning', isRunning));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is Pomodoro &&
            (identical(other.secondsLeft, secondsLeft) ||
                const DeepCollectionEquality()
                    .equals(other.secondsLeft, secondsLeft)) &&
            (identical(other.secondsInitial, secondsInitial) ||
                const DeepCollectionEquality()
                    .equals(other.secondsInitial, secondsInitial)) &&
            (identical(other.currentInterval, currentInterval) ||
                const DeepCollectionEquality()
                    .equals(other.currentInterval, currentInterval)) &&
            (identical(other.isRunning, isRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isRunning, isRunning)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondsLeft) ^
      const DeepCollectionEquality().hash(secondsInitial) ^
      const DeepCollectionEquality().hash(currentInterval) ^
      const DeepCollectionEquality().hash(isRunning);

  @JsonKey(ignore: true)
  @override
  $PomodoroCopyWith<Pomodoro> get copyWith =>
      _$PomodoroCopyWithImpl<Pomodoro>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secondsLeft, int secondsInitial,
            int currentInterval, bool isRunning)
        pomodoro,
    required TResult Function(int secondsLeft, int secondsInitial,
            bool isRunning, int nextInterval)
        shortBreak,
    required TResult Function(
            int secondsLeft, int secondsInitial, bool isRunning)
        longBreak,
  }) {
    return pomodoro(secondsLeft, secondsInitial, currentInterval, isRunning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secondsLeft, int secondsInitial, int currentInterval,
            bool isRunning)?
        pomodoro,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning,
            int nextInterval)?
        shortBreak,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning)?
        longBreak,
    required TResult orElse(),
  }) {
    if (pomodoro != null) {
      return pomodoro(secondsLeft, secondsInitial, currentInterval, isRunning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pomodoro value) pomodoro,
    required TResult Function(ShortBreak value) shortBreak,
    required TResult Function(LongBreak value) longBreak,
  }) {
    return pomodoro(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pomodoro value)? pomodoro,
    TResult Function(ShortBreak value)? shortBreak,
    TResult Function(LongBreak value)? longBreak,
    required TResult orElse(),
  }) {
    if (pomodoro != null) {
      return pomodoro(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$PomodoroToJson(this)..['runtimeType'] = 'pomodoro';
  }
}

abstract class Pomodoro implements PomodoroTimerState {
  factory Pomodoro(
      {required int secondsLeft,
      required int secondsInitial,
      required int currentInterval,
      required bool isRunning}) = _$Pomodoro;

  factory Pomodoro.fromJson(Map<String, dynamic> json) = _$Pomodoro.fromJson;

  @override
  int get secondsLeft => throw _privateConstructorUsedError;
  @override
  int get secondsInitial => throw _privateConstructorUsedError;
  int get currentInterval => throw _privateConstructorUsedError;
  @override
  bool get isRunning => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $PomodoroCopyWith<Pomodoro> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShortBreakCopyWith<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  factory $ShortBreakCopyWith(
          ShortBreak value, $Res Function(ShortBreak) then) =
      _$ShortBreakCopyWithImpl<$Res>;
  @override
  $Res call(
      {int secondsLeft, int secondsInitial, bool isRunning, int nextInterval});
}

/// @nodoc
class _$ShortBreakCopyWithImpl<$Res>
    extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements $ShortBreakCopyWith<$Res> {
  _$ShortBreakCopyWithImpl(ShortBreak _value, $Res Function(ShortBreak) _then)
      : super(_value, (v) => _then(v as ShortBreak));

  @override
  ShortBreak get _value => super._value as ShortBreak;

  @override
  $Res call({
    Object? secondsLeft = freezed,
    Object? secondsInitial = freezed,
    Object? isRunning = freezed,
    Object? nextInterval = freezed,
  }) {
    return _then(ShortBreak(
      secondsLeft: secondsLeft == freezed
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      secondsInitial: secondsInitial == freezed
          ? _value.secondsInitial
          : secondsInitial // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
      nextInterval: nextInterval == freezed
          ? _value.nextInterval
          : nextInterval // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$ShortBreak with DiagnosticableTreeMixin implements ShortBreak {
  _$ShortBreak(
      {required this.secondsLeft,
      required this.secondsInitial,
      required this.isRunning,
      required this.nextInterval});

  factory _$ShortBreak.fromJson(Map<String, dynamic> json) =>
      _$_$ShortBreakFromJson(json);

  @override
  final int secondsLeft;
  @override
  final int secondsInitial;
  @override
  final bool isRunning;
  @override
  final int nextInterval;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroTimerState.shortBreak(secondsLeft: $secondsLeft, secondsInitial: $secondsInitial, isRunning: $isRunning, nextInterval: $nextInterval)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroTimerState.shortBreak'))
      ..add(DiagnosticsProperty('secondsLeft', secondsLeft))
      ..add(DiagnosticsProperty('secondsInitial', secondsInitial))
      ..add(DiagnosticsProperty('isRunning', isRunning))
      ..add(DiagnosticsProperty('nextInterval', nextInterval));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is ShortBreak &&
            (identical(other.secondsLeft, secondsLeft) ||
                const DeepCollectionEquality()
                    .equals(other.secondsLeft, secondsLeft)) &&
            (identical(other.secondsInitial, secondsInitial) ||
                const DeepCollectionEquality()
                    .equals(other.secondsInitial, secondsInitial)) &&
            (identical(other.isRunning, isRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isRunning, isRunning)) &&
            (identical(other.nextInterval, nextInterval) ||
                const DeepCollectionEquality()
                    .equals(other.nextInterval, nextInterval)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondsLeft) ^
      const DeepCollectionEquality().hash(secondsInitial) ^
      const DeepCollectionEquality().hash(isRunning) ^
      const DeepCollectionEquality().hash(nextInterval);

  @JsonKey(ignore: true)
  @override
  $ShortBreakCopyWith<ShortBreak> get copyWith =>
      _$ShortBreakCopyWithImpl<ShortBreak>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secondsLeft, int secondsInitial,
            int currentInterval, bool isRunning)
        pomodoro,
    required TResult Function(int secondsLeft, int secondsInitial,
            bool isRunning, int nextInterval)
        shortBreak,
    required TResult Function(
            int secondsLeft, int secondsInitial, bool isRunning)
        longBreak,
  }) {
    return shortBreak(secondsLeft, secondsInitial, isRunning, nextInterval);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secondsLeft, int secondsInitial, int currentInterval,
            bool isRunning)?
        pomodoro,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning,
            int nextInterval)?
        shortBreak,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning)?
        longBreak,
    required TResult orElse(),
  }) {
    if (shortBreak != null) {
      return shortBreak(secondsLeft, secondsInitial, isRunning, nextInterval);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pomodoro value) pomodoro,
    required TResult Function(ShortBreak value) shortBreak,
    required TResult Function(LongBreak value) longBreak,
  }) {
    return shortBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pomodoro value)? pomodoro,
    TResult Function(ShortBreak value)? shortBreak,
    TResult Function(LongBreak value)? longBreak,
    required TResult orElse(),
  }) {
    if (shortBreak != null) {
      return shortBreak(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$ShortBreakToJson(this)..['runtimeType'] = 'shortBreak';
  }
}

abstract class ShortBreak implements PomodoroTimerState {
  factory ShortBreak(
      {required int secondsLeft,
      required int secondsInitial,
      required bool isRunning,
      required int nextInterval}) = _$ShortBreak;

  factory ShortBreak.fromJson(Map<String, dynamic> json) =
      _$ShortBreak.fromJson;

  @override
  int get secondsLeft => throw _privateConstructorUsedError;
  @override
  int get secondsInitial => throw _privateConstructorUsedError;
  @override
  bool get isRunning => throw _privateConstructorUsedError;
  int get nextInterval => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $ShortBreakCopyWith<ShortBreak> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LongBreakCopyWith<$Res>
    implements $PomodoroTimerStateCopyWith<$Res> {
  factory $LongBreakCopyWith(LongBreak value, $Res Function(LongBreak) then) =
      _$LongBreakCopyWithImpl<$Res>;
  @override
  $Res call({int secondsLeft, int secondsInitial, bool isRunning});
}

/// @nodoc
class _$LongBreakCopyWithImpl<$Res>
    extends _$PomodoroTimerStateCopyWithImpl<$Res>
    implements $LongBreakCopyWith<$Res> {
  _$LongBreakCopyWithImpl(LongBreak _value, $Res Function(LongBreak) _then)
      : super(_value, (v) => _then(v as LongBreak));

  @override
  LongBreak get _value => super._value as LongBreak;

  @override
  $Res call({
    Object? secondsLeft = freezed,
    Object? secondsInitial = freezed,
    Object? isRunning = freezed,
  }) {
    return _then(LongBreak(
      secondsLeft: secondsLeft == freezed
          ? _value.secondsLeft
          : secondsLeft // ignore: cast_nullable_to_non_nullable
              as int,
      secondsInitial: secondsInitial == freezed
          ? _value.secondsInitial
          : secondsInitial // ignore: cast_nullable_to_non_nullable
              as int,
      isRunning: isRunning == freezed
          ? _value.isRunning
          : isRunning // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

@JsonSerializable()

/// @nodoc
class _$LongBreak with DiagnosticableTreeMixin implements LongBreak {
  _$LongBreak(
      {required this.secondsLeft,
      required this.secondsInitial,
      required this.isRunning});

  factory _$LongBreak.fromJson(Map<String, dynamic> json) =>
      _$_$LongBreakFromJson(json);

  @override
  final int secondsLeft;
  @override
  final int secondsInitial;
  @override
  final bool isRunning;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'PomodoroTimerState.longBreak(secondsLeft: $secondsLeft, secondsInitial: $secondsInitial, isRunning: $isRunning)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'PomodoroTimerState.longBreak'))
      ..add(DiagnosticsProperty('secondsLeft', secondsLeft))
      ..add(DiagnosticsProperty('secondsInitial', secondsInitial))
      ..add(DiagnosticsProperty('isRunning', isRunning));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is LongBreak &&
            (identical(other.secondsLeft, secondsLeft) ||
                const DeepCollectionEquality()
                    .equals(other.secondsLeft, secondsLeft)) &&
            (identical(other.secondsInitial, secondsInitial) ||
                const DeepCollectionEquality()
                    .equals(other.secondsInitial, secondsInitial)) &&
            (identical(other.isRunning, isRunning) ||
                const DeepCollectionEquality()
                    .equals(other.isRunning, isRunning)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(secondsLeft) ^
      const DeepCollectionEquality().hash(secondsInitial) ^
      const DeepCollectionEquality().hash(isRunning);

  @JsonKey(ignore: true)
  @override
  $LongBreakCopyWith<LongBreak> get copyWith =>
      _$LongBreakCopyWithImpl<LongBreak>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int secondsLeft, int secondsInitial,
            int currentInterval, bool isRunning)
        pomodoro,
    required TResult Function(int secondsLeft, int secondsInitial,
            bool isRunning, int nextInterval)
        shortBreak,
    required TResult Function(
            int secondsLeft, int secondsInitial, bool isRunning)
        longBreak,
  }) {
    return longBreak(secondsLeft, secondsInitial, isRunning);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int secondsLeft, int secondsInitial, int currentInterval,
            bool isRunning)?
        pomodoro,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning,
            int nextInterval)?
        shortBreak,
    TResult Function(int secondsLeft, int secondsInitial, bool isRunning)?
        longBreak,
    required TResult orElse(),
  }) {
    if (longBreak != null) {
      return longBreak(secondsLeft, secondsInitial, isRunning);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Pomodoro value) pomodoro,
    required TResult Function(ShortBreak value) shortBreak,
    required TResult Function(LongBreak value) longBreak,
  }) {
    return longBreak(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Pomodoro value)? pomodoro,
    TResult Function(ShortBreak value)? shortBreak,
    TResult Function(LongBreak value)? longBreak,
    required TResult orElse(),
  }) {
    if (longBreak != null) {
      return longBreak(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$_$LongBreakToJson(this)..['runtimeType'] = 'longBreak';
  }
}

abstract class LongBreak implements PomodoroTimerState {
  factory LongBreak(
      {required int secondsLeft,
      required int secondsInitial,
      required bool isRunning}) = _$LongBreak;

  factory LongBreak.fromJson(Map<String, dynamic> json) = _$LongBreak.fromJson;

  @override
  int get secondsLeft => throw _privateConstructorUsedError;
  @override
  int get secondsInitial => throw _privateConstructorUsedError;
  @override
  bool get isRunning => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  $LongBreakCopyWith<LongBreak> get copyWith =>
      throw _privateConstructorUsedError;
}
