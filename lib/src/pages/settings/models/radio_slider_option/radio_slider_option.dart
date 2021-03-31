import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';

part 'radio_slider_option.freezed.dart';

@freezed
class RadioSliderOption with _$RadioSliderOption {
  factory RadioSliderOption({
    required String value,
    required VoidCallback onPressed,
  }) = _RadioSliderOption;
}
