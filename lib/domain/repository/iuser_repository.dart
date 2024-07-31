import 'dart:io';

import 'package:admin_pannel/data/model/user/user_model.dart';

abstract interface class IUserRepository {
  Future<File> getFileFromPicker();
  Stream<List<UserModel>> getRealTimeStreamData();
  Future<List<UserModel>?> getUser();

  Future<UserModel?> getUserById(String email);

  Future<void> saveUser(UserModel userModel);

  Future<String> uploadImage(File imageFile);

  Future<void> deleteUserbyEmail(String email);

  Future<void> updateUser(UserModel userMOdel);
}
