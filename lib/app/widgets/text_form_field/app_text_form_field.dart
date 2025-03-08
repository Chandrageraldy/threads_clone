import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class AppTextFormField extends StatelessWidget {
  const AppTextFormField({
    this.formFieldTitle,
    required this.field,
    required this.placeholder,
    this.isEnableEdit = true,
    this.initialValue,
    this.textStyle,
    this.placeholderStyle,
    this.autoFocus = false,
    this.validator,
    this.onTap,
    super.key,
  });

  final String? formFieldTitle;
  final FormFields field;
  final String placeholder;
  final bool isEnableEdit;
  final String? initialValue;
  final TextStyle? textStyle;
  final TextStyle? placeholderStyle;
  final bool autoFocus;
  final String? Function(String? value)? validator;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (formFieldTitle?.isNotEmpty ?? false)
          Row(
            spacing: StyleManager.kSpac4,
            children: [
              if (!isEnableEdit) Icon(CupertinoIcons.lock, size: StyleManager.kIconSize16),
              Text(formFieldTitle!, style: _Styles.getFormFieldTitleTextStyle()),
            ],
          ),
        GestureDetector(
          onTap: isEnableEdit ? onTap : null,
          child: onTap == null
              ? FormBuilderTextField(
                  name: field.name,
                  initialValue: initialValue,
                  style: textStyle ?? _Styles.getFormFieldTextFieldTextStyle(),
                  decoration: InputDecoration(
                    hintText: placeholder,
                    hintStyle: placeholderStyle ?? _Styles.getPlaceholderTextStyle(),
                    border: StyleManager.kNoInputBorder,
                    isDense: true,
                  ),
                  enabled: isEnableEdit,
                  validator: validator,
                  textInputAction: TextInputAction.next,
                  maxLines: null,
                )
              : AbsorbPointer(
                  child: FormBuilderTextField(
                    name: field.name,
                    initialValue: initialValue,
                    style: textStyle ?? _Styles.getFormFieldTextFieldTextStyle(),
                    decoration: InputDecoration(
                      hintText: placeholder,
                      hintStyle: placeholderStyle ?? _Styles.getPlaceholderTextStyle(),
                      border: StyleManager.kNoInputBorder,
                      isDense: true,
                    ),
                    enabled: isEnableEdit,
                    validator: validator,
                    textInputAction: TextInputAction.next,
                    maxLines: null,
                  ),
                ),
        ),
      ],
    );
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // Form Field Title Text Style
  static getFormFieldTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.large);
  }

  // Placeholder Text Style
  static getPlaceholderTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large).copyWith(color: ColorManager.greyColor);
  }

  // Text Field Text Style
  static getFormFieldTextFieldTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large);
  }
}
