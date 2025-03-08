import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/views/activity_page/activity_page.dart';
import 'package:threads_clone/app/views/add_thread_page.dart/add_thread_page.dart';
import 'package:threads_clone/app/views/app_entry_page/splash_screen.dart';
import 'package:threads_clone/app/views/auth_page/login_page.dart';
import 'package:threads_clone/app/views/auth_page/root_page.dart';
import 'package:threads_clone/app/views/auth_page/create_account_page.dart';
import 'package:threads_clone/app/views/dashboard_page/dashboard_navigator_page.dart';
import 'package:threads_clone/app/views/dashboard_page/dashboard_page.dart';
import 'package:threads_clone/app/views/home_page/home_page.dart';
import 'package:threads_clone/app/views/onboarding_page/how_threads_works_page.dart';
import 'package:threads_clone/app/views/onboarding_page/profile_setup_page.dart';
import 'package:threads_clone/app/views/profile_page/edit_profile_field_page.dart';
import 'package:threads_clone/app/views/profile_page/edit_profile_page.dart';
import 'package:threads_clone/app/views/profile_page/profile_page.dart';
import 'package:threads_clone/app/views/root_navigator_page.dart';
import 'package:threads_clone/app/views/search_page/search_page.dart';

part 'app_router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Page|Screen,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: RootNavigatorRoute.page,
          initial: true,
          children: [
            ...getAppEntryRoutes(),
            getDashboardRoutes(),
          ],
        ),
      ];

  List<AutoRoute> getAppEntryRoutes() {
    return [
      AutoRoute(page: SplashRoute.page, initial: true),
      CustomRoute(page: RootRoute.page, transitionsBuilder: TransitionsBuilders.fadeIn),
      AutoRoute(page: LoginRoute.page),
      AutoRoute(page: CreateAccountRoute.page),
      AutoRoute(page: ProfileSetupRoute.page),
      AutoRoute(page: HowThreadsWorksRoute.page),
    ];
  }

  AutoRoute getDashboardRoutes() {
    return AutoRoute(
      page: DashboardNavigatorRoute.page,
      children: [
        AutoRoute(
          page: DashboardRoute.page,
          initial: true,
          children: [
            AutoRoute(page: HomeRoute.page, initial: true),
            AutoRoute(page: SearchRoute.page),
            AutoRoute(page: AddThreadRoute.page),
            AutoRoute(page: ActivityRoute.page),
            AutoRoute(page: ProfileRoute.page),
          ],
        ),
        CustomRoute(page: AddThreadRoute.page, customRouteBuilder: _modalSheetBuilder),
        CustomRoute(page: EditProfileRoute.page, customRouteBuilder: _modalSheetBuilder),
        CustomRoute(page: EditProfileFieldRoute.page, customRouteBuilder: _modalSheetBuilder),
      ],
    );
  }
}

Route<T> _modalSheetBuilder<T>(
  BuildContext _,
  Widget child,
  AutoRoutePage<T> page,
) {
  return ModalBottomSheetRoute(
    settings: page,
    builder: (context) => Container(
      decoration: BoxDecoration(borderRadius: StyleManager.kRadiusVT16),
      clipBehavior: Clip.hardEdge,
      child: SizedBox(
        height: MediaQuery.of(context).size.height * 0.975,
        child: child,
      ),
    ),
    isScrollControlled: true,
  );
}
