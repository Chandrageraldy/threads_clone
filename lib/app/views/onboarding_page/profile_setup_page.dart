import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:threads_clone/app/assets/app_router/app_router.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';
import 'package:threads_clone/app/widgets/app_bar/app_bar_trailing_button.dart';
import 'package:threads_clone/app/widgets/button/app_auth_button.dart';
import 'package:threads_clone/app/widgets/text_form_field/app_text_form_field.dart';

@RoutePage()
class ProfileSetupPage extends BaseStatefulPage {
  const ProfileSetupPage({super.key});

  @override
  State<ProfileSetupPage> createState() => _ProfileSetupPageState();
}

class _ProfileSetupPageState extends BaseStatefulState<ProfileSetupPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  UserProfileModel? userProfile = SharedPreferenceHandler().getUser();

  bool _isButtonEnabled = false;

  @override
  PreferredSizeWidget? appbar() {
    return AppBar(
      actions: [
        AppBarTrailingButton(
            onPressed: () => context.router.replaceAll([HowThreadsWorksRoute()]), label: S.current.skip)
      ],
    );
  }

  @override
  bool resizeToAvoidBottomInset() => true;

  @override
  Widget body() {
    return CustomScrollView(
      slivers: [
        SliverFillRemaining(
          hasScrollBody: false,
          child: Column(
            children: [
              getHeader(),
              Spacer(flex: 2),
              getProfileContainer(),
              StyleManager.kSizedBoxH16,
              getSaveProfileButton(),
              Spacer(flex: 3),
            ],
          ),
        )
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
extension _Actions on _ProfileSetupPageState {
  void _onSaveProfilePressed() async {
    if (_isButtonEnabled) {
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
        context.router.replaceAll([HowThreadsWorksRoute()]);
      }
    }
  }
}

// * ------------------------ PrivateMethods ------------------------
extension _PrivateMethods on _ProfileSetupPageState {
  void _onFormChanged() {
    final bio = _formKey.currentState?.fields[FormFields.bio.name]?.value ?? '';
    final link = _formKey.currentState?.fields[FormFields.link.name]?.value ?? '';

    _setState(() {
      _isButtonEnabled = bio.isNotEmpty || link.isNotEmpty;
    });
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _ProfileSetupPageState {
  // Header
  Widget getHeader() {
    return Center(
      child: Column(
        spacing: StyleManager.kSpac8,
        children: [getTitleLabel(), getDescriptionLabel()],
      ),
    );
  }

  // Title Label
  Widget getTitleLabel() {
    return Text(S.current.profileSetupTitle, style: _Styles.getTitleTextStyle());
  }

  // Description Label
  Widget getDescriptionLabel() {
    return Text(S.current.profileSetupDesc, style: _Styles.getDescriptionTextStyle());
  }

  // Profile Container
  Widget getProfileContainer() {
    return Container(
      decoration: _Styles.getProfileContainerDecoration(),
      child: Padding(
        padding: StyleManager.kPadd12,
        child: getFormBuilder(),
      ),
    );
  }

  // Form Builder
  Widget getFormBuilder() {
    return FormBuilder(
      key: _formKey,
      onChanged: _onFormChanged,
      child: Column(
        children: [
          getUsernameFormField(),
          Divider(color: ColorManager.dividerColor),
          getFullNameFormField(),
          Divider(color: ColorManager.dividerColor),
          getBioFormField(),
          Divider(color: ColorManager.dividerColor),
          getLinkFormField(),
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
    );
  }

  // Link Form Field
  Widget getLinkFormField() {
    return AppTextFormField(
      formFieldTitle: S.current.link,
      field: FormFields.link,
      initialValue: userProfile?.link,
      placeholder: '+ Add link',
    );
  }

  // Save Profile Button
  Widget getSaveProfileButton() {
    return AppAuthButton(
      label: 'Save Profile',
      textStyle: _Styles.getSaveProfileButtonTextStyle(),
      backgroundColor: ColorManager.blackColor,
      onPressed: _isButtonEnabled ? _onSaveProfilePressed : null,
    );
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // Title Text Style
  static getTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.massive);
  }

  // Description Text Style
  static getDescriptionTextStyle() {
    return Quicksand.medium.withSize(FontSizes.medium).copyWith(color: ColorManager.greyColor);
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

  // Button Label Text Style
  static getSaveProfileButtonTextStyle() {
    return Quicksand.semiBold.withSize(FontSizes.large).copyWith(color: ColorManager.whiteColor);
  }
}
