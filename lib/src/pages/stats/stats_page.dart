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
                  backgroundLineColor: Colors.white,
                  textColor: Colors.white,
                  tooltipColor: theme.dividerColor,
                  title: 'Minutes focused',
                );
              },
            ),
          ),
          SizedBox(height: 16),
          Expanded(flex: 2, child: Container()),
          SizedBox(height: 4),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Container(),
                ),
                SizedBox(width: 4),
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
