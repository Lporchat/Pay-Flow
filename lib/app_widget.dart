import 'package:flutter/material.dart';

import 'modules/home/home_page.dart';
import 'modules/login/login_page.dart';
import 'modules/splash/splash_page.dart';
import 'shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pay Flow',
        theme: ThemeData(primaryColor: AppColors.primary),
        //home: SplashPage(),
        initialRoute: "/splash",
        routes: {
          "/home": (context) => HomePage(),
          "/login": (context) => LoginPage(),
          "/splash": (context) => SplashPage(),
        });
  }
}
