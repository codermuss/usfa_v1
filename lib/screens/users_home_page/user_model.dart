// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

import 'package:usfa_v1/utils/helpers/base_model.dart';

class UserModel extends BaseModel {
  UserModel({
    this.name,
    this.username,
  });

  String? name;
  String? username;
  @override
  fromJson(Map<String, dynamic> json) => UserModel(
        name: json["name"],
        username: json["username"],
      );
  @override
  List<UserModel> userModelFromJson(String str) => List<UserModel>.from(
      json.decode(str).map((x) => UserModel().fromJson(x)));
}
