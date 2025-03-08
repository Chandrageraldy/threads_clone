import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';
import 'package:threads_clone/app/widgets/app_bar/app_bar_leading_button.dart';
import 'package:threads_clone/app/widgets/button/app_auth_button.dart';
import 'package:threads_clone/app/widgets/text_form_field/auth_text_form_field.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

@RoutePage()
class LoginPage extends BaseStatefulPage {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends BaseStatefulState<LoginPage> {
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
              getLogInButton(),
              Spacer(),
              getCreateAccountButton(),
            ],
          ),
        )
      ],
    );
  }
}

// * ---------------------------- Actions ----------------------------
extension _Actions on _LoginPageState {
  void _onLoginPressed() async {
    if (_formKey.currentState!.saveAndValidate()) {
      final email = _formKey.currentState!.fields[FormFields.email.name]!.value as String;
      final password = _formKey.currentState!.fields[FormFields.password.name]!.value as String;

      final result = await tryLoad(
            context,
            () =>
                context.read<UserViewModel>().loginWithEmailAndPassword(email: email.trim(), password: password.trim()),
          ) ??
          false;

      if (result && mounted) {
        context.router.replaceAll([DashboardNavigatorRoute()]);
      }
    }
  }

  void _onCreateAccountPressed() {
    context.router.push(CreateAccountRoute());
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _LoginPageState {
  Widget getHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [getTitleLabel(), getDescriptionLabel()],
    );
  }

  // Title Label
  Widget getTitleLabel() {
    return Text(
      S.current.loginTitle,
      style: _Styles.getTitleTextStyle(),
    );
  }

  // Description Label
  Widget getDescriptionLabel() {
    return Text(
      S.current.loginDesc,
      style: _Styles.getDescriptionTextStyle(),
    );
  }

  // Form Builder
  Widget getFormBuilder() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        spacing: StyleManager.kSpac16,
        children: [getEmailFormField(), getPasswordFormField()],
      ),
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

  // Login Button
  Widget getLogInButton() {
    return AppAuthButton(
      label: S.current.login,
      textStyle: _Styles.getLoginButtonTextStyle(),
      backgroundColor: ColorManager.blackColor,
      onPressed: _onLoginPressed,
    );
  }

  // Sign Up Button
  Widget getCreateAccountButton() {
    return Center(
      child: GestureDetector(
        onTap: _onCreateAccountPressed,
        child: Text(S.current.createAccountCTA, style: _Styles.getCreateAccountButtonTextStyle()),
      ),
    );
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
  static getLoginButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.large).copyWith(color: ColorManager.whiteColor);
  }

  // Sign Up Button Label Text Style
  static getCreateAccountButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.medium).copyWith(color: ColorManager.greyColor);
  }
}
