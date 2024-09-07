import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:byshop/view/admin/models/sales.dart';

class CategoryProductsChart extends StatelessWidget {
  final List<Sales> salesData;
  const CategoryProductsChart({
    Key? key,
    required this.salesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<FlSpot> spots = salesData
        .map((sales) => FlSpot(
              salesData.indexOf(sales).toDouble(),
              sales.earning.toDouble(),
            ))
        .toList();

    return LineChart(
      LineChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: true),
        borderData: FlBorderData(show: true),
        minX: 0,
        maxX: (salesData.length - 1).toDouble(),
        minY: 0,
        maxY: (salesData.map((e) => e.earning).reduce((a, b) => a > b ? a : b) + 10).toDouble(),
        lineBarsData: [
          LineChartBarData(
            spots: spots,
            isCurved: true,
            color: Colors.blue,
            dotData: FlDotData(show: false),
            belowBarData: BarAreaData(show: false),
          ),
        ],
      ),
    );
  }
}
