import 'package:flutter/material.dart';
import 'package:nlw/shared/auth/auth_controller.dart';
import 'package:nlw/shared/themes/app_colors.dart';
import 'package:nlw/shared/themes/app_images.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authcontroller = AuthController();
    authcontroller.currentUser(context);
    return Scaffold(
      backgroundColor: AppColors.background,
      // para empilhar as fotos
      body: Stack(
        children: [
          Center(child: Image.asset(AppImages.union)),
          Center(child: Image.asset(AppImages.logoFull)),
        ],
      ),
    );
  }
}
