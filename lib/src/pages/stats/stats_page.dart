import 'package:flutter/material.dart';
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
            child: Container(),
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
