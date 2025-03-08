import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/widgets/button/app_auth_button.dart';

@RoutePage()
class RootPage extends BaseStatefulPage {
  const RootPage({super.key});

  @override
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends BaseStatefulState<RootPage> {
  @override
  hasDefaultPadding() => false;

  @override
  Widget body() {
    return Column(
      children: [
        getAppBackgroundImage(),
        Spacer(),
        getAppTitleLabel(),
        Spacer(),
        getAuthButton(),
        StyleManager.kSizedBoxH10,
        getFooter(),
      ],
    );
  }
}

// * ---------------------------- Actions ----------------------------
extension _Actions on _RootPageState {
  void _onCreateAccountPressed() {
    context.router.push(CreateAccountRoute());
  }

  void _onLoginPressed() {
    context.router.push(LoginRoute());
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _RootPageState {
  // App Background Image
  Widget getAppBackgroundImage() {
    return Image.asset(
      ImageConstant.threadsBg2,
    );
  }

  Widget getAppTitleLabel() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          ImageConstant.threadsLogo,
          width: StyleManager.kImgSize55,
          height: StyleManager.kImgSize55,
        ),
        Text(S.current.threads, style: _Styles.getTitleLabelTextStyle()),
      ],
    );
  }

  // Auth Button
  Widget getAuthButton() {
    return Padding(
      padding: StyleManager.kPadd16,
      child: Column(
        spacing: 8.0,
        children: [getCreateAccountButton(), getLoginButton()],
      ),
    );
  }

  Widget getCreateAccountButton() {
    return AppAuthButton(
      label: S.current.createNewAccount,
      backgroundColor: ColorManager.blackColor,
      textStyle: _Styles.getCreateAccountButtonTextStyle(),
      onPressed: _onCreateAccountPressed,
    );
  }

  Widget getLoginButton() {
    return AppAuthButton(
      label: S.current.login,
      textStyle: _Styles.getLoginButtonTextStyle(),
      backgroundColor: ColorManager.whiteColor,
      onPressed: _onLoginPressed,
    );
  }

  // Footer
  Widget getFooter() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      spacing: StyleManager.kSpac4,
      children: [
        Image.asset(
          ImageConstant.metaLogo,
          width: StyleManager.kImgSize30,
          height: StyleManager.kImgSize30,
        ),
        Text(S.current.meta, style: _Styles.getFooterTextStyle())
      ],
    );
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // App Title Label Text Style
  static getTitleLabelTextStyle() {
    return Quicksand.semiBold.withCustomSize(42.0).copyWith(color: ColorManager.blackColor);
  }

  // Button Label Text Style
  static getCreateAccountButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.large).copyWith(color: ColorManager.whiteColor);
  }

  static getLoginButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.large).copyWith(color: ColorManager.blackColor);
  }

  // Footer Text Style
  static getFooterTextStyle() {
    return Quicksand.medium.withSize(FontSizes.extraLarge).copyWith(color: ColorManager.greyColor);
  }
}
