import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/utils/utils/utils.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';
import 'package:threads_clone/app/widgets/app_bar/app_bar_leading_button.dart';
import 'package:threads_clone/app/widgets/button/app_auth_button.dart';
import 'package:threads_clone/app/widgets/text_form_field/auth_text_form_field.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

@RoutePage()
class CreateAccountPage extends BaseStatefulPage {
  const CreateAccountPage({super.key});

  @override
  State<CreateAccountPage> createState() => _CreateAccountPagePageState();
}

class _CreateAccountPagePageState extends BaseStatefulState<CreateAccountPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  @override
  PreferredSizeWidget? appbar() {
    return AppBar(
      leading: AppBarLeadingButton(onPressed: () => context.router.popUntilRouteWithName(RootRoute.name)),
    );
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget body() {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: StyleManager.kSpac4,
            children: [
              getHeader(),
              StyleManager.kSizedBoxH16,
              getFormBuilder(),
              StyleManager.kSizedBoxH16,
              getCreateAccountButton(),
              Spacer(),
              getLogInButton()
            ],
          ),
        )
      ],
    );
  }
}

// * ---------------------------- Actions ----------------------------
extension _Actions on _CreateAccountPagePageState {
  void _onCreateAccountPressed() async {
    if (_formKey.currentState!.saveAndValidate()) {
      final username = _formKey.currentState!.fields[FormFields.username.name]!.value as String;
      final fullname = _formKey.currentState!.fields[FormFields.fullname.name]!.value as String;
      final email = _formKey.currentState!.fields[FormFields.email.name]!.value as String;
      final password = _formKey.currentState!.fields[FormFields.password.name]!.value as String;

      // Check for username availability before creating an account
      final isUsernameAvailable = await checkIfUsernameAvailable(username.toLowerCase());

      if (isUsernameAvailable && mounted) {
        final result = await tryLoad(
              context,
              () => context.read<UserViewModel>().signUpWithEmailAndPassword(
                  email: email.trim(), password: password.trim(), username: username.toLowerCase(), fullname: fullname),
            ) ??
            false;

        if (result && mounted) {
          context.router.replaceAll([ProfileSetupRoute()]);
        }
      } else if (mounted) {
        WidgetUtils.showDefaultErrorDialog(context, S.current.usernameTaken);
      }
    }
  }

  void _onLoginPressed() {
    context.router.push(LoginRoute());
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _CreateAccountPagePageState {
  // Header
  Widget getHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [getTitleLabel(), getDescriptionLabel()],
    );
  }

  // Title Label
  Widget getTitleLabel() {
    return Text(
      S.current.createAccountTitle,
      style: _Styles.getTitleTextStyle(),
    );
  }

  // Description Label
  Widget getDescriptionLabel() {
    return Text(
      S.current.createAccountDesc,
      style: _Styles.getDescriptionTextStyle(),
    );
  }

  // Form Builder
  Widget getFormBuilder() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        spacing: StyleManager.kSpac16,
        children: [
          getUsernameFormField(),
          getFullNameFormField(),
          getEmailFormField(),
          getPasswordFormField(),
        ],
      ),
    );
  }

  // Username Form Field
  Widget getUsernameFormField() {
    return Row(
      spacing: StyleManager.kSpac8,
      children: [
        Text(
          S.current.at,
          style: _Styles.getAtTextStyle(),
        ),
        Expanded(
          child: AuthTextFormField(
            field: FormFields.username,
            placeholder: S.current.username,
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.minLength(8),
              FormBuilderValidators.maxLength(16),
              FormBuilderValidators.matchNot(RegexConstant.noSpacesRegex, errorText: TextFormFieldError.noSpaceAllowed),
              FormBuilderValidators.matchNot(RegexConstant.onlyLettersNumbersUnderscoreRegex,
                  errorText: TextFormFieldError.onlyLettersNumbersUnderscore)
            ]),
          ),
        )
      ],
    );
  }

  // Full Name Form Field
  Widget getFullNameFormField() {
    return AuthTextFormField(
      field: FormFields.fullname,
      placeholder: S.current.fullName,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.matchNot(RegexConstant.noSpecialCharacters,
            errorText: TextFormFieldError.noSpecialCharacters),
      ]),
    );
  }

  // Email Form Field
  Widget getEmailFormField() {
    return AuthTextFormField(
      field: FormFields.email,
      placeholder: S.current.email,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.email(),
      ]),
    );
  }

  // Password Form Field
  Widget getPasswordFormField() {
    return AuthTextFormField(
      field: FormFields.password,
      placeholder: S.current.password,
      obscureText: true,
      validator: FormBuilderValidators.compose([
        FormBuilderValidators.required(),
        FormBuilderValidators.minLength(8),
      ]),
    );
  }

  // Sign Up Button
  Widget getCreateAccountButton() {
    return AppAuthButton(
      label: S.current.createNewAccount,
      textStyle: _Styles.getCreateAccountButtonTextStyle(),
      backgroundColor: ColorManager.blackColor,
      onPressed: _onCreateAccountPressed,
    );
  }

  // Log In Button
  Widget getLogInButton() {
    return Center(
      child: GestureDetector(
        onTap: () => _onLoginPressed(),
        child: Text(
          S.current.loginCTA,
          style: _Styles.getLogInButtonTextStyle(),
        ),
      ),
    );
  }
}

// * ------------------------ PrivateMethods ------------------------
extension _PrivateMethods on _CreateAccountPagePageState {
  Future<bool> checkIfUsernameAvailable(String username) async {
    return await tryLoad(
          context,
          () => context.read<UserViewModel>().checkUsernameAvailability(username: username.trim()),
        ) ??
        false;
  }
}

// * ---------------------------- Styles -----------------------------
class _Styles {
  // Title Text Style
  static getTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.massive);
  }

  // Description Text Style
  static getDescriptionTextStyle() {
    return Quicksand.medium.withSize(FontSizes.medium);
  }

  // Button Label Text Style
  static getCreateAccountButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.large).copyWith(color: ColorManager.whiteColor);
  }

  // Log In Button Label Text Style
  static getLogInButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.medium).copyWith(color: ColorManager.greyColor);
  }

  static getAtTextStyle() {
    return Quicksand.medium.withSize(FontSizes.extraHuge);
  }
}
