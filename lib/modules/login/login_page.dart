import 'package:flutter/material.dart';
import 'package:nlw/shared/themes/app_colors.dart';
import 'package:nlw/shared/themes/app_images.dart';
import 'package:nlw/shared/themes/app_text_styles.dart';
import 'package:nlw/shared/widgets/social_login/social_login_btn.dart';

//width = 411 , height = 683

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    //recuperando o tamanho da tela
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.background,
      body: Container(
        height: size.height,
        width: size.width,
        child: Stack(
          children: [
            Container(
              width: size.width,
              height: size.height * 0.35,
              color: AppColors.primary,
            ),
            Positioned(
              left: 0,
              right: 0,
              top: 37,
              child: Image.asset(AppImages.person, height: size.height * 0.4),
            ),
            Positioned(
              bottom: size.height * 0.10,
              left: 0,
              right: 0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(AppImages.logomini),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.20,
                      right: size.width * 0.20,
                    ),
                    child: Text(
                      "Organize seus boletos em um só lugar",
                      textAlign: TextAlign.center,
                      style: TextStyles.titleHome,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: size.width * 0.058,
                      right: size.width * 0.058,
                      top: size.width * 0.12,
                    ),
                    child: SocialLoginBtn(
                      onTap: () {
                        print("deu certo");
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
