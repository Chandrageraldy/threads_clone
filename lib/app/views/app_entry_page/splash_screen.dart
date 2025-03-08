import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';

import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

@RoutePage()
class SplashScreen extends BaseStatefulPage {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends BaseStatefulState<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await _initializeSplashScreen();
    });
  }

  @override
  Widget body() {
    return Center(
        child: Column(
      children: [
        Spacer(),
        getAppLogoImage(),
        Spacer(),
        getFooter(),
      ],
    ));
  }
}

// * ------------------------ WidgetFactories -----------------------
extension _WidgetFactories on _SplashScreenState {
  // App Logo Image
  Widget getAppLogoImage() {
    return Image.asset(
      ImageConstant.threadsLogo,
      width: StyleManager.kImgSize100,
      height: StyleManager.kImgSize100,
    );
  }

  // Footer
  Widget getFooter() {
    return Column(
      children: [
        Text(S.current.from, style: _Styles.getFooter1TextStyle()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: StyleManager.kSpac4,
          children: [
            Image.asset(
              ImageConstant.metaLogo,
              width: StyleManager.kImgSize30,
              height: StyleManager.kImgSize30,
            ),
            Text(S.current.meta, style: _Styles.getFooter2TextStyle())
          ],
        )
      ],
    );
  }
}

// * ------------------------ PrivateMethods ------------------------
extension _PrivateMethods on _SplashScreenState {
  Future<void> _initializeSplashScreen() async {
    await Future.delayed(const Duration(seconds: 2));
    navigateBasedOnState();
  }

  void navigateBasedOnState() {
    if (mounted) {
      if (context.read<UserViewModel>().isLoggedIn) {
        context.router.replaceAll([const DashboardNavigatorRoute()]);
      } else {
        context.router.replaceAll([const RootRoute()]);
      }
    }
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // Footer Text Style
  static getFooter1TextStyle() {
    return Quicksand.medium.withSize(FontSizes.extraLarge).copyWith(color: ColorManager.greyColor);
  }

  static getFooter2TextStyle() {
    return Quicksand.bold.withSize(FontSizes.extraHuge).copyWith(color: ColorManager.blackColor);
  }
}
