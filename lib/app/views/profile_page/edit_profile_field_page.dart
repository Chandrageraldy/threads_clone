import 'package:flutter/cupertino.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/widgets/app_bar/modal_sheet_bar.dart';
import 'package:threads_clone/app/widgets/button/app_tapable_button.dart';

@RoutePage()
class EditProfileFieldPage extends BaseStatefulPage {
  const EditProfileFieldPage({required this.title, required this.field, required this.initialValue, super.key});

  final String title;
  final FormFields field;
  final String initialValue;

  @override
  State<EditProfileFieldPage> createState() => _EditProfileFieldPageState();
}

class _EditProfileFieldPageState extends BaseStatefulState<EditProfileFieldPage> {
  final TextEditingController _controller = TextEditingController();

  bool _isFieldEmpty = true;

  @override
  bool hasDefaultPadding() => false;

  @override
  void initState() {
    super.initState();
    _controller.text = widget.initialValue;
    _isFieldEmpty = _controller.text.isEmpty;
  }

  @override
  Widget body() {
    return Column(
      spacing: StyleManager.kSpac12,
      children: [getModalSheetBar(), getModalBody(), getTextFieldDescription()],
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
extension _Actions on _EditProfileFieldPageState {
  void _onDeleteAll() {
    _controller.clear();
    _setState(() {
      _isFieldEmpty = true;
    });
  }

  void _onDonePressed() {
    context.router.maybePop(_controller.text.trim());
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _EditProfileFieldPageState {
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
      title: widget.title,
      hasBorder: false,
    );
  }

  // Text Form Field
  Widget getModalBody() {
    return Padding(
      padding: StyleManager.kPaddSH16,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: ColorManager.dividerColor),
          borderRadius: StyleManager.kRadius16,
        ),
        width: double.infinity,
        child: Padding(
          padding: StyleManager.kPaddSH16V16,
          child: ConstrainedBox(
            constraints: BoxConstraints(minHeight: StyleManager.kHeight125),
            child: Column(
              children: [getFieldHeader(), getTextFormField()],
            ),
          ),
        ),
      ),
    );
  }

  // Field Header
  Widget getFieldHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(widget.field == FormFields.bio ? 'Bio' : 'Link', style: _Styles.getFormFieldTitleTextStyle()),
        if (!_isFieldEmpty)
          GestureDetector(
            onTap: _onDeleteAll,
            child: Icon(
              CupertinoIcons.multiply_circle_fill,
              size: StyleManager.kIconSize25,
              color: ColorManager.greyColor,
            ),
          )
      ],
    );
  }

  // Text Form Field
  Widget getTextFormField() {
    return TextFormField(
      autofocus: true,
      controller: _controller,
      decoration: InputDecoration(
        hintText: widget.field == FormFields.bio ? 'Write a bio...' : 'https://www.example/com/',
        hintStyle: _Styles.getPlaceholderTextStyle(),
        border: StyleManager.kNoInputBorder,
        isDense: true,
      ),
      textInputAction: TextInputAction.next,
      maxLines: null,
      onChanged: (value) {
        _setState(
          () {
            if (value.isEmpty) {
              _isFieldEmpty = true;
            } else {
              _isFieldEmpty = false;
            }
          },
        );
      },
    );
  }

  // Field Description
  Widget getTextFieldDescription() {
    return Text(
      widget.field == FormFields.bio
          ? 'your bio is public.'
          : 'You can add a personal or two-way link to your profile.',
      style: _Styles.getFormFieldDescriptionTextStyle(),
    );
  }
}

// * ---------------------------- Styles -----------------------------
class _Styles {
  // Form Field Title Text Style
  static getFormFieldTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.large);
  }

  // Cancel Button Text Style
  static getCancelTextStyle() {
    return Quicksand.medium.withSize(FontSizes.extraLarge);
  }

  // Done Button Text Style
  static getDoneTextStyle() {
    return Quicksand.bold.withSize(FontSizes.extraLarge);
  }

  // Placeholder Text Style
  static getPlaceholderTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large).copyWith(color: ColorManager.greyColor);
  }

  // Placeholder Text Style
  static getFormFieldDescriptionTextStyle() {
    return Quicksand.medium.withSize(FontSizes.medium).copyWith(color: ColorManager.greyColor);
  }
}
