import 'package:flutter/cupertino.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class HowThreadsWorksContent extends StatelessWidget {
  const HowThreadsWorksContent({required this.title, required this.description, required this.icon, super.key});

  final String title, description;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: StyleManager.kPaddSV8,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: StyleManager.kSpac16,
        children: [
          icon,
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                StyleManager.kSizedBoxH10,
                Text(title, style: _Styles.getTitleTextStyle()),
                StyleManager.kSizedBoxH10,
                Text(description, style: _Styles.getDescriptionTextStyle()),
              ],
            ),
          )
        ],
      ),
    );
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  static getTitleTextStyle() {
    return Quicksand.bold.withSize(FontSizes.mediumPlus);
  }

  static getDescriptionTextStyle() {
    return Quicksand.medium.withSize(FontSizes.mediumPlus).copyWith(color: ColorManager.greyColor);
  }
}

// How Threads Work Info Data
class HowThreadsWorksInfo {
  final String title, description;
  final Icon icon;
  HowThreadsWorksInfo({required this.title, required this.description, required this.icon});
}

final List<HowThreadsWorksInfo> howThreadWorksInfoData = [
  HowThreadsWorksInfo(
    title: S.current.howThreadWorksTitle1,
    description: S.current.howThreadWorksDesc1,
    icon: Icon(CupertinoIcons.person_circle, size: StyleManager.kIconSize35),
  ),
  HowThreadsWorksInfo(
    title: S.current.howThreadWorksTitle2,
    description: S.current.howThreadWorksDesc2,
    icon: Icon(CupertinoIcons.link, size: StyleManager.kIconSize35),
  ),
  HowThreadsWorksInfo(
    title: S.current.howThreadWorksTitle3,
    description: S.current.howThreadWorksDesc3,
    icon: Icon(CupertinoIcons.lock, size: StyleManager.kIconSize35),
  ),
];

List<HowThreadsWorksContent> getContentList() {
  return howThreadWorksInfoData.map((data) {
    return HowThreadsWorksContent(
      title: data.title,
      description: data.description,
      icon: data.icon,
    );
  }).toList();
}
