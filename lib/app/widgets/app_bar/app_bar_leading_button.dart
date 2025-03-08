import 'package:flutter/cupertino.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class AppBarLeadingButton extends StatelessWidget {
  const AppBarLeadingButton({this.onPressed, super.key});

  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed ?? () => context.router.maybePop(),
      child: Icon(CupertinoIcons.back),
    );
  }
}
