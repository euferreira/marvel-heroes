import 'package:flutter/material.dart';
import 'package:marvel_heroes/app/shared/theme/app.styles.dart';

class AppTheme {
  AppTheme._();

  static final lightTheme = ThemeData(
    backgroundColor: AppStyles.backgroundLight,
    primaryColor: AppStyles.primaryRed,
    fontFamily: 'Gilroy',
    brightness: Brightness.light,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        fontFamily: 'Gilroy',
      ),
      headline2: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w900,
        fontFamily: 'Gilroy',
        color: AppStyles.primaryDark,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        fontFamily: 'Gilroy',
      ),
      headline4: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Gilroy',
        color: AppStyles.redText,
      ),
      headline5: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Gilroy',
      ),
      headline6: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'Gilroy',
      ),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: 'Gilroy',

      ),
      bodyText1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
        color: AppStyles.greyText,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
        color: AppStyles.primaryGrey,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
      overline: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppStyles.light100,
    ),
    appBarTheme: const AppBarTheme(
      color: AppStyles.backgroundLight,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppStyles.dark900,
      ),
    ),
  );

  static final darkTheme = ThemeData(
    backgroundColor: AppStyles.backgroundDark,
    primaryColor: AppStyles.primaryDark,
    fontFamily: 'Gilroy',
    brightness: Brightness.dark,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryTextTheme: const TextTheme(
      headline1: TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.w900,
        fontFamily: 'Gilroy',
      ),
      headline2: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w900,
        fontFamily: 'Gilroy',
        color: AppStyles.primaryLight,
      ),
      headline3: TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w900,
        fontFamily: 'Gilroy',
        color: AppStyles.primaryLight,
      ),
      headline4: TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: 'Gilroy',
        color: AppStyles.light100,
      ),
      headline5: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w400,
        fontFamily: 'Gilroy',
      ),
      headline6: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w400,
        fontFamily: 'Gilroy',
      ),
      subtitle1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w600,
        fontFamily: 'Gilroy',
      ),
      bodyText1: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
        color: AppStyles.light100,
      ),
      bodyText2: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
        color: AppStyles.primaryLight,
      ),
      caption: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.w500,
        fontFamily: 'Gilroy',
        color: AppStyles.greyText,
      ),
    ),
    iconTheme: const IconThemeData(
      color: AppStyles.light100,
    ),
    appBarTheme: const AppBarTheme(
      color: AppStyles.backgroundDark,
      elevation: 0,
      iconTheme: IconThemeData(
        color: AppStyles.light100,
      ),
    ),
  );
}
