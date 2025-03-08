import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

@RoutePage()
class SearchPage extends BaseStatefulPage {
  const SearchPage({super.key});

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends BaseStatefulState<SearchPage> {
  @override
  Widget body() {
    return Center(child: Text(S.current.searchScreenLabel, style: _Styles.getLabelTextStyle()));
  }
}

// * ---------------------------- Styles -----------------------------
abstract class _Styles {
  // Label Text Style
  static getLabelTextStyle() {
    return Quicksand.medium.withSize(FontSizes.large);
  }
}
