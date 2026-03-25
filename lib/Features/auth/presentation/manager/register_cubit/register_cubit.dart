import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';
import 'package:fruit_hub/features/auth/domain/repos/auth_repo.dart';

part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  RegisterCubit(this._authRepo) : super(RegisterInitial());

  final AuthRepo _authRepo;

  Future<void> registerUser(String name, String email, String password) async {
    emit(RegisterLoading());
    final result = await _authRepo.createUserWithEmailAndPassword(
      name,
      email,
      password,
    );
    result.fold(
      (l) => emit(
        RegisterFailure(errorMessage: l.message),
      ),
      (r) => emit(
        RegisterSuccess(user: r),
      ),
    );
  }
}
