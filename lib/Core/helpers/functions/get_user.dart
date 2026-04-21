import 'dart:convert';

import 'package:fruit_hub/core/services/prefs.dart';
import 'package:fruit_hub/core/utils/constants/strings.dart';
import 'package:fruit_hub/features/auth/data/models/user_model.dart';
import 'package:fruit_hub/features/auth/domain/entities/user_entity.dart';

UserEntity getUser() {
  var jsonString = Prefs.getString(AppStrings.kUserData);
  var userEntity = UserModel.fromJson(jsonDecode(jsonString));
  return userEntity;
}
