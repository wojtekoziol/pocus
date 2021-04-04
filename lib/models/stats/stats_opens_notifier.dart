import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/models/stats/state/stats_state.dart';
import 'package:pocus/utils/prefs_keys/prefs_keys.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StatsOpensNotifier extends StateNotifier<StatsState> {
  StatsOpensNotifier()
      : super(StatsState(
          stats: [0, 0, 0, 0, 0, 0, 0],
          lastUpdated: DateTime.now(),
        ));

  Future<void> getStats() async {
    await SharedPreferences.getInstance().then((prefs) {
      final jsonString = prefs.getString(PrefsKeys.statsOpensState);
      if (jsonString == null) return;
      final stats = StatsState.fromJson(jsonDecode(jsonString));
      if (stats.lastUpdated.weekday > DateTime.now().weekday ||
          DateTime.now().difference(stats.lastUpdated) > Duration(days: 7)) {
        prefs.setString(PrefsKeys.statsOpensState, jsonEncode(state.toJson()));
        return;
      }
      state = stats;
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
      prefs.setString(PrefsKeys.statsOpensState, jsonEncode(state.toJson()));
    });
  }
}