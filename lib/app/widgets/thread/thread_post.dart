import 'package:flutter/cupertino.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';
import 'package:threads_clone/app/utils/mixins/error_handling_mixin.dart';
import 'package:threads_clone/app/viewmodels/post_vm/post_view_model.dart';
import 'package:threads_clone/app/widgets/button/app_tapable_button.dart';

class ThreadPost extends StatefulWidget {
  const ThreadPost({
    required this.postId,
    required this.username,
    required this.postContent,
    this.profileImageUrl,
    required this.commentCount,
    required this.likeCount,
    required this.isLikedByUser,
    super.key,
  });

  final int postId;
  final String username;
  final String postContent;
  final String? profileImageUrl;
  final int commentCount;
  final int likeCount;
  final bool isLikedByUser;

  @override
  State<ThreadPost> createState() => _ThreadPostState();
}

class _ThreadPostState extends State<ThreadPost> with ErrorHandlingMixin {
  bool? isLikedByUser;
  int? likeCount;

  UserProfileModel? userProfile = SharedPreferenceHandler().getUser();

  @override
  void initState() {
    isLikedByUser = widget.isLikedByUser;
    likeCount = widget.likeCount;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: StyleManager.kPaddSH16V8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: StyleManager.kSpac12,
          children: [getProfileContainer(), getPostBody()],
        ),
      ),
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
extension _Actions on _ThreadPostState {
  void _onMorePressed() {}

  void _onLikePressed() async {
    bool newLikeStatus = !(isLikedByUser ?? false);
    int newLikeCount = (likeCount ?? 0) + (newLikeStatus ? 1 : -1);

    _setState(() {
      isLikedByUser = newLikeStatus;
      likeCount = newLikeCount;
    });

    tryCatch(
        context,
        () => context.read<PostViewModel>().toggleLike(
            postId: widget.postId, userId: userProfile?.userId ?? '', isLikedByUser: !(isLikedByUser ?? false)));
  }

  void _onCommentPressed() {}

  void _onRepostPressed() {}

  void _onSharePressed() {}
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _ThreadPostState {
  // Profile Container
  Widget getProfileContainer() {
    return Container(
      width: 45,
      height: 45,
      decoration: BoxDecoration(
        color: ColorManager.greyColor,
        borderRadius: StyleManager.kRadius100,
      ),
    );
  }

  // Post Content
  Widget getPostBody() {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: StyleManager.kSpac4,
        children: [
          Row(children: [getUsername(), StyleManager.kSizedBoxW10, getPostTimeDifference(), Spacer(), getMore()]),
          getPost(),
          StyleManager.kSizedBoxH6,
          getPostActionRow(),
          StyleManager.kSizedBoxH6,
          getStatsRow(),
        ],
      ),
    );
  }

  // Username Label
  Widget getUsername() {
    return Text(
      widget.username,
      style: _Styles.getUsernameTextStyle(),
    );
  }

  // Post Time Difference
  Widget getPostTimeDifference() {
    return Text('1h', style: _Styles.getStatsTextStyle());
  }

  // Get More Button
  Widget getMore() {
    return AppTapableButton(icon: Icon(CupertinoIcons.ellipsis), onTap: _onMorePressed);
  }

  // Post Label
  Widget getPost() {
    return Text(widget.postContent, style: _Styles.getPostTextStyle());
  }

  // Post Action Row
  Widget getPostActionRow() {
    return Row(
      spacing: StyleManager.kSpac16,
      children: [
        getLikeButton(),
        getCommentButton(),
        getRepostButton(),
        getShareButton(),
      ],
    );
  }

  // Like Button
  Widget getLikeButton() {
    return AppTapableButton(
        icon: isLikedByUser ?? false
            ? Icon(
                CupertinoIcons.heart_fill,
                color: ColorManager.redColor,
              )
            : Icon(CupertinoIcons.heart),
        onTap: _onLikePressed);
  }

  // Comment Button
  Widget getCommentButton() {
    return AppTapableButton(icon: Icon(CupertinoIcons.chat_bubble), onTap: _onCommentPressed);
  }

  // Repost Button
  Widget getRepostButton() {
    return AppTapableButton(icon: Icon(CupertinoIcons.repeat), onTap: _onRepostPressed);
  }

  // Share Button
  Widget getShareButton() {
    return AppTapableButton(icon: Icon(CupertinoIcons.paperplane), onTap: _onSharePressed);
  }

  // Stats Row
  Widget getStatsRow() {
    return Row(
      spacing: StyleManager.kSpac12,
      children: [
        getReplyStats(),
        Icon(CupertinoIcons.circle_fill, color: ColorManager.greyColor, size: StyleManager.kIconSize4),
        getLikeStats(),
      ],
    );
  }

  // Reply Stats
  Widget getReplyStats() {
    return AppTapableButton(
        label: '${widget.commentCount} Replies', textStyle: _Styles.getStatsTextStyle(), onTap: () {});
  }

  // Like Stats
  Widget getLikeStats() {
    return AppTapableButton(label: '$likeCount Likes', textStyle: _Styles.getStatsTextStyle(), onTap: () {});
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  static getUsernameTextStyle() {
    return Quicksand.bold.withSize(FontSizes.large);
  }

  static getPostTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large);
  }

  static getStatsTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large).copyWith(color: ColorManager.greyColor);
  }
}
