import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:nlw/modules/login/login_page.dart';
import 'package:nlw/modules/splash/splash_page.dart';
import 'package:nlw/shared/themes/app_colors.dart';

import 'app_widget.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatefulWidget {
  @override
  _AppFirebaseState createState() => _AppFirebaseState();
}

class _AppFirebaseState extends State<AppFirebase> {
  final Future<FirebaseApp> _initialization = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _initialization,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            return Material(
              child: Center(
                child: Text("nao foi possivel conectar ao bando de dados"),
              ),
            );
          } else if (snapshot.connectionState == ConnectionState.done) {
            return AppWidget();
          } else {
            return Material(child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
