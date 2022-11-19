import 'package:coffee_app_ui/exports.dart';


final ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: CustomColors.lightThemeBgColor,
    appBarTheme:
        AppBarTheme(backgroundColor: CustomColors.transparent, elevation: 0),
    inputDecorationTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.only(top: 5),
        hintStyle: defaultStyle.copyWith(
            fontSize: 12.sp, color: CustomColors.textFieldHintColor),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide:
                BorderSide(color: CustomColors.textFieldColor, width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(
                color: CustomColors.textFieldColor,
                width: 1 /*CustomColors.white.withOpacity(0.1)*/))));

final ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: CustomColors.darkThemeBgColor,
    appBarTheme:
        AppBarTheme(backgroundColor: CustomColors.transparent, elevation: 0),
    inputDecorationTheme: InputDecorationTheme(
        alignLabelWithHint: true,
        contentPadding: const EdgeInsets.only(top: 5),
        hintStyle: defaultStyle.copyWith(
            fontSize: 12.sp, color: CustomColors.textFieldHintColor),
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(color: CustomColors.textFieldColor)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15.r),
            borderSide: BorderSide(color: CustomColors.textFieldColor))));
