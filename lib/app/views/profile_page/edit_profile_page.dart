import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';

import 'package:threads_clone/app/widgets/app_bar/modal_sheet_bar.dart';
import 'package:threads_clone/app/widgets/button/app_tapable_button.dart';
import 'package:threads_clone/app/widgets/text_form_field/app_text_form_field.dart';

@RoutePage()
class EditProfilePage extends BaseStatefulPage {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends BaseStatefulState<EditProfilePage> {
  final _formKey = GlobalKey<FormBuilderState>();

  UserProfileModel? userProfile = SharedPreferenceHandler().getUser();

  String bio = '';
  String link = '';

  bool _isPrivate = false;

  @override
  bool hasDefaultPadding() => false;

  @override
  Color backgroundColor() => ColorManager.lightGreyColor;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      bio = userProfile?.bio ?? '';
      link = userProfile?.link ?? '';
    });
    super.initState();
  }

  @override
  Widget body() {
    return Column(
      children: [
        getModalSheetBar(),
        Spacer(flex: 4),
        getProfileContainer(),
        Spacer(flex: 5),
      ],
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
extension _Actions on _EditProfilePageState {
  void _onBioPressed() async {
    final String? result = await context.router.push(
      EditProfileFieldRoute(
        title: 'Edit Bio',
        field: FormFields.bio,
        initialValue: bio,
      ),
    );

    if (result != null) {
      _formKey.currentState?.fields[FormFields.bio.name]?.didChange(result);
      bio = result;
    }
  }

  void _onLinkPressed() async {
    final String? result = await context.router.push(
      EditProfileFieldRoute(
        title: 'Edit Link',
        field: FormFields.link,
        initialValue: link,
      ),
    );

    if (result != null) {
      _formKey.currentState?.fields[FormFields.link.name]?.didChange(result);
      link = result;
    }
  }

  void _onDonePressed() async {
    if (bio != userProfile?.bio || link != userProfile?.link) {
      final bio = _formKey.currentState?.fields[FormFields.bio.name]?.value ?? '';
      final link = _formKey.currentState?.fields[FormFields.link.name]?.value ?? '';
      final userId = userProfile?.userId ?? '';

      final result = await tryLoad(
            context,
            () => context.read<UserViewModel>().updateBioAndLink(
                  userId: userId,
                  bio: bio,
                  link: link,
                ),
          ) ??
          false;

      if (result && mounted) {
        context.router.maybePop(true);
      }
    }

    if (mounted) {
      context.router.maybePop(false);
    }
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _EditProfilePageState {
  // Modal Sheet Bar
  Widget getModalSheetBar() {
    return ModalSheetBar(
      leadingButton: AppTapableButton(
        onTap: context.router.maybePop,
        label: 'Cancel',
        textStyle: _Styles.getCancelTextStyle(),
      ),
      trailingButton: AppTapableButton(
        onTap: _onDonePressed,
        label: 'Done',
        textStyle: _Styles.getDoneTextStyle(),
      ),
      title: 'Edit Profile',
    );
  }

  // Profile Container
  Widget getProfileContainer() {
    return Padding(
      padding: StyleManager.kPaddSH16,
      child: Container(
        decoration: _Styles.getProfileContainerDecoration(),
        child: Padding(
          padding: StyleManager.kPadd12,
          child: getFormBuilder(),
        ),
      ),
    );
  }

  // Form Builder
  Widget getFormBuilder() {
    return FormBuilder(
      key: _formKey,
      child: Column(
        spacing: StyleManager.kSpac4,
        children: [
          getUsernameFormField(),
          Divider(color: ColorManager.dividerColor),
          getFullNameFormField(),
          Divider(color: ColorManager.dividerColor),
          getBioFormField(),
          Divider(color: ColorManager.dividerColor),
          getLinkFormField(),
          Divider(color: ColorManager.dividerColor),
          getPrivateProfileSwitch(),
        ],
      ),
    );
  }

  // Username Form Field
  Widget getUsernameFormField() {
    return AppTextFormField(
      formFieldTitle: S.current.username,
      field: FormFields.username,
      placeholder: S.current.username,
      initialValue: userProfile?.username,
      isEnableEdit: false,
    );
  }

  // Full Name Form Field
  Widget getFullNameFormField() {
    return AppTextFormField(
      formFieldTitle: S.current.fullName,
      field: FormFields.fullname,
      placeholder: S.current.fullName,
      initialValue: userProfile?.fullname,
      isEnableEdit: false,
    );
  }

  // Bio Form Field
  Widget getBioFormField() {
    return AppTextFormField(
      formFieldTitle: S.current.bio,
      field: FormFields.bio,
      initialValue: userProfile?.bio,
      placeholder: '+ Write bio',
      onTap: _onBioPressed,
    );
  }

  // Link Form Field
  Widget getLinkFormField() {
    return AppTextFormField(
      formFieldTitle: S.current.link,
      field: FormFields.link,
      initialValue: userProfile?.link,
      placeholder: '+ Add link',
      onTap: _onLinkPressed,
    );
  }

  // Private Profile Switch
  Widget getPrivateProfileSwitch() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: StyleManager.kSpac4,
            children: [
              Text(
                'Private Profile',
                style: _Styles.getPrivateProfileTextStyle(),
              ),
              Text(
                'If you swtich to private only, only followers can see your threads. Your replies will be visible to followers and individual profiles you reply to.',
                style: _Styles.getPrivateProfileDescTextStyle(),
              ),
            ],
          ),
        ),
        CupertinoSwitch(
          activeTrackColor: ColorManager.blackColor,
          value: _isPrivate,
          onChanged: (value) {
            _setState(() {
              _isPrivate = value;
            });
          },
        ),
      ],
    );
  }
}

// * ---------------------------- Styles -----------------------------
class _Styles {
  // Cancel Button Text Style
  static getCancelTextStyle() {
    return Quicksand.medium.withSize(FontSizes.extraLarge);
  }

  // Done Button Text Style
  static getDoneTextStyle() {
    return Quicksand.bold.withSize(FontSizes.extraLarge);
  }

  // Profile Container Decoration
  static getProfileContainerDecoration() {
    return BoxDecoration(
      color: ColorManager.whiteColor,
      borderRadius: StyleManager.kRadius16,
      border: Border.all(
        color: ColorManager.dividerColor,
      ),
    );
  }

  // Private Profile Text Style
  static getPrivateProfileTextStyle() {
    return Quicksand.bold.withSize(FontSizes.large);
  }

  // Private Profile Desc Text Style
  static getPrivateProfileDescTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large).copyWith(color: ColorManager.greyColor);
  }
}
