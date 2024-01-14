import 'package:batch_33a/model/user_model.dart';
import 'package:batch_33a/repository/user_repo.dart';
import 'package:flutter/material.dart';

class UserViewModel with ChangeNotifier {
  Future<void> saveData(UserModel data) async {
    await UserRepo().saveData(data);
  }
}
