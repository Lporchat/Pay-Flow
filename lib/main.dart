import 'package:flutter/material.dart';
import 'package:nlw/modules/login/login_page.dart';
import 'package:nlw/modules/splash/splash_page.dart';
import 'package:nlw/shared/themes/app_colors.dart';

void main() {
  runApp(AppWidget());
}

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pay Flow',
      theme: ThemeData(primaryColor: AppColors.primary),
      //home: SplashPage(),
      home: LoginPage(),
    );
  }
}
