import 'package:firebase_auth/firebase_auth.dart';

abstract class IUserAuthRepository {
  Future<void> registerUser(String email, String password);

  Future<UserCredential?> signInWithEmailAndPassword( String email, String password);
}
