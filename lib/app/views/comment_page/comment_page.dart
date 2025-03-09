import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class CommentPage extends BaseStatefulPage {
  const CommentPage({super.key});

  @override
  State<CommentPage> createState() => _CommentPageState();
}

class _CommentPageState extends BaseStatefulState<CommentPage> {
  @override
  Widget body() {
    return Center(
      child: Text('Comment Page'),
    );
  }
}
