import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthService {
  Future<User> createUserWithEmailAndPassword({
    required String username,
    required String email,
    required String password,
  });

  Future<User> loginWithEmailAndPassword({
    required String email,
    required String password,
  });

  Future<User> loginWithGoogle();
}
