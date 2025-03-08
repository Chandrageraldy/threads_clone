import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class ProfileTextFormField extends StatelessWidget {
  const ProfileTextFormField({required this.field, super.key});

  final FormFields field;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:
          BoxDecoration(border: Border.all(color: ColorManager.dividerColor), borderRadius: StyleManager.kRadius100),
      width: double.infinity,
      child: Padding(
        padding: StyleManager.kPaddSH16V16,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Bio', style: _Styles.getFormFieldTitleTextStyle()),
                Icon(CupertinoIcons.delete_left, size: StyleManager.kIconSize25)
              ],
            ),
            FormBuilderTextField(name: field.name),
          ],
        ),
      ),
    );
  }
}

// * ---------------------------- Styles -----------------------------
class _Styles {
  // Form Field Title Text Style
  static getFormFieldTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.large);
  }
}
