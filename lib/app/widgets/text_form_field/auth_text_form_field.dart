import 'package:flutter_form_builder/flutter_form_builder.dart';

import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class AuthTextFormField extends StatelessWidget {
  const AuthTextFormField(
      {required this.field, required this.placeholder, this.obscureText, required this.validator, super.key});

  final FormFields field;
  final String placeholder;
  final bool? obscureText;
  final String? Function(String? value)? validator;

  @override
  Widget build(BuildContext context) {
    return FormBuilderTextField(
      name: field.name,
      decoration: InputDecoration(
        hintText: placeholder,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.dividerColor),
          borderRadius: StyleManager.kRadius16,
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.greyColor),
          borderRadius: StyleManager.kRadius16,
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.dividerColor),
          borderRadius: StyleManager.kRadius16,
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: ColorManager.greyColor),
          borderRadius: StyleManager.kRadius16,
        ),
      ),
      obscureText: obscureText ?? false,
      validator: validator,
      textInputAction: TextInputAction.next,
    );
  }
}
