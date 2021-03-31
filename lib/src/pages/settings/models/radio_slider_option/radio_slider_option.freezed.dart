// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'radio_slider_option.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$RadioSliderOptionTearOff {
  const _$RadioSliderOptionTearOff();

  _RadioSliderOption call(
      {required String value, required void Function() onPressed}) {
    return _RadioSliderOption(
      value: value,
      onPressed: onPressed,
    );
  }
}

/// @nodoc
const $RadioSliderOption = _$RadioSliderOptionTearOff();

/// @nodoc
mixin _$RadioSliderOption {
  String get value => throw _privateConstructorUsedError;
  void Function() get onPressed => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RadioSliderOptionCopyWith<RadioSliderOption> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RadioSliderOptionCopyWith<$Res> {
  factory $RadioSliderOptionCopyWith(
          RadioSliderOption value, $Res Function(RadioSliderOption) then) =
      _$RadioSliderOptionCopyWithImpl<$Res>;
  $Res call({String value, void Function() onPressed});
}

/// @nodoc
class _$RadioSliderOptionCopyWithImpl<$Res>
    implements $RadioSliderOptionCopyWith<$Res> {
  _$RadioSliderOptionCopyWithImpl(this._value, this._then);

  final RadioSliderOption _value;
  // ignore: unused_field
  final $Res Function(RadioSliderOption) _then;

  @override
  $Res call({
    Object? value = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_value.copyWith(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc
abstract class _$RadioSliderOptionCopyWith<$Res>
    implements $RadioSliderOptionCopyWith<$Res> {
  factory _$RadioSliderOptionCopyWith(
          _RadioSliderOption value, $Res Function(_RadioSliderOption) then) =
      __$RadioSliderOptionCopyWithImpl<$Res>;
  @override
  $Res call({String value, void Function() onPressed});
}

/// @nodoc
class __$RadioSliderOptionCopyWithImpl<$Res>
    extends _$RadioSliderOptionCopyWithImpl<$Res>
    implements _$RadioSliderOptionCopyWith<$Res> {
  __$RadioSliderOptionCopyWithImpl(
      _RadioSliderOption _value, $Res Function(_RadioSliderOption) _then)
      : super(_value, (v) => _then(v as _RadioSliderOption));

  @override
  _RadioSliderOption get _value => super._value as _RadioSliderOption;

  @override
  $Res call({
    Object? value = freezed,
    Object? onPressed = freezed,
  }) {
    return _then(_RadioSliderOption(
      value: value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as String,
      onPressed: onPressed == freezed
          ? _value.onPressed
          : onPressed // ignore: cast_nullable_to_non_nullable
              as void Function(),
    ));
  }
}

/// @nodoc
class _$_RadioSliderOption
    with DiagnosticableTreeMixin
    implements _RadioSliderOption {
  _$_RadioSliderOption({required this.value, required this.onPressed});

  @override
  final String value;
  @override
  final void Function() onPressed;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RadioSliderOption(value: $value, onPressed: $onPressed)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RadioSliderOption'))
      ..add(DiagnosticsProperty('value', value))
      ..add(DiagnosticsProperty('onPressed', onPressed));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _RadioSliderOption &&
            (identical(other.value, value) ||
                const DeepCollectionEquality().equals(other.value, value)) &&
            (identical(other.onPressed, onPressed) ||
                const DeepCollectionEquality()
                    .equals(other.onPressed, onPressed)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(value) ^
      const DeepCollectionEquality().hash(onPressed);

  @JsonKey(ignore: true)
  @override
  _$RadioSliderOptionCopyWith<_RadioSliderOption> get copyWith =>
      __$RadioSliderOptionCopyWithImpl<_RadioSliderOption>(this, _$identity);
}

abstract class _RadioSliderOption implements RadioSliderOption {
  factory _RadioSliderOption(
      {required String value,
      required void Function() onPressed}) = _$_RadioSliderOption;

  @override
  String get value => throw _privateConstructorUsedError;
  @override
  void Function() get onPressed => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$RadioSliderOptionCopyWith<_RadioSliderOption> get copyWith =>
      throw _privateConstructorUsedError;
}
