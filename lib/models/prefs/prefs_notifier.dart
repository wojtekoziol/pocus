import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/prefs/keys/prefs_keys.dart';
import 'package:pocus/models/prefs/state/prefs_state.dart';
import 'package:shared_preferences/shared_preferences.dart';

class PrefsNotifier extends StateNotifier<PrefsState> {
  PrefsNotifier()
      : super(PrefsState(
          pomodoroDuration: 25,
          shortBreakDuration: 5,
          longBreakDuration: 15,
          intervalsNumber: 4,
        ));

  Future<void> getPrefs() async {
    await SharedPreferences.getInstance().then((prefs) {
      state = PrefsState(
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

  Future<void> updatePrefs(PrefsState prefsState) async {
    await SharedPreferences.getInstance().then((prefs) {
      prefs.setInt(PrefsKeys.pomodoroDuration, prefsState.pomodoroDuration);
      prefs.setInt(PrefsKeys.shortBreakDuration, prefsState.shortBreakDuration);
      prefs.setInt(PrefsKeys.longBreakDuration, prefsState.longBreakDuration);
      prefs.setInt(PrefsKeys.intervalsNumber, prefsState.intervalsNumber);
    });
    state = prefsState;
  }
}
