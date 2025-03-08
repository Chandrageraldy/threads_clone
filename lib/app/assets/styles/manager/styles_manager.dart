import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class StyleManager {
  // Padding
  static const kPadd8 = EdgeInsets.all(8.0);
  static const kPadd10 = EdgeInsets.all(10.0);
  static const kPadd12 = EdgeInsets.all(12.0);
  static const kPadd16 = EdgeInsets.all(16.0);
  static const kPadd24 = EdgeInsets.all(24.0);

  static const kPaddSH4 = EdgeInsets.symmetric(horizontal: 4.0);
  static const kPaddSH16 = EdgeInsets.symmetric(horizontal: 16.0);
  static const kPaddSH16V8 = EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0);

  static const kPaddSH16V16 = EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0);
  static const kPaddSV8 = EdgeInsets.symmetric(vertical: 8.0);

  // Spacing
  static const kSpac4 = 4.0;
  static const kSpac8 = 8.0;
  static const kSpac12 = 12.0;
  static const kSpac16 = 16.0;
  static const kSpac32 = 32.0;

  // Size
  static const kImgSize30 = 30.0;
  static const kImgSize45 = 45.0;
  static const kImgSize55 = 55.0;
  static const kImgSize65 = 65.0;
  static const kImgSize100 = 100.0;

  static const kIconSize4 = 4.0;
  static const kIconSize16 = 16.0;
  static const kIconSize20 = 20.0;
  static const kIconSize25 = 25.0;
  static const kIconSize30 = 30.0;
  static const kIconSize35 = 35.0;
  static const kIconSize40 = 40.0;

  static const kHeight125 = 125.0;

  // Radius
  static final kRadius8 = BorderRadius.circular(8.0);
  static final kRadius16 = BorderRadius.circular(16.0);
  static final kRadius100 = BorderRadius.circular(100.0);

  static final kRadiusVT16 = BorderRadius.vertical(top: Radius.circular(16));

  // Sized Box
  static final kEmptyWidget = const SizedBox.shrink();
  static final kSizedBoxH2 = const SizedBox(height: 2.0);
  static final kSizedBoxH6 = const SizedBox(height: 6.0);
  static final kSizedBoxH10 = const SizedBox(height: 10.0);
  static final kSizedBoxH16 = const SizedBox(height: 16.0);
  static final kSizedBoxH20 = const SizedBox(height: 20.0);
  static final kSizedBoxH60 = const SizedBox(height: 60.0);

  static final kSizedBoxW10 = const SizedBox(width: 10.0);
  static final kSizedBoxW16 = const SizedBox(width: 16.0);

  // Input Border
  static final kNoInputBorder = InputBorder.none;
}
