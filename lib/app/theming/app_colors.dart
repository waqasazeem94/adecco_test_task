import 'package:flutter/material.dart';

final _colorsValuesAndNamesMap = {
  AppColors.blueDark: 'blueDark',
  AppColors.blueLight: 'blueLight',
  AppColors.purpleDark: 'purpleDark',
  AppColors.purpleLight: 'purpleLight',
  AppColors.orangeDark: 'orangeDark',
  AppColors.orangeLight: 'orangeLight',
  AppColors.pinkDark: 'pinkDark',
  AppColors.pinkLight: 'pinkLight',
  AppColors.greenDark: 'greenDark',
  AppColors.greenLight: 'greenLight',
};

String getColorName(Color color) {
  return _colorsValuesAndNamesMap[color] ?? '';
}

class AppColors {
  // Light theme colors
  static List<Color> lightColors = [
    purpleLight,
    blueLight,
    greenLight,
    orangeLight,
    pinkLight,
  ];

  static const purpleLight = Color(0xFF6935D3);
  static const blueLight = Color(0xFF3556CA);
  static const greenLight = Color(0xFF15A035);
  static const orangeLight = Color(0xFFF4841B);
  static const pinkLight = Color(0xFFAB34D4);

  static const backgroundLight = Colors.white;
  static const black = Colors.black;
  static const black57 = Color(0xff343335);
  static const bottomNavBarColorLight = Color(0xffF4F3F5);
  static const errorColorLight = Color(0xffE55539);
  static const shimmerColorLight = Color(0xffF4F3F5);
  static const disabledButtonLight = Color(0xffCAC6D2);
  static const disabledTextLight = Colors.white;

  //Dark theme colors
  static List<Color> darkColors = [
    purpleDark,
    blueDark,
    greenDark,
    orangeDark,
    pinkDark,
  ];

  static const purpleDark = Color(0xFF773FEB);
  static const blueDark = Color(0xFF203D8B);
  static const greenDark = Color(0xFF179C35);
  static const orangeDark = Color(0xFFDA7202);
  static const pinkDark = Color(0xFF8A25A8);

  static const backgroundDark = Colors.black;
  static const white = Color(0xffFBFBFC);
  static const white57 = Color(0xffCAC6D2);
  static const bottomNavBarColorDark = Color(0xff1D1C1E);
  static const errorColorDark = Color(0xffE15F45);
  static const shimmerColorDark = Color(0xff251643);
  static const disabledButtonDark = Color(0xff343335);
  static const disabledTextDark = Color(0xff6A696B);

  static final modalBarrierColor = const Color(0xff211638).withOpacity(.3);

  static const lightSalmon = Color(0xFFE55539);
  static const darkSalmon = Color(0xFFEB765F);
}

class AccountCategoryColors {
  static const greenLight = Color(0xff15A035);
  static const blueLight = Color(0xff3F71F2);
  static const yellowLight = Color(0xffFFB801);
  static const orangeLight = Color(0xffF4841B);
  static const pinkLight = Color(0xffAB34D4);
  static const greenDark = Color(0xff1F7833);
  static const blueDark = Color(0xff3556CA);
  static const yellowDark = Color(0xffCA9E00);
  static const orangeDark = Color(0xffDA7202);
  static const pinkDark = Color(0xff8A25A8);
}
