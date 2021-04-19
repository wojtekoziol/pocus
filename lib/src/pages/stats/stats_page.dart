import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/stats/widgets/stats_bar_chart.dart';
import 'package:pocus/src/pages/stats/widgets/stats_number_indicator.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

class StatsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Expanded(
            flex: 2,
            child: Consumer(
              builder: (context, watch, child) {
                final stats = watch(statsMinutesNotifierProvider.state).stats;

                return StatsBarChart(
                  stats: stats,
                  backgroundColor: theme.primaryColor,
                  lineColor: theme.accentColor,
                  backgroundLineColor: theme.scaffoldBackgroundColor,
                  textColor: Colors.white,
                  tooltipColor: theme.accentColor,
                  title: LocaleKeys.stats_title_1.tr(),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            flex: 2,
            child: Consumer(
              builder: (context, watch, child) {
                final stats = watch(statsOpensNotifierProvider.state).stats;

                return StatsBarChart(
                  stats: stats,
                  backgroundColor: theme.dividerColor,
                  lineColor: theme.primaryColor,
                  backgroundLineColor: theme.scaffoldBackgroundColor,
                  textColor: theme.primaryColor,
                  tooltipColor: theme.primaryColor,
                  title: LocaleKeys.stats_title_2.tr(),
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Consumer(
                    builder: (context, watch, child) {
                      final minutesFocused =
                          watch(statsMinutesNotifierProvider.state)
                              .stats[DateTime.now().weekday - 1];

                      return StatsNumberIndicator(
                        title: LocaleKeys.stats_title_1.tr(),
                        value: minutesFocused,
                        backgroundColor: theme.primaryColor,
                        textColor: Colors.white,
                      );
                    },
                  ),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Consumer(
                    builder: (context, watch, child) {
                      final appOpens = watch(statsOpensNotifierProvider.state)
                          .stats[DateTime.now().weekday - 1];

                      return StatsNumberIndicator(
                        title: LocaleKeys.stats_title_2.tr(),
                        value: appOpens,
                        backgroundColor: theme.dividerColor,
                        textColor: theme.primaryColor,
                      );
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
