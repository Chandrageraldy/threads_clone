// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

part of 'app_router.dart';

/// generated route for
/// [ActivityPage]
class ActivityRoute extends PageRouteInfo<void> {
  const ActivityRoute({List<PageRouteInfo>? children})
    : super(ActivityRoute.name, initialChildren: children);

  static const String name = 'ActivityRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ActivityPage();
    },
  );
}

/// generated route for
/// [AddThreadPage]
class AddThreadRoute extends PageRouteInfo<void> {
  const AddThreadRoute({List<PageRouteInfo>? children})
    : super(AddThreadRoute.name, initialChildren: children);

  static const String name = 'AddThreadRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const AddThreadPage();
    },
  );
}

/// generated route for
/// [CreateAccountPage]
class CreateAccountRoute extends PageRouteInfo<void> {
  const CreateAccountRoute({List<PageRouteInfo>? children})
    : super(CreateAccountRoute.name, initialChildren: children);

  static const String name = 'CreateAccountRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const CreateAccountPage();
    },
  );
}

/// generated route for
/// [DashboardNavigatorPage]
class DashboardNavigatorRoute extends PageRouteInfo<void> {
  const DashboardNavigatorRoute({List<PageRouteInfo>? children})
    : super(DashboardNavigatorRoute.name, initialChildren: children);

  static const String name = 'DashboardNavigatorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardNavigatorPage();
    },
  );
}

/// generated route for
/// [DashboardPage]
class DashboardRoute extends PageRouteInfo<void> {
  const DashboardRoute({List<PageRouteInfo>? children})
    : super(DashboardRoute.name, initialChildren: children);

  static const String name = 'DashboardRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const DashboardPage();
    },
  );
}

/// generated route for
/// [EditProfileFieldPage]
class EditProfileFieldRoute extends PageRouteInfo<EditProfileFieldRouteArgs> {
  EditProfileFieldRoute({
    required String title,
    required FormFields field,
    required String initialValue,
    Key? key,
    List<PageRouteInfo>? children,
  }) : super(
         EditProfileFieldRoute.name,
         args: EditProfileFieldRouteArgs(
           title: title,
           field: field,
           initialValue: initialValue,
           key: key,
         ),
         initialChildren: children,
       );

  static const String name = 'EditProfileFieldRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      final args = data.argsAs<EditProfileFieldRouteArgs>();
      return EditProfileFieldPage(
        title: args.title,
        field: args.field,
        initialValue: args.initialValue,
        key: args.key,
      );
    },
  );
}

class EditProfileFieldRouteArgs {
  const EditProfileFieldRouteArgs({
    required this.title,
    required this.field,
    required this.initialValue,
    this.key,
  });

  final String title;

  final FormFields field;

  final String initialValue;

  final Key? key;

  @override
  String toString() {
    return 'EditProfileFieldRouteArgs{title: $title, field: $field, initialValue: $initialValue, key: $key}';
  }
}

/// generated route for
/// [EditProfilePage]
class EditProfileRoute extends PageRouteInfo<void> {
  const EditProfileRoute({List<PageRouteInfo>? children})
    : super(EditProfileRoute.name, initialChildren: children);

  static const String name = 'EditProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const EditProfilePage();
    },
  );
}

/// generated route for
/// [HomePage]
class HomeRoute extends PageRouteInfo<void> {
  const HomeRoute({List<PageRouteInfo>? children})
    : super(HomeRoute.name, initialChildren: children);

  static const String name = 'HomeRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HomePage();
    },
  );
}

/// generated route for
/// [HowThreadsWorksPage]
class HowThreadsWorksRoute extends PageRouteInfo<void> {
  const HowThreadsWorksRoute({List<PageRouteInfo>? children})
    : super(HowThreadsWorksRoute.name, initialChildren: children);

  static const String name = 'HowThreadsWorksRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const HowThreadsWorksPage();
    },
  );
}

/// generated route for
/// [LoginPage]
class LoginRoute extends PageRouteInfo<void> {
  const LoginRoute({List<PageRouteInfo>? children})
    : super(LoginRoute.name, initialChildren: children);

  static const String name = 'LoginRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const LoginPage();
    },
  );
}

/// generated route for
/// [ProfilePage]
class ProfileRoute extends PageRouteInfo<void> {
  const ProfileRoute({List<PageRouteInfo>? children})
    : super(ProfileRoute.name, initialChildren: children);

  static const String name = 'ProfileRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfilePage();
    },
  );
}

/// generated route for
/// [ProfileSetupPage]
class ProfileSetupRoute extends PageRouteInfo<void> {
  const ProfileSetupRoute({List<PageRouteInfo>? children})
    : super(ProfileSetupRoute.name, initialChildren: children);

  static const String name = 'ProfileSetupRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const ProfileSetupPage();
    },
  );
}

/// generated route for
/// [RootNavigatorPage]
class RootNavigatorRoute extends PageRouteInfo<void> {
  const RootNavigatorRoute({List<PageRouteInfo>? children})
    : super(RootNavigatorRoute.name, initialChildren: children);

  static const String name = 'RootNavigatorRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RootNavigatorPage();
    },
  );
}

/// generated route for
/// [RootPage]
class RootRoute extends PageRouteInfo<void> {
  const RootRoute({List<PageRouteInfo>? children})
    : super(RootRoute.name, initialChildren: children);

  static const String name = 'RootRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const RootPage();
    },
  );
}

/// generated route for
/// [SearchPage]
class SearchRoute extends PageRouteInfo<void> {
  const SearchRoute({List<PageRouteInfo>? children})
    : super(SearchRoute.name, initialChildren: children);

  static const String name = 'SearchRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SearchPage();
    },
  );
}

/// generated route for
/// [SplashScreen]
class SplashRoute extends PageRouteInfo<void> {
  const SplashRoute({List<PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static PageInfo page = PageInfo(
    name,
    builder: (data) {
      return const SplashScreen();
    },
  );
}
