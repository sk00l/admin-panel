import 'dart:developer';
import 'dart:io';

import 'package:admin_pannel/data/model/user/user_model.dart';
import 'package:admin_pannel/domain/repository/iuser_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';

class UserRepository implements IUserRepository {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  final FirebaseStorage _firebaeStorage = FirebaseStorage.instance;

  @override
  Stream<List<UserModel>> getRealTimeStreamData() {
    CollectionReference collectionReference = _firestore.collection('user');

    return collectionReference.snapshots().map((user) => user.docs
        .map((e) => UserModel.fromJson(e.data() as Map<String, dynamic>))
        .toList());
  }

  @override
  Future<List<UserModel>?> getUser() async {
    CollectionReference collectionReference = _firestore.collection('user');
    QuerySnapshot querySnapshot = await collectionReference.get();

    return querySnapshot.docs
        .map((e) => UserModel.fromJson((e.data() as Map<String, dynamic>)))
        .toList();
  }

  @override
  Future<UserModel?> getUserById(String email) async {
    CollectionReference collectionReference = _firestore.collection('user');
    var res = await collectionReference.doc(email).get();
    return UserModel.fromJson((res.data() as Map<String, dynamic>));
  }

  @override
  Future<void> saveUser(UserModel userModel) async {
    CollectionReference collectionReference = _firestore.collection('user');
    await collectionReference.doc(userModel.email).set(userModel.toMap());
  }

  @override
  Future<void> updateUser(UserModel userModel) async {
    try {
      CollectionReference collectionReference = _firestore.collection('user');

      await collectionReference.doc(userModel.email).update(userModel.toMap());
    } on FirebaseException catch (e) {
      log("Firebase exception:${e.toString()}");
    } on Exception catch (e) {
      log("Exception:${e.toString()}");
    }
  }

  @override
  Future<String> uploadImage(File imageFile) async {
    Reference ref = _firebaeStorage
        .ref('users')
        .child('users_images/${imageFile.path.split('/').last}');

    var res = await ref.putFile(imageFile);
    var url = await res.ref.getDownloadURL();
    return url;
  }

  @override
  Future<File> getFileFromPicker() async {
    FilePickerResult? pickedImage = await FilePicker.platform.pickFiles();
    if (pickedImage == null) {
      throw Exception('No image selected');
    }

    File imageFile = File(pickedImage.files.single.path!);

    return imageFile;
  }

  @override
  Future<void> deleteUserbyEmail(String email) async {
    try {
      await _firestore.collection('user').doc(email).delete();
      log('deleted user');
    } on FirebaseException catch (e) {
      log(e.toString());
    }
  }
}
