import 'package:byshop/common/widgets/botton_bar.dart';
import 'package:byshop/view/home/screens/home_screen.dart';
import 'package:byshop/view/loginview.dart';
import 'package:byshop/view/splashview.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const SplashView(),
      );
    case HomeScreen.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const HomeScreen(),
      );
    case BottonBar.routeName:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const BottonBar(),
      );
    default:
      return MaterialPageRoute(
        settings: routeSettings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text('Screen does not exist!'),
          ),
        ),
      );
  }
}
