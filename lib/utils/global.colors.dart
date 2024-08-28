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
      Color(0xff3ABEF9),
      Color.fromARGB(255, 125, 221, 216),
    ],
    stops: [0.5, 1.0],
  );

  static const secondaryColor = Color.fromRGBO(255, 153, 0, 1);
  static const backgroundColor = Colors.white;
  static const Color greyBackgroundCOlor = Color(0xffebecee);
  static var selectedNavBarColor = Colors.cyan[800]!;
  static const unselectedNavBarColor = Colors.black87;
}
