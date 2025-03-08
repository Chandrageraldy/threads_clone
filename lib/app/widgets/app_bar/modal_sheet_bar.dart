import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class ModalSheetBar extends StatelessWidget {
  const ModalSheetBar({
    required this.leadingButton,
    required this.trailingButton,
    required this.title,
    this.hasBorder = true,
    super.key,
  });

  final Widget leadingButton;
  final Widget trailingButton;
  final String title;
  final bool hasBorder;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
          border: hasBorder ? Border.all(color: ColorManager.dividerColor) : null, color: ColorManager.whiteColor),
      child: Padding(
        padding: StyleManager.kPaddSH16,
        child: Row(
          children: [
            Expanded(flex: 1, child: leadingButton),
            Text(title, style: _Styles.getTitleTextStyle()),
            Expanded(
              flex: 1,
              child: Align(alignment: Alignment.centerRight, child: trailingButton),
            )
          ],
        ),
      ),
    );
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // Title Label Text Style
  static getTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.extraLarge);
  }
}
