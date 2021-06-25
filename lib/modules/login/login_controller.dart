import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:nlw/shared/auth/auth_controller.dart';
import 'package:nlw/shared/models/user_model.dart';

class LoginController {
  final authcontroller = AuthController();
  Future<void> google_sign_in(BuildContext context) async {
    GoogleSignIn _googleSignIn = GoogleSignIn(
      scopes: ['email'],
    );
    try {
      final response = await _googleSignIn.signIn();
      final user =
          UserModel(name: response!.displayName!, photoURL: response.photoUrl);
      print(response);
      authcontroller.setUser(context, user);
    } catch (error) {
      print(error);
      authcontroller.setUser(context, null);
    }
  }
}
