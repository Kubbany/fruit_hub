import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/services/auth_service.dart';

class FirebaseAuthService extends AuthService {
  @override
  Future<User> createUserWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(
            email: email,
            password: password,
          );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      debugPrint(e.code.toString());
      throw CustomException(message: e.message.toString());
      // if (e.code == 'weak-password') {
      //   print('The password provided is too weak.');
      // } else if (e.code == 'email-already-in-use') {
      //   print('The account already exists for that email.');
      // }
    } catch (e) {
      debugPrint(e.toString());
      throw CustomException(message: e.toString());
    }
  }
}
