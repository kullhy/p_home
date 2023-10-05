import 'package:flutter/material.dart';
import 'package:p_home/common/app_colors.dart';


class AppTextStyle {
  static const blue = TextStyle(color: Color(0xff9cdbf1));

  //s6
  static final blueS12 = blue.copyWith(fontSize: 12);
  static final blueS12Bold = blueS12.copyWith(fontWeight: FontWeight.bold);
  static final blueS12W800 = blueS12.copyWith(fontWeight: FontWeight.w800);

  ///Black
  static const black = TextStyle(color: Colors.black);

  //s6
  static final blackS6 = black.copyWith(fontSize: 6);
  static final blackS6Bold = blackS6.copyWith(fontWeight: FontWeight.bold);
  static final blackS6W800 = blackS6.copyWith(fontWeight: FontWeight.w800);

  //s8
  static final blackS8 = black.copyWith(fontSize: 8);
  static final blackS8Bold = blackS8.copyWith(fontWeight: FontWeight.bold);
  static final blackS8W800 = blackS8.copyWith(fontWeight: FontWeight.w800);

  //s12
  static final blackS10 =
      black.copyWith(fontSize: 10, fontWeight: FontWeight.w200);
  static final blackS10Bold = blackS10.copyWith(fontWeight: FontWeight.bold);
  static final blackS10W800 = blackS10.copyWith(fontWeight: FontWeight.w800);

  //s12
  static final blackS12 = black.copyWith(fontSize: 12);
  static final blackS12Bold = blackS12.copyWith(fontWeight: FontWeight.bold);
  static final blackS12W800 = blackS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final blackS14 = black.copyWith(fontSize: 14);
  static final blackS14Bold = blackS14.copyWith(fontWeight: FontWeight.bold);
  static final blackS14W800 = blackS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final blackS16 = black.copyWith(fontSize: 16);
  static final blackS16Bold = blackS16.copyWith(fontWeight: FontWeight.bold);
  static final blackS16W600 = blackS16.copyWith(fontWeight: FontWeight.w600);
  static final blackS16W800 = blackS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final blackS18 = black.copyWith(fontSize: 18);
  static final blackS18Bold = blackS18.copyWith(fontWeight: FontWeight.bold);
  static final blackS18W700 = blackS18.copyWith(fontWeight: FontWeight.w700);
  static final blackS18W800 = blackS18.copyWith(fontWeight: FontWeight.w800);

  //s20
  static final blackS20 = black.copyWith(fontSize: 20);
  static final blackS20Bold = blackS20.copyWith(fontWeight: FontWeight.bold);
  static final blackS20W700 = blackS20.copyWith(fontWeight: FontWeight.w700);
  static final blackS20W800 = blackS20.copyWith(fontWeight: FontWeight.w800);

  //s20
  static final blackS24 = black.copyWith(fontSize: 24);
  static final blackS24Bold = blackS24.copyWith(fontWeight: FontWeight.bold);
  static final blackS24W700 = blackS24.copyWith(fontWeight: FontWeight.w700);
  static final blackS24W900 = blackS24.copyWith(fontWeight: FontWeight.w900);

  ///White
  static const white = TextStyle(color: Colors.white);
//a8
  static final whiteS10 = white.copyWith(fontSize: 10);
  static final whiteS10Bold = whiteS10.copyWith(fontWeight: FontWeight.bold);
  static final whiteS10W800 = whiteS10.copyWith(fontWeight: FontWeight.w800);
  //s10
  static final whiteS8 = white.copyWith(fontSize: 8);
  static final whiteS8Bold = whiteS8.copyWith(fontWeight: FontWeight.bold);
  static final whiteS8W800 = whiteS8.copyWith(fontWeight: FontWeight.w800);

  //s12
  static final whiteS12 = white.copyWith(fontSize: 12);
  static final whiteS12Bold = whiteS12.copyWith(fontWeight: FontWeight.bold);
  static final whiteS12W800 = whiteS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final whiteS14 = white.copyWith(fontSize: 14);
  static final whiteS14Bold = whiteS14.copyWith(fontWeight: FontWeight.bold);
  static final whiteS14W800 = whiteS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final whiteS16 = white.copyWith(fontSize: 16);
  static final whiteS16Bold = whiteS16.copyWith(fontWeight: FontWeight.bold);
  static final whiteS16W800 = whiteS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final whiteS18 = white.copyWith(fontSize: 18);
  static final whiteS18Bold = whiteS18.copyWith(fontWeight: FontWeight.bold);
  static final whiteS18W800 = whiteS18.copyWith(fontWeight: FontWeight.w800);

  //s64
  static final whiteS64 = white.copyWith(fontSize: 60);
  static final whiteS64Bold = whiteS64.copyWith(fontWeight: FontWeight.bold);
  static final whiteS64W800 = whiteS64.copyWith(fontWeight: FontWeight.w800);

  ///Gray
  static const grey = TextStyle(color: Color.fromARGB(255, 88, 88, 88));

  //s12
  static final greyS12 = grey.copyWith(fontSize: 12);
  static final greyS12Bold = greyS12.copyWith(fontWeight: FontWeight.bold);
  static final greyS12W800 = greyS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final greyS14 = grey.copyWith(fontSize: 14);
  static final greyS14Bold = greyS14.copyWith(fontWeight: FontWeight.bold);
  static final greyS14W800 = greyS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final greyS16 = grey.copyWith(fontSize: 16);
  static final greyS16Bold = greyS16.copyWith(fontWeight: FontWeight.bold);
  static final greyS16W800 = greyS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final greyS18 = grey.copyWith(fontSize: 18);
  static final greyS18Bold = greyS18.copyWith(fontWeight: FontWeight.bold);
  static final greyS18W800 = greyS18.copyWith(fontWeight: FontWeight.w800);

  ///Tint
  static const tint = TextStyle(color: AppColors.secondary);

  //s12
  static final tintS12 = tint.copyWith(fontSize: 12);
  static final tintS12Bold = tintS12.copyWith(fontWeight: FontWeight.bold);
  static final tintS12W800 = tintS12.copyWith(fontWeight: FontWeight.w800);

  //s14
  static final tintS14 = tint.copyWith(fontSize: 14);
  static final tintS14Bold = tintS14.copyWith(fontWeight: FontWeight.bold);
  static final tintS14W800 = tintS14.copyWith(fontWeight: FontWeight.w800);

  //s16
  static final tintS16 = tint.copyWith(fontSize: 16);
  static final tintS16Bold = tintS16.copyWith(fontWeight: FontWeight.bold);
  static final tintS16W800 = tintS16.copyWith(fontWeight: FontWeight.w800);

  //s18
  static final tintS18 = tint.copyWith(fontSize: 18);
  static final tintS18Bold = tintS18.copyWith(fontWeight: FontWeight.bold);
  static final tintS18W800 = tintS18.copyWith(fontWeight: FontWeight.w800);
}
