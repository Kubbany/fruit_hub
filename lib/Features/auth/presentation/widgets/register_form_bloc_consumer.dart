import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/show_snack_bar_message.dart';
import 'package:fruit_hub/features/auth/presentation/manager/register_cubit/register_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/register_form.dart';

class RegisterFormBlocConsumer extends StatelessWidget {
  const RegisterFormBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<RegisterCubit, RegisterState>(
      listener: (context, state) {
        if (state is RegisterSuccess) {
          showSnackBarMessage(
            context,
            'تم إنشاء الحساب بنجاح',
            AppColors.lightPrimaryColor,
          );
          Navigator.pop(context);
        } else if (state is RegisterFailure) {
          showSnackBarMessage(
            context,
            state.errorMessage,
            Colors.red,
          );
        }
      },
      builder: (context, state) {
        return RegisterForm(
          isLoading: state is RegisterLoading,
        );
      },
    );
  }
}
