import 'package:flutter/cupertino.dart';
import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';
import 'package:threads_clone/app/widgets/button/app_profile_button.dart';
import 'package:threads_clone/app/widgets/button/app_tapable_button.dart';

@RoutePage()
class ProfilePage extends BaseStatefulPage {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends BaseStatefulState<ProfilePage> {
  UserProfileModel? userProfile = SharedPreferenceHandler().getUser();

  @override
  bool hasDefaultPadding() => false;

  @override
  PreferredSizeWidget? appbar() {
    return AppBar(
      leading: GestureDetector(
        child: Icon(CupertinoIcons.globe),
      ),
      actions: [
        Padding(
          padding: StyleManager.kPaddSH16,
          child: Row(
            spacing: StyleManager.kSpac16,
            children: [
              GestureDetector(
                child: Icon(CupertinoIcons.line_horizontal_3),
              ),
              GestureDetector(
                onTap: _onLogoutPressed,
                child: Icon(CupertinoIcons.square_arrow_left),
              )
            ],
          ),
        ),
      ],
    );
  }

  @override
  Widget body() {
    return Column(
      children: [getProfileContainer()],
    );
  }

  // Enable Set State inside Extension
  void _setState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }
}

// * ---------------------------- Actions ----------------------------
extension _Actions on _ProfilePageState {
  void _onLogoutPressed() async {
    final result = await tryLoad(context, () => context.read<UserViewModel>().logout()) ?? false;

    if (result && mounted) {
      context.router.replaceAll([RootRoute()]);
    }
  }

  void _onEditPressed() async {
    final bool? result = await context.router.push(EditProfileRoute());
    if (result == true) {
      _setState(() {
        userProfile = context.read<UserViewModel>().userProfile;
      });
    }
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _ProfilePageState {
  // Profile Container
  Widget getProfileContainer() {
    return Container(
      padding: StyleManager.kPaddSH16V16,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  getFullName(),
                  getUsername(),
                ],
              ),
              Spacer(),
              getProfileImage()
            ],
          ),
          StyleManager.kSizedBoxH6,
          getBio(),
          StyleManager.kSizedBoxH20,
          Row(
            spacing: StyleManager.kSpac12,
            children: [
              getFollowers(),
              if (userProfile?.link?.isNotEmpty == true)
                Icon(CupertinoIcons.circle_fill, color: ColorManager.greyColor, size: StyleManager.kIconSize4),
              getLinkButton(),
            ],
          ),
          StyleManager.kSizedBoxH20,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [getEditProfileButton(), StyleManager.kSizedBoxW16, getShareProfileButton()],
          ),
        ],
      ),
    );
  }

  // Profile Image
  Widget getProfileImage() {
    return Container(
      width: StyleManager.kImgSize65,
      height: StyleManager.kImgSize65,
      decoration: BoxDecoration(
        color: ColorManager.greyColor,
        borderRadius: StyleManager.kRadius100,
      ),
    );
  }

  // Full Name Label
  Widget getFullName() {
    return Text(userProfile?.fullname ?? '', style: _Styles.getFullNameTextStyle());
  }

  // Username Label
  Widget getUsername() {
    return Text(userProfile?.username ?? '', style: _Styles.getUsernameTextStyle());
  }

  // Bio Label
  Widget getBio() {
    return Text(userProfile?.bio ?? '', style: _Styles.getUsernameTextStyle());
  }

  // Followers Label
  Widget getFollowers() {
    return Text('0 Followers', style: _Styles.getFollowersTextStyle());
  }

  // Link Button
  Widget getLinkButton() {
    return AppTapableButton(onTap: () {}, label: userProfile?.link, textStyle: _Styles.getLinkTextStyle());
  }

  // Edit Profile Button
  Widget getEditProfileButton() {
    return AppProfileButton(label: 'Edit Profile', onPressed: _onEditPressed);
  }

  // Share Profile Button
  Widget getShareProfileButton() {
    return AppProfileButton(label: 'Share Profile', onPressed: () {});
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  static getFullNameTextStyle() {
    return Quicksand.bold.withSize(FontSizes.extraHuge);
  }

  static getUsernameTextStyle() {
    return Quicksand.regular.withSize(FontSizes.large);
  }

  static getFollowersTextStyle() {
    return Quicksand.regular.withSize(FontSizes.large).copyWith(color: ColorManager.greyColor);
  }

  static getLinkTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large).copyWith(color: ColorManager.greyColor);
  }
}
