import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class ThemeManager {
  static final LightMode _lightMode = LightMode();
  static final DarkMode _darkMode = DarkMode();

  static ThemeData lightMode = ThemeData(
    appBarTheme: _lightMode.appBarTheme,
    scaffoldBackgroundColor: _lightMode.scaffoldBackgroundColor,
    brightness: Brightness.light,
    colorScheme: ColorScheme.light(primary: _lightMode.primaryColor, inversePrimary: _lightMode.inversePrimary),
    fontFamily: Quicksand.name,
  );

  static ThemeData darkMode = ThemeData(
    appBarTheme: _darkMode.appBarTheme,
    scaffoldBackgroundColor: _darkMode.scaffoldBackgroundColor,
    brightness: Brightness.dark,
    colorScheme: ColorScheme.dark(primary: _darkMode.primaryColor, inversePrimary: _darkMode.inversePrimary),
    fontFamily: Quicksand.name,
  );
}

class LightMode extends ThemeModeManager {
  @override
  AppBarTheme get appBarTheme => AppBarTheme(backgroundColor: ColorManager.transparentColor);

  @override
  Color get scaffoldBackgroundColor => ColorManager.whiteColor;

  @override
  Color get primaryColor => ColorManager.blackColor;

  @override
  Color get inversePrimary => ColorManager.whiteColor;
}

class DarkMode extends ThemeModeManager {
  @override
  AppBarTheme get appBarTheme => AppBarTheme(backgroundColor: ColorManager.transparentColor);

  @override
  Color get scaffoldBackgroundColor => ColorManager.blackColor;

  @override
  Color get primaryColor => ColorManager.whiteColor;

  @override
  Color get inversePrimary => ColorManager.blackColor;
}

abstract class ThemeModeManager {
  AppBarTheme get appBarTheme;

  Color get scaffoldBackgroundColor;

  Color get primaryColor;

  Color get inversePrimary;
}
