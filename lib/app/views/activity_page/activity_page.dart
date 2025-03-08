import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

@RoutePage()
class ActivityPage extends BaseStatefulPage {
  const ActivityPage({super.key});

  @override
  State<ActivityPage> createState() => _ActivityPageState();
}

class _ActivityPageState extends BaseStatefulState<ActivityPage> {
  @override
  Widget body() {
    return Center(child: Text(S.current.activityScreenLabel, style: _Styles.getLabelTextStyle()));
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // Label Text Style
  static getLabelTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large);
  }
}
