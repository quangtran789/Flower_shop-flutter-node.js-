import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:byshop/view/admin/models/sales.dart';

class CategoryProductsPieChart extends StatelessWidget {
  final List<Sales> salesData;
  const CategoryProductsPieChart({
    Key? key,
    required this.salesData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PieChart(
      PieChartData(
        sections: salesData.map((sales) {
          return PieChartSectionData(
            value: sales.earning.toDouble(),
            title: '${sales.label}',
            color: Colors.primaries[salesData.indexOf(sales) % Colors.primaries.length],
            radius: 60,
          );
        }).toList(),
        borderData: FlBorderData(show: false),
        sectionsSpace: 0,
      ),
    );
  }
}
