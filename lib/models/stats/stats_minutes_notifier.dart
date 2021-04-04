import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/prefs/stats/stats_state_for_prefs.dart';
import 'package:pocus/models/stats/state/stats_state.dart';
import 'package:pocus/utils/prefs_keys/prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StatsMinutesNotifier extends StateNotifier<StatsState> {
  StatsMinutesNotifier() : super(StatsState(stats: [0, 0, 0, 0, 0, 0, 0]));

  Future<void> getStats() async {
    await SharedPreferences.getInstance().then((prefs) {
      final statsMinutesForPrefsString =
          prefs.getString(PrefsKeys.statsMinutesState);

      if (statsMinutesForPrefsString == null) return;

      final statsMinutesForPrefs =
          StatsStateForPrefs.fromJson(jsonDecode(statsMinutesForPrefsString));

      final now = DateTime.now();
      if (statsMinutesForPrefs.savedDate.weekday > now.weekday ||
          now.difference(statsMinutesForPrefs.savedDate) > Duration(days: 7)) {
        prefs.setString(
          PrefsKeys.statsMinutesState,
          jsonEncode(StatsStateForPrefs(
            stateJsonString: jsonEncode(state.toJson()),
            savedDate: DateTime.now(),
          ).toJson()),
        );
        return;
      }

      state =
          StatsState.fromJson(jsonDecode(statsMinutesForPrefs.stateJsonString));
    });
  }

  Future<void> insert() async {
    final weekday = DateTime.now().weekday;
    var stats = state.stats
      ..replaceRange(weekday - 1, weekday, [state.stats[weekday - 1] + 1]);
    WidgetsBinding.instance!.addPostFrameCallback((timeStamp) {
      state = state.copyWith(stats: stats);
    });

    await SharedPreferences.getInstance().then((prefs) {
      prefs.setString(
        PrefsKeys.statsMinutesState,
        jsonEncode(StatsStateForPrefs(
          stateJsonString: jsonEncode(state.toJson()),
          savedDate: DateTime.now(),
        ).toJson()),
      );
    });
  }
}
