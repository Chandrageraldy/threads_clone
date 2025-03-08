import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class AppAuthButton extends StatelessWidget {
  const AppAuthButton({
    required this.label,
    required this.textStyle,
    required this.backgroundColor,
    required this.onPressed,
    super.key,
  });

  final String label;
  final TextStyle textStyle;
  final Color backgroundColor;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: ColorManager.whiteColor,
          shape: RoundedRectangleBorder(
              borderRadius: StyleManager.kRadius100,
              side: BorderSide(color: onPressed == null ? ColorManager.transparentColor : backgroundColor)),
        ),
        onPressed: onPressed,
        child: Padding(padding: StyleManager.kPadd12, child: Text(label, style: textStyle)),
      ),
    );
  }
}
