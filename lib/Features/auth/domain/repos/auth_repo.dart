import 'package:dartz/dartz.dart';
import 'package:fruit_hub/core/errors/failure.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntity>> createUserWithEmailAndPassword(
    String username,
    String email,
    String password,
  );
  Future<Either<Failure, UserEntity>> loginWithEmailAndPassword(
    String email,
    String password,
  );
  //Future<Either<Failure, UserEntity>> loginWithGoogle();

  Future<void> addUserData(UserEntity user);
  Future<void> saveUserData(UserEntity user);

  Future<UserEntity> getUserData({required String uId});
}
