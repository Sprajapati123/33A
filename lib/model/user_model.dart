// To parse this JSON data, do
//
//     final userModel = userModelFromJson(jsonString);

import 'dart:convert';

UserModel userModelFromJson(String str) => UserModel.fromJson(json.decode(str));

String userModelToJson(UserModel data) => json.encode(data.toJson());

class UserModel {
  String email;
  String? firstname;
  String? lastname;
  String? image;

  UserModel({
    required this.email,
    this.firstname,
    this.lastname,
    this.image,
  });

  factory UserModel.fromJson(Map<String, dynamic> json) => UserModel(
        email: json["email"],
        firstname: json["firstname"],
        image: json["image"],
        lastname: json["lastname"],
      );

  Map<String, dynamic> toJson() => {
        "email": email,
        "image": image,
        "firstname": firstname,
        "lastname": lastname,
      };
}
