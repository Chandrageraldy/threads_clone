import 'package:flutter/material.dart';

class AppTapableButton extends StatelessWidget {
  const AppTapableButton({this.icon, this.label, this.textStyle, required this.onTap, super.key});

  final Icon? icon;
  final String? label;
  final TextStyle? textStyle;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: icon ?? Text(label ?? '', style: textStyle),
    );
  }
}
