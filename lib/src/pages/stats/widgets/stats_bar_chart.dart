import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class StatsBarChart extends HookWidget {
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
  final Color lineColor;
  final Color backgroundColor;
  final Color backgroundLineColor;
  final Color textColor;
  final Color tooltipColor;
  final String title;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final touchedIndexNotifier = useValueNotifier(-1);

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
            child: ValueListenableBuilder(
              valueListenable: touchedIndexNotifier,
              builder: (context, touchedIndex, child) {
                return BarChart(
                  BarChartData(
                    barTouchData: BarTouchData(
                      touchTooltipData: BarTouchTooltipData(
                        tooltipRoundedRadius: 12,
                        tooltipBgColor: tooltipColor.withOpacity(0.9),
                        getTooltipItem: (group, groupIndex, rod, rodIndex) {
                          return BarTooltipItem(
                            '${stats[groupIndex]}',
                            theme.textTheme.subtitle2!.copyWith(
                              color: backgroundColor,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        },
                      ),
                      touchCallback: (barTouchResponse) {
                        if (barTouchResponse.spot == null ||
                            barTouchResponse.touchInput is PointerUpEvent) {
                          touchedIndexNotifier.value = -1;
                          return;
                        }
                        touchedIndexNotifier.value =
                            barTouchResponse.spot!.touchedBarGroupIndex;
                      },
                    ),
                    barGroups: [
                      for (int i = 0; i < stats.length; i++)
                        BarChartGroupData(
                          x: i,
                          barRods: [
                            BarChartRodData(
                              y: touchedIndex == -1
                                  ? stats[i].toDouble()
                                  : touchedIndex == i
                                      ? max(stats.reduce(max) * 0.75,
                                          stats[i] * 1.2)
                                      : 0,
                              width: 20,
                              colors: [
                                touchedIndex == -1
                                    ? lineColor
                                    : touchedIndex == i
                                        ? lineColor
                                        : Colors.white,
                              ],
                              backDrawRodData: BackgroundBarChartRodData(
                                colors: [backgroundLineColor],
                                show: true,
                                y: stats.reduce(max) * 1.2,
                              ),
                            ),
                          ],
                        )
                    ],
                    alignment: BarChartAlignment.center,
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(showTitles: false),
                      bottomTitles: SideTitles(
                        showTitles: true,
                        getTitles: (index) {
                          if (index == 0) {
                            return 'M';
                          }
                          if (index == 1) {
                            return 'T';
                          }
                          if (index == 2) {
                            return 'W';
                          }
                          if (index == 3) {
                            return 'T';
                          }
                          if (index == 4) {
                            return 'F';
                          }
                          if (index == 5) {
                            return 'S';
                          }
                          if (index == 6) {
                            return 'S';
                          }
                          return 'hi';
                        },
                        getTextStyles: (value) =>
                            theme.textTheme.caption!.copyWith(color: textColor),
                        margin: 8,
                        reservedSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
