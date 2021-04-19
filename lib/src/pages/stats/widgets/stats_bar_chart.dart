import 'dart:math';

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:pocus/utils/translations/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';

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
            style: theme.textTheme.headline6!.copyWith(color: textColor),
          ),
          SizedBox(height: 2),
          Text(
            LocaleKeys.stats_subtitle.tr(),
            style: theme.textTheme.subtitle2!.copyWith(color: textColor),
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
                          if (stats[groupIndex] == 0) return null;
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
                        if (touchedIndex != -1) return;
                        if (stats[
                                barTouchResponse.spot!.touchedBarGroupIndex] ==
                            0) return;
                        HapticFeedback.mediumImpact();
                        touchedIndexNotifier.value =
                            barTouchResponse.spot!.touchedBarGroupIndex;
                      },
                    ),
                    barGroups: [
                      ...stats.asMap().map(
                        (index, y) {
                          var adaptiveY = y.toDouble();
                          if (touchedIndex == index) {
                            adaptiveY = max(stats.reduce(max) * 0.75, y * 1.2);
                          } else if (touchedIndex != -1) {
                            adaptiveY = min(1, y).toDouble();
                          }

                          return MapEntry(
                            index,
                            BarChartGroupData(
                              x: index,
                              barRods: [
                                BarChartRodData(
                                  y: adaptiveY,
                                  width: 20,
                                  colors: [lineColor],
                                  backDrawRodData: BackgroundBarChartRodData(
                                    colors: [backgroundLineColor],
                                    show: true,
                                    y: max(stats.reduce(max) * 1.2, 1),
                                  ),
                                ),
                              ],
                            ),
                          );
                        },
                      ).values
                    ],
                    alignment: BarChartAlignment.center,
                    borderData: FlBorderData(show: false),
                    titlesData: FlTitlesData(
                      leftTitles: SideTitles(showTitles: false),
                      bottomTitles: SideTitles(
                        showTitles: true,
                        getTitles: (index) {
                          if (index == 0) {
                            return LocaleKeys.days_monday.tr();
                          }
                          if (index == 1) {
                            return LocaleKeys.days_tuesday.tr();
                          }
                          if (index == 2) {
                            return LocaleKeys.days_wednesday.tr();
                          }
                          if (index == 3) {
                            return LocaleKeys.days_thursday.tr();
                          }
                          if (index == 4) {
                            return LocaleKeys.days_friday.tr();
                          }
                          if (index == 5) {
                            return LocaleKeys.days_saturday.tr();
                          }
                          if (index == 6) {
                            return LocaleKeys.days_sunday.tr();
                          }
                          return '';
                        },
                        getTextStyles: (index) {
                          if (index == DateTime.now().weekday - 1) {
                            return theme.textTheme.caption!.copyWith(
                              color: textColor,
                              fontWeight: FontWeight.bold,
                            );
                          }
                          return theme.textTheme.caption!.copyWith(
                            color: textColor,
                          );
                        },
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
