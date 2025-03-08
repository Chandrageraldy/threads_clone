import 'package:flutter/cupertino.dart';
import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

@RoutePage()
class DashboardPage extends BaseStatefulPage {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends BaseStatefulState<DashboardPage> {
  @override
  bool bottomSafeAreaEnabled() => false;

  @override
  Widget body() {
    return AutoTabsRouter.tabBar(
      physics: NeverScrollableScrollPhysics(),
      routes: const [
        HomeRoute(),
        SearchRoute(),
        AddThreadRoute(),
        ActivityRoute(),
        ProfileRoute(),
      ],
      builder: (context, child, _) {
        final tabsRouter = AutoTabsRouter.of(context);

        return Scaffold(
          body: child,
          extendBodyBehindAppBar: true,
          bottomNavigationBar: CupertinoTabBar(
            border: Border(top: BorderSide(color: Colors.transparent)),
            currentIndex: tabsRouter.activeIndex,
            backgroundColor: ColorManager.whiteColor,
            activeColor: Colors.black,
            inactiveColor: Colors.grey,
            onTap: (index) {
              if (index == 2) {
                context.router.push(AddThreadRoute());
              } else {
                tabsRouter.setActiveIndex(index);
              }
            },
            items: [
              getHomeBarItem(),
              getSearchBarItem(),
              getAddThreadBarItem(),
              getActivityBarItem(),
              getProfileBarItem(),
            ],
          ),
        );
      },
    );
  }

  @override
  bool hasDefaultPadding() {
    return false;
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _DashboardPageState {
  BottomNavigationBarItem getHomeBarItem() {
    return BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.house),
      activeIcon: Icon(CupertinoIcons.house_fill),
    );
  }

  BottomNavigationBarItem getSearchBarItem() {
    return BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.search),
      activeIcon: Icon(CupertinoIcons.search),
    );
  }

  BottomNavigationBarItem getAddThreadBarItem() {
    return BottomNavigationBarItem(
      icon: Container(
        padding: StyleManager.kPaddSH16V8,
        decoration: BoxDecoration(borderRadius: StyleManager.kRadius16, color: ColorManager.lightGreyColor),
        child: Icon(CupertinoIcons.add),
      ),
      activeIcon: Container(
        padding: StyleManager.kPaddSH16V8,
        decoration: BoxDecoration(borderRadius: StyleManager.kRadius16, color: ColorManager.lightGreyColor),
        child: Icon(CupertinoIcons.add),
      ),
    );
  }

  BottomNavigationBarItem getActivityBarItem() {
    return BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.heart),
      activeIcon: Icon(CupertinoIcons.heart_fill),
    );
  }

  BottomNavigationBarItem getProfileBarItem() {
    return BottomNavigationBarItem(
      icon: Icon(CupertinoIcons.person),
      activeIcon: Icon(CupertinoIcons.person_fill),
    );
  }
}
