import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class StatsBarChart extends StatelessWidget {
  StatsBarChart({
    required this.stats,
    required this.backgroundColor,
    required this.lineColor,
    required this.backgroundLineColor,
    required this.textColor,
    required this.tooltipColor,
    required this.title,
  }) : assert(stats.length == 7);

  final List<int> stats;
  final Color backgroundColor;
  final Color lineColor;
  final Color backgroundLineColor;
  final Color textColor;
  final Color tooltipColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(32),
      ),
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text(
            title,
            style: theme.textTheme.headline5!.copyWith(color: textColor),
          ),
          Text(
            'This week',
            style: theme.textTheme.subtitle1!.copyWith(color: textColor),
          ),
          SizedBox(height: 16),
          Expanded(
            child: BarChart(
              BarChartData(
                barTouchData: BarTouchData(
                    touchTooltipData: BarTouchTooltipData(
                  tooltipRoundedRadius: 16,
                  tooltipBgColor: tooltipColor,
                  getTooltipItem: (group, groupIndex, rod, rodIndex) {
                    return BarTooltipItem(
                        '${stats[groupIndex]}',
                        theme.textTheme.subtitle2!.copyWith(
                          color: backgroundColor,
                          fontWeight: FontWeight.bold,
                        ));
                  },
                )),
                barGroups: [
                  for (int i = 0; i < stats.length; i++)
                    BarChartGroupData(
                      x: i,
                      barRods: [
                        BarChartRodData(
                          y: stats[i].toDouble(),
                          width: 20,
                          colors: [lineColor],
                          backDrawRodData: BackgroundBarChartRodData(
                            colors: [backgroundLineColor],
                            show: true,
                            y: stats.reduce(max).toDouble(),
                          ),
                        ),
                      ],
                    )
                ],
                alignment: BarChartAlignment.center,
                borderData: FlBorderData(show: false),
                titlesData: FlTitlesData(show: false),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
