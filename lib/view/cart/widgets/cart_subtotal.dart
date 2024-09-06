import 'package:byshop/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CartSubtotal extends StatelessWidget {
  const CartSubtotal({super.key});

  @override
  Widget build(BuildContext context) {
    final user = context.watch<UserProvider>().user;
    int sum = 0;
    user.cart
        .map((e) => sum += e['quantity'] * e['product']['price'] as int)
        .toList();
    return Container(
      margin: const EdgeInsets.all(10),
      child: Row(
        children: [
          const Text(
            "Tổng: ",
            style: TextStyle(
              fontFamily: 'Matemasie',
              fontSize: 20,
            ),
          ),
          Text(
            '$sum đ',
            style: const TextStyle(
              fontFamily: 'Matemasie',
              fontSize: 20,
            ),
          )
        ],
      ),
    );
  }
}
