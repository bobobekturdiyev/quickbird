import 'package:flutter/cupertino.dart';

import 'app_colors.dart';

abstract class Styles {
  Styles._();

  static TextStyle getNameStyle() => const TextStyle(
        color: AppColors.black,
        fontSize: 22,
        fontWeight: FontWeight.w700,
      );

  static TextStyle getDetailsTitleStyle() => const TextStyle(
        color: AppColors.darkGray,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  static TextStyle getDetailsValueStyle() => const TextStyle(
        color: AppColors.gray,
        fontSize: 16,
        fontWeight: FontWeight.w400,
      );

  static TextStyle getUsernameStyle() => const TextStyle(
        color: AppColors.gray,
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );

  static TextStyle getBioStyle() => const TextStyle(
        color: AppColors.gray,
        fontSize: 14,
        fontWeight: FontWeight.w400,
      );
}
