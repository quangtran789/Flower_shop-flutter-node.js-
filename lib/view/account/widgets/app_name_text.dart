import 'package:byshop/view/account/widgets/titles_text.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class AppNameTextWidget extends StatelessWidget {
  final double fontSize;
  const AppNameTextWidget({
    super.key,
    this.fontSize = 20,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 2),
      child: TitlesTextWidget(
        label: "T-Shirt Shop",
        fontFamily: 'Matemasie',
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Color(0xffFFEB3B),
      ),
    );
  }
}
