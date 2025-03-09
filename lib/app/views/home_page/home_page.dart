import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';
import 'package:threads_clone/app/models/post_response_model/post_response_model.dart';
import 'package:threads_clone/app/models/user_profile_model/user_profile_model.dart';
import 'package:threads_clone/app/viewmodels/home_vm/home_view_model.dart';
import 'package:threads_clone/app/viewmodels/user_vm/user_view_model.dart';
import 'package:threads_clone/app/widgets/thread/thread_post.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => HomeViewModel(),
      child: _HomePage(),
    );
  }
}

class _HomePage extends BaseStatefulPage {
  @override
  State<_HomePage> createState() => _HomePageState();
}

class _HomePageState extends BaseStatefulState<_HomePage> {
  UserProfileModel? userProfile = SharedPreferenceHandler().getUser();

  @override
  void initState() {
    super.initState();
    _loadPosts();
    _loadCurrentUser();
  }

  @override
  bool hasDefaultPadding() => false;

  @override
  Widget body() {
    return CustomScrollView(
      slivers: [getSliverAppBar(), getSliverList()],
    );
  }
}

// * ------------------------ PrivateMethods ------------------------
extension _PrivateMethods on _HomePageState {
  void _loadPosts() {
    tryLoad(context, () => context.read<HomeViewModel>().getAllPosts(userId: userProfile?.userId ?? ''));
  }

  void _loadCurrentUser() {
    tryLoad(
        context,
        () =>
            context.read<UserViewModel>().getUserProfile(userId: Supabase.instance.client.auth.currentUser?.id ?? ''));
  }
}

// * ------------------------ WidgetFactories ------------------------
extension _WidgetFactories on _HomePageState {
  // Sliver App Bar
  Widget getSliverAppBar() {
    return SliverAppBar(
      expandedHeight: kToolbarHeight,
      floating: false,
      pinned: false,
      flexibleSpace: FlexibleSpaceBar(
        centerTitle: true,
        title: Image.asset(
          ImageConstant.threadsLogo,
          height: kToolbarHeight * 0.8,
        ),
      ),
    );
  }

  // Sliver List
  Widget getSliverList() {
    List<PostResponseModel> posts = context.select((HomeViewModel vm) => vm.posts);
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) => Column(
          children: [
            ThreadPost(
              postId: posts[index].postId ?? 0,
              username: posts[index].users?.username ?? '',
              postContent: posts[index].postContent ?? '',
              commentCount: posts[index].commentCount ?? 0,
              likeCount: posts[index].likeCount ?? 0,
              isLikedByUser: posts[index].isLikedByUser ?? false,
              createdAt: posts[index].createdAt ?? DateTime.now(),
            ),
            Divider(color: ColorManager.dividerColor),
          ],
        ),
        childCount: posts.length,
      ),
    );
  }
}

// * ---------------------------- Styles -----------------------------
