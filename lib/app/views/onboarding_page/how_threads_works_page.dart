import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/widgets/button/app_auth_button.dart';
import 'package:threads_clone/app/widgets/onboarding/how_threads_works_content.dart';

@RoutePage()
class HowThreadsWorksPage extends BaseStatefulPage {
  const HowThreadsWorksPage({super.key});

  @override
  State<HowThreadsWorksPage> createState() => _HowThreadsWorksPageState();
}

class _HowThreadsWorksPageState extends BaseStatefulState<HowThreadsWorksPage> {
  @override
  PreferredSizeWidget? appbar() {
    return AppBar();
  }

  @override
  Widget body() {
    return Column(
      children: [
        getTitleLabel(),
        Spacer(),
        ...getContentList(),
        StyleManager.kSizedBoxH60,
        Spacer(),
        getContinueButton(),
      ],
    );
  }
}

// * ---------------------------- Actions ----------------------------
extension _Actions on _HowThreadsWorksPageState {
  void _onContinuePressed() {
    context.router.replaceAll([DashboardNavigatorRoute()]);
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _HowThreadsWorksPageState {
  // Title Label
  Widget getTitleLabel() {
    return Text(S.current.howThreadsWorks, style: _Styles.getTitleTextStyle());
  }

  // Continue Button
  Widget getContinueButton() {
    return AppAuthButton(
      label: S.current.continueLabel,
      textStyle: _Styles.getContinueButtonTextStyle(),
      backgroundColor: ColorManager.blackColor,
      onPressed: _onContinuePressed,
    );
  }
}

// * ---------------------------- Styles -----------------------------
class _Styles {
  // Title Text Style
  static getTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.massive);
  }

  // Button Label Text Style
  static getContinueButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.large).copyWith(color: ColorManager.whiteColor);
  }
}
