import 'package:byshop/common/widgets/loader.dart';
import 'package:byshop/view/admin/models/sales.dart';
import 'package:byshop/view/admin/services/admin_services.dart';
import 'package:byshop/view/admin/widgets/CategoryProductsBarChart.dart';
import 'package:byshop/view/admin/widgets/CategoryProductsPieChart.dart';
import 'package:byshop/view/admin/widgets/category_products_chart.dart'; // Biểu đồ Đường
// Biểu đồ Tròn
import 'package:flutter/material.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({Key? key}) : super(key: key);

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  final AdminServices adminServices = AdminServices();
  int? totalSales;
  List<Sales>? earnings;

  @override
  void initState() {
    super.initState();
    getEarnings();
  }

  getEarnings() async {
    var earningData = await adminServices.getEarnings(context);
    totalSales = earningData['totalEarnings'];
    earnings = earningData['sales'];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return earnings == null || totalSales == null
        ? const Loader()
        : SingleChildScrollView(
          child: Column(
              children: [
                Text(
                  '\$$totalSales',
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 250,
                  child: CategoryProductsChart(
                      salesData: earnings!), // Biểu đồ Đường
                ),
                SizedBox(
                  height: 250,
                  child: CategoryProductsBarChart(
                      salesData: earnings!), // Biểu đồ Cột
                ),
                SizedBox(
                  height: 250,
                  child: CategoryProductsPieChart(
                      salesData: earnings!), // Biểu đồ Tròn
                ),
              ],
            ),
        );
  }
}
