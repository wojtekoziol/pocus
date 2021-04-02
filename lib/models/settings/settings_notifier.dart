import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/settings/state/settings_state.dart';
import 'package:pocus/utils/prefs_keys/prefs_keys.dart';

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
      state = SettingsState(
        pomodoroDuration:
            prefs.getInt(PrefsKeys.pomodoroDuration) ?? state.pomodoroDuration,
        shortBreakDuration: prefs.getInt(PrefsKeys.shortBreakDuration) ??
            state.shortBreakDuration,
        longBreakDuration: prefs.getInt(PrefsKeys.longBreakDuration) ??
            state.longBreakDuration,
        intervalsNumber:
            prefs.getInt(PrefsKeys.intervalsNumber) ?? state.intervalsNumber,
      );
    });
  }

  Future<void> saveSettings(SettingsState settingsState) async {
    await SharedPreferences.getInstance().then((prefs) {
      prefs.setInt(PrefsKeys.pomodoroDuration, settingsState.pomodoroDuration);
      prefs.setInt(
          PrefsKeys.shortBreakDuration, settingsState.shortBreakDuration);
      prefs.setInt(
          PrefsKeys.longBreakDuration, settingsState.longBreakDuration);
      prefs.setInt(PrefsKeys.intervalsNumber, settingsState.intervalsNumber);
    });
    state = settingsState;
  }
}
