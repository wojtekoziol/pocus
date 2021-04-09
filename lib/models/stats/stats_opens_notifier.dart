import 'dart:convert';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/prefs/stats/stats_state_for_prefs.dart';
import 'package:pocus/models/stats/state/stats_state.dart';
import 'package:pocus/utils/prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StatsOpensNotifier extends StateNotifier<StatsState> {
  StatsOpensNotifier() : super(StatsState(stats: [0, 0, 0, 0, 0, 0, 0]));

  Future<void> getStats() async {
    await SharedPreferences.getInstance().then((prefs) {
      final statsOpensForPrefsString =
          prefs.getString(PrefsKeys.statsOpensState);

      if (statsOpensForPrefsString == null) return;

      final statsOpensForPrefs =
          StatsStateForPrefs.fromJson(jsonDecode(statsOpensForPrefsString));

      final now = DateTime.now();
      if (statsOpensForPrefs.savedDate.weekday > now.weekday ||
          now.difference(statsOpensForPrefs.savedDate) > Duration(days: 7)) {
        prefs.setString(
          PrefsKeys.statsOpensState,
          jsonEncode(StatsStateForPrefs(
            stateJsonString: jsonEncode(state.toJson()),
            savedDate: DateTime.now(),
          ).toJson()),
        );
        return;
      }

      state =
          StatsState.fromJson(jsonDecode(statsOpensForPrefs.stateJsonString));

      if (state.stats[now.weekday - 1] == 0) {
        insert();
      }
    });
  }

  Future<void> insert() async {
    final weekday = DateTime.now().weekday;
    var stats = state.stats
      ..replaceRange(weekday - 1, weekday, [state.stats[weekday - 1] + 1]);

    state = state.copyWith(stats: stats);

    await SharedPreferences.getInstance().then((prefs) {
      prefs.setString(
        PrefsKeys.statsOpensState,
        jsonEncode(StatsStateForPrefs(
          stateJsonString: jsonEncode(state.toJson()),
          savedDate: DateTime.now(),
        ).toJson()),
      );
    });
  }
}
