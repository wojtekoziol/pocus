import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pocus/providers.dart';
import 'package:pocus/src/pages/stats/widgets/stats_bar_chart.dart';

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
                  tooltipColor: theme.dividerColor,
                  title: 'Minutes focused',
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
                  title: 'App opens',
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                SizedBox(width: 16),
                Expanded(
                  child: Container(),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
