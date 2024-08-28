import 'package:byshop/view/account/widgets/account_button.dart';
import 'package:flutter/material.dart';

class TopButton extends StatefulWidget {
  const TopButton({super.key});

  @override
  State<TopButton> createState() => _TopButtonState();
}

class _TopButtonState extends State<TopButton> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            AccountButton(text: 'Đơn hàng của bạn', onTap: () {}),
            AccountButton(text: 'Chuyển sang người bán', onTap: () {}),
          ],
        ),
        const SizedBox(height: 10),
        Row(
          children: [
            AccountButton(text: 'Sản phẩm yêu thích', onTap: () {}),
            AccountButton(text: 'Đăng xuất', onTap: () {}),
          ],
        )
      ],
    );
  }
}
