import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:fruit_hub/core/utils/constants/colors.dart';
import 'package:fruit_hub/core/utils/show_snack_bar_message.dart';
import 'package:fruit_hub/features/auth/presentation/manager/login_cubit/login_cubit.dart';
import 'package:fruit_hub/features/auth/presentation/widgets/login_form.dart';
import 'package:fruit_hub/features/home/presentation/views/home_view.dart';

class LoginFormBlocConsumer extends StatelessWidget {
  const LoginFormBlocConsumer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginSuccess) {
          showSnackBarMessage(
            context,
            'تم تسجيل الدخول بنجاح',
            AppColors.lightPrimaryColor,
          );
          Navigator.pushReplacementNamed(context, HomeView.routeName);
        } else if (state is LoginFailure) {
          showSnackBarMessage(
            context,
            state.errorMessage,
            Colors.red,
          );
        }
      },
      builder: (context, state) {
        return LoginForm(
          isLoading: state is LoginLoading,
        );
      },
    );
  }
}
