import 'package:byshop/utils/global.colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialLogin extends StatelessWidget {
  const SocialLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center, // Căn giữa toàn bộ Row
          children: [
            Container(
              alignment: Alignment.center,
              height: 55,
              width: 55, // Giữ width cố định
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/images/google.svg',
                height: 20,
              ),
            ),
            const SizedBox(
              width: 20, // Tạo khoảng cách giữa các icon
            ),
            Container(
              alignment: Alignment.center,
              height: 55,
              width: 55, // Giữ width cố định
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/images/fb.svg',
                height: 25,
              ),
            ),
            const SizedBox(
              width: 20, // Tạo khoảng cách giữa các icon
            ),
            Container(
              alignment: Alignment.center,
              height: 55,
              width: 55, // Giữ width cố định
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(6),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(.1),
                    blurRadius: 10,
                  ),
                ],
              ),
              child: SvgPicture.asset(
                'assets/images/twitter-logo-2.svg',
                height: 25,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
