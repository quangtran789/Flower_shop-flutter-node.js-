import 'package:byshop/common/widgets/botton_bar.dart';
import 'package:byshop/providers/user_provider.dart';
import 'package:byshop/route.dart';
import 'package:byshop/services/auth_services.dart';
import 'package:byshop/view/home/screens/home_screen.dart';
import 'package:byshop/view/loginview.dart';
import 'package:byshop/view/splashview.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => UserProvider(),
        )
      ],
      child: const MainApp(),
    ),
  );
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  _MainAppState createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  final AuthServices authServices = AuthServices();
  @override
  void initState() {
    super.initState();
    authServices.getUserData(context);
  }

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: SplashView.routeName,
      onGenerateRoute: generateRoute,
      home: Provider.of<UserProvider>(context).user.token.isNotEmpty
          ? const BottonBar()
          : const SplashView(),
    );
  }
}
