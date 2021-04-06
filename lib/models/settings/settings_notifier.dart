import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/settings/state/settings_state.dart';
import 'package:pocus/utils/prefs_keys.dart';

import 'package:shared_preferences/shared_preferences.dart';

class SettingsNotifier extends StateNotifier<SettingsState> {
  SettingsNotifier()
      : super(SettingsState(
          pomodoroDuration: 25,
          shortBreakDuration: 5,
          longBreakDuration: 15,
          intervalsNumber: 4,
        ));

  Future<void> getSettings() async {
    await SharedPreferences.getInstance().then((prefs) {
      final settingsStateString = prefs.getString(PrefsKeys.settingsState);

      if (settingsStateString == null) return;

      state = SettingsState.fromJson(jsonDecode(settingsStateString));
    });
  }

  Future<void> saveSettings(SettingsState settingsState) async {
    await SharedPreferences.getInstance().then((prefs) {
      prefs.setString(
          PrefsKeys.settingsState, jsonEncode(settingsState.toJson()));
    });
    state = settingsState;
  }
}
