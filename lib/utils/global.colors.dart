import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

String uri = 'http://192.168.1.20:3000';

class GlobalColors {
  static HexColor mainColor = HexColor('#1E3190');
  static HexColor textColor = HexColor('#F5F5F5');
}

const kscaffoldColor = Color(0xffffffff);
const kcontentColor = Color(0xffF5F5F5);
const kprimaryColor = Color(0xff1E3190);

class GlobalVariables {
  // COLORS
  static const appBarGradient = LinearGradient(
    colors: [
      Color(0xffffc6c7),
      Color.fromARGB(255, 234, 44, 168),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
  // STATIC IMAGES
  static const List<String> carouselImages = [
    'https://img.freepik.com/free-vector/flat-design-spring-background_23-2148830735.jpg?t=st=1725699604~exp=1725703204~hmac=b8b1e2c64f9184859aed8fbf1f243b0e09e6b978ff2fa29675276ef3b5a22ac9&w=996',
    'https://img.freepik.com/free-vector/floral-spring-wallpaper-with-greeting_23-2148825681.jpg?t=st=1725699637~exp=1725703237~hmac=faea2724a2987143e1a4d248eb36aa30743baecaea9ced259380a861d2c0644e&w=996',
    'https://img.freepik.com/free-vector/spring-pink-rose-floral-background-with-watercolor_65186-2890.jpg?t=st=1725699105~exp=1725702705~hmac=4f35eceb40b86eacb23041be47815aaa7eda64616bf5432d2a74ddc543b16df1&w=996',
    'https://img.freepik.com/free-vector/pink-flower-set_53876-93707.jpg?t=st=1725699672~exp=1725703272~hmac=019ad598374668146cc58a068dd20d44db26a91ed335a10f1a6fc98b45d79018&w=996',
  ];

  static const List<Map<String, String>> categoryImages = [
    {
      'title': 'Hoa tươi',
      'image': 'assets/images/ornamental-cabbage.png',
    },
    {
      'title': 'Hoa khô',
      'image': 'assets/images/flower.png',
    },
    {
      'title': 'Hạt giống',
      'image': 'assets/images/fruit-tree.png',
    },
    {
      'title': 'Chậu hoa',
      'image': 'assets/images/flower (1).png',
    },
    {
      'title': 'Hoa sự kiện',
      'image': 'assets/images/mandala.png',
    },
  ];
}
