import 'dart:convert';

import 'package:flutter/foundation.dart';

class UserModel {
  final String name;
  final String? photoURL;

  UserModel({required this.name, required this.photoURL});
  // transformando o usuario em user model
  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(name: map['name'], photoURL: map['photoURL']);
  }

  factory UserModel.formJson(String json) => UserModel.fromMap(jsonDecode(json));

  // transformando o usuario em map
  Map<String, dynamic> toMap() => {
        "name": name,
        "photoURL": photoURL,
      };
  // transformando o usuario em json
  String toJson() => jsonEncode(toMap());
}
