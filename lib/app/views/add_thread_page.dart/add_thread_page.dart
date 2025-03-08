import 'package:flutter/cupertino.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';

import 'package:threads_clone/app/viewmodels/post_vm/post_view_model.dart';
import 'package:threads_clone/app/widgets/app_bar/modal_sheet_bar.dart';
import 'package:threads_clone/app/widgets/button/app_tapable_button.dart';
import 'package:threads_clone/app/widgets/text_form_field/app_text_form_field.dart';

@RoutePage()
class AddThreadPage extends BaseStatefulPage {
  const AddThreadPage({super.key});

  @override
  State<AddThreadPage> createState() => _AddThreadPageState();
}

class _AddThreadPageState extends BaseStatefulState<AddThreadPage> {
  final _formKey = GlobalKey<FormBuilderState>();

  bool _isButtonEnabled = false;

  UserProfileModel? userProfile = SharedPreferenceHandler().getUser();

  @override
  bool hasDefaultPadding() => false;

  @override
  resizeToAvoidBottomInset() => true;

  @override
  Widget body() {
    return Column(children: [
      getModalSheetBar(),
      getAddThreadsBody(),
      Spacer(),
      Padding(
        padding: StyleManager.kPaddSH16V16,
        child: Row(
          children: [getPostSetting(), Spacer(), getPostButton()],
        ),
      )
    ]);
  }

  // Enable Set State inside Extension
  void _setState(VoidCallback fn) {
    if (mounted) {
      setState(fn);
    }
  }
}

// * ---------------------------- Actions ----------------------------
extension _Actions on _AddThreadPageState {
  // Post Button Action
  void _onPostPressed() async {
    if (_isButtonEnabled) {
      final postContent = _formKey.currentState?.fields[FormFields.post.name]?.value ?? '';

      final result = await tryLoad(
            context,
            () => context.read<PostViewModel>().createPost(
                  postContent: postContent,
                  userId: userProfile?.userId ?? '',
                ),
          ) ??
          false;

      if (mounted && result) {
        context.router.maybePop();
      }
    }
  }
}

// * ------------------------ PrivateMethods ------------------------
extension _PrivateMethods on _AddThreadPageState {
  void _onFormChanged() {
    final post = _formKey.currentState?.fields[FormFields.post.name]?.value ?? '';

    _setState(() {
      _isButtonEnabled = post.isNotEmpty;
    });
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _AddThreadPageState {
  // Modal Sheet Bar
  Widget getModalSheetBar() {
    return ModalSheetBar(
      leadingButton: AppTapableButton(
        onTap: context.router.maybePop,
        label: 'Cancel',
        textStyle: _Styles.getCancelTextStyle(),
      ),
      trailingButton: AppTapableButton(
        onTap: () {},
        icon: Icon(CupertinoIcons.ellipsis_circle),
      ),
      title: 'Add Thread',
    );
  }

  // Add Threads Body
  Widget getAddThreadsBody() {
    return SizedBox(
      child: Padding(
        padding: StyleManager.kPaddSH16V16,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: StyleManager.kSpac12,
          children: [getProfileImage(), getThreadFormBody()],
        ),
      ),
    );
  }

  // Profile Container
  Widget getProfileImage() {
    return Container(
      width: StyleManager.kImgSize45,
      height: StyleManager.kImgSize45,
      decoration: BoxDecoration(
        color: ColorManager.greyColor,
        borderRadius: StyleManager.kRadius100,
      ),
    );
  }

  // Thread Form Body
  Widget getThreadFormBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          StyleManager.kSizedBoxH2,
          getUsername(),
          getFormBuilder(),
          StyleManager.kSizedBoxH16,
          getAttachmentActionRow(),
        ],
      ),
    );
  }

  // Username Label
  Widget getUsername() {
    return Text(
      userProfile?.username ?? '',
      style: _Styles.getUsernameTextStyle(),
    );
  }

  // Form Builder
  Widget getFormBuilder() {
    return FormBuilder(
      key: _formKey,
      onChanged: _onFormChanged,
      child: getPostFormField(),
    );
  }

  // Post Form Field
  Widget getPostFormField() {
    return AppTextFormField(
      field: FormFields.post,
      placeholder: 'What\'s new',
      autoFocus: true,
    );
  }

  // Attachment Action Row
  Widget getAttachmentActionRow() {
    return Row(
      spacing: StyleManager.kSpac16,
      children: [
        getGalleryAttachmentButton(),
        getCameraAttachmentButton(),
      ],
    );
  }

  // Photo Attachment Button
  Widget getGalleryAttachmentButton() {
    return AppTapableButton(onTap: () {}, icon: Icon(CupertinoIcons.photo_on_rectangle, color: ColorManager.greyColor));
  }

  // Camera Attachment Button
  Widget getCameraAttachmentButton() {
    return AppTapableButton(onTap: () {}, icon: Icon(CupertinoIcons.photo_camera, color: ColorManager.greyColor));
  }

  // Post Setting Button
  Widget getPostSetting() {
    return Text('Anyone can reply and quote', style: _Styles.getPostSettingTextStyle());
  }

  // Post Button
  Widget getPostButton() {
    return ElevatedButton(
      onPressed: _isButtonEnabled ? _onPostPressed : null,
      style: ElevatedButton.styleFrom(
        padding: StyleManager.kPaddSH16V8,
        backgroundColor: ColorManager.blackColor,
        foregroundColor: ColorManager.whiteColor,
        shape: RoundedRectangleBorder(
          borderRadius: StyleManager.kRadius100,
        ),
      ),
      child: Text('Post'),
    );
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // Cancel Button Text Style
  static getCancelTextStyle() {
    return Quicksand.medium.withSize(FontSizes.extraLarge);
  }

  // Username Label Text Style
  static getUsernameTextStyle() {
    return Quicksand.bold.withSize(FontSizes.large).copyWith(height: 1);
  }

  // Post Setting Text Style
  static getPostSettingTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large).copyWith(color: ColorManager.greyColor);
  }
}
