import 'package:firebase_auth/firebase_auth.dart';
import 'package:fruit_hub/core/errors/exceptions.dart';
import 'package:fruit_hub/core/services/auth_service.dart';

class FirebaseAuthService extends AuthService {
  @override
  Future<void> deleteUser() async {
    await FirebaseAuth.instance.currentUser!.delete();
  }

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
      if (e.code == 'weak-password') {
        throw CustomException(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomException(
          message: 'The account already exists for that email.',
        );
      } else {
        throw CustomException(message: e.toString());
      }
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<User> loginWithEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'unknown-error') {
        throw CustomException(message: 'Invalid Credentials');
      }
      throw CustomException(message: e.message.toString());
    } catch (e) {
      throw CustomException(message: e.toString());
    }
  }

  @override
  Future<User> loginWithGoogle() async {
    try {
      final userCredential = await FirebaseAuth.instance.signInWithProvider(
        GoogleAuthProvider(),
      );

      return userCredential.user!;
    } on FirebaseAuthException catch (e) {
      // Handle Firebase specific errors
      throw CustomException(message: e.message.toString());
    } catch (e) {
      // Handle any other errors
      print('Google Sign-In Error: $e');
      throw CustomException(message: 'Google Sign-In Error: ${e.toString()}');
    }
  }

  bool isLoggedIn() => FirebaseAuth.instance.currentUser != null;
}
