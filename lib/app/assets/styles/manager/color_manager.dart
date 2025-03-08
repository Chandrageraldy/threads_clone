import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class ColorManager {
  static const blackColor = Color(0XFF000000);
  static const beigeColor = Color(0xFFF5F5DC);
  static const whiteColor = Color(0xFFFFFFFF);
  static const blueColor = Color(0xFF1570EF);
  static const redColor = Color(0xFFFE251B);
  static const lightBlueColor = Color(0xFFFBFAFB);
  static const greyColor = Color.fromARGB(255, 122, 122, 122);
  static const lightGreyColor = Color(0xFFF3F3F3);
  static const transparentColor = Color(0x00ffffff);

  // Widget Customization Based Colors
  static const dividerColor = Color.fromARGB(255, 203, 203, 203);
}

class GradientColorManager {
  static const LinearGradient backgroundGradient = LinearGradient(
    colors: [
      ColorManager.blueColor,
      ColorManager.lightBlueColor,
    ],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    stops: [0.0, 0.8],
  );
}
