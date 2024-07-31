import 'dart:developer';

import 'package:admin_pannel/data/model/user_register/user_register_model.dart';
import 'package:admin_pannel/domain/repository/iuser_auth_repository.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserRegisterRepository implements IUserAuthRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final FirebaseFirestore _firetore = FirebaseFirestore.instance;

  @override
  Future<void> registerUser(String email, String password) async {
    try {
      final UserCredential response = await _firebaseAuth
          .createUserWithEmailAndPassword(email: email, password: password);
      final User? user = response.user;

      if (user == null) {
        throw Exception("User not found");
      }

      await saveUser(UserRegisterModel(
        email: email,
        password: password,
        uid: user.uid,
      ));
    } on FirebaseException catch (e) {
      log('Firebase exception: $e');
    }
  }

  Future<void> saveUser(UserRegisterModel user) async {
    try {
      await _firetore.collection('newuser').doc(user.uid).set(user.toJson());
    } on FirebaseException catch (e) {
      log('Error: $e');
    }
  }

  @override
  Future<UserCredential?> signInWithEmailAndPassword(
      String email, String password) async {
    try {
      UserCredential userCredential = await _firebaseAuth
          .signInWithEmailAndPassword(email: email, password: password);
      return userCredential;
    } on FirebaseAuthException catch (e) {
      log('Firebase Auth exception: $e');
    } on FirebaseException catch (e) {
      log('Firebase exception: $e');
    }
    return null;
  }
}
