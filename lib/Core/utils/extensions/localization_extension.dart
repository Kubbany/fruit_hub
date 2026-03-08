import 'package:flutter/widgets.dart';
import 'package:fruit_hub/generated/l10n.dart';

extension LocalizationExtension on BuildContext {
  S get tr => S.of(this);
}
