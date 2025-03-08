import 'package:flutter/cupertino.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class AppBarTrailingButton extends StatelessWidget {
  const AppBarTrailingButton({required this.label, required this.onPressed, super.key});

  final String label;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Padding(
        padding: StyleManager.kPaddSH16,
        child: Row(
          children: [
            Text(label, style: _Styles.getLabelTextStyle()),
            const Icon(CupertinoIcons.forward, size: StyleManager.kIconSize25),
          ],
        ),
      ),
    );
  }
}

// * ---------------------------- Styles -----------------------------
class _Styles {
  // Label Text Style
  static getLabelTextStyle() {
    return Quicksand.medium.withSize(FontSizes.extraLarge);
  }
}
