import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:byshop/view/admin/models/sales.dart';

class CategoryProductsBarChart extends StatelessWidget {
  final List<Sales> salesData;
  const CategoryProductsBarChart({
    Key? key,
    required this.salesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BarChart(
      BarChartData(
        gridData: FlGridData(show: false),
        titlesData: FlTitlesData(show: true),
        borderData: FlBorderData(show: true),
        barGroups: salesData.asMap().entries.map((entry) {
          int index = entry.key;
          Sales sales = entry.value;
          return BarChartGroupData(
            x: index,
            barRods: [
              BarChartRodData(
                toY: sales.earning.toDouble(),
                color: Colors.blue,
                width: 16,
                backDrawRodData: BackgroundBarChartRodData(
                  toY: 0,
                  color: Colors.grey[200]!,
                ),
              ),
            ],
          );
        }).toList(),
      ),
    );
  }
}
