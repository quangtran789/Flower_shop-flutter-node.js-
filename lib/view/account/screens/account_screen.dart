import 'package:byshop/utils/global.colors.dart';
import 'package:byshop/view/account/widgets/app_name_text.dart';
import 'package:byshop/view/account/widgets/below_app_bar.dart';
import 'package:byshop/view/account/widgets/orders.dart';
import 'package:byshop/view/account/widgets/top_button.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff0dfce),
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(60),
        child: AppBar(
          flexibleSpace: Container(
            decoration: const BoxDecoration(
              gradient: GlobalVariables.appBarGradient,
            ),
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                alignment: Alignment.topLeft,
                child: Image.asset(
                  'assets/images/80699.jpg',
                  width: 100, // Điều chỉnh kích thước width để vừa vặn
                  height: 40, // Điều chỉnh kích thước height để vừa vặn
                  fit:
                      BoxFit.contain, // Sử dụng BoxFit để điều chỉnh kích thước
                ),
              ),
              Container(
                padding: const EdgeInsets.only(left: 15, right: 15),
                child: Row(
                  children: const [
                    Padding(
                      padding: EdgeInsets.only(right: 15),
                      child: Icon(Icons.notifications_outlined),
                    ),
                    Icon(Icons.search_outlined),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      body: Column(
        children: const [
          BelowAppBar(),
          SizedBox(height: 10),
          TopButton(),
          SizedBox(height: 20),
          Orders(),
        ],
      ),
    );
  }
}
