import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class AppProfileButton extends StatelessWidget {
  const AppProfileButton({required this.onPressed, required this.label, super.key});

  final void Function() onPressed;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            elevation: 0,
            foregroundColor: ColorManager.blackColor,
            backgroundColor: ColorManager.whiteColor,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
              side: BorderSide(color: ColorManager.dividerColor),
            ),
          ),
          child: Text(label, style: _Styles.getButtonLabelTextStyle()),
        ),
      ),
    );
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  static getButtonLabelTextStyle() {
    return Quicksand.bold.withSize(FontSizes.large);
  }
}
