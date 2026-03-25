import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this._authRepo) : super(LoginInitial());
  final AuthRepo _authRepo;

  Future<void> loginUser(String email, String password) async {
    emit(LoginLoading());
    final result = await _authRepo.signInWithEmailAndPassword(email, password);
    result.fold(
      (l) => emit(
        LoginFailure(errorMessage: l.message),
      ),
      (r) => emit(
        LoginSuccess(user: r),
      ),
    );
  }
}
