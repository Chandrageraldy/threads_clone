import 'package:threads_clone/app/utils/mixins/error_handling_mixin.dart';
import 'package:threads_clone/app/viewmodels/app_config_vm/theme_view_model.dart';

import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

abstract class BaseStatefulPage extends StatefulWidget {
  const BaseStatefulPage({super.key});
}

abstract class BaseStatefulState<Screen extends BaseStatefulPage> extends State<Screen> with ErrorHandlingMixin {
  PreferredSizeWidget? appbar() => null;

  Widget body();

  Widget? floatingActionButton() => null;

  EdgeInsets defaultPadding() => StyleManager.kPaddSH16V8;

  Color backgroundColor() => context.theme.scaffoldBackgroundColor;

  bool topSafeAreaEnabled() => true;

  bool bottomSafeAreaEnabled() => true;

  bool hasDefaultPadding() => true;

  bool resizeToAvoidBottomInset() => false;

  /// Each Page are meant to be build with a [Scaffold] structure
  /// include with [AppBar], [Body], [FloatingActionButton]
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor(),
      appBar: appbar(),
      body: SafeArea(
        left: false,
        right: false,
        top: false,
        bottom: bottomSafeAreaEnabled(),
        child: GestureDetector(
          onTap: () => FocusManager.instance.primaryFocus?.unfocus(),
          child: Padding(
            padding: hasDefaultPadding() ? defaultPadding() : EdgeInsets.all(0),
            child: body(),
          ),
        ),
      ),
      floatingActionButton: floatingActionButton(),
      resizeToAvoidBottomInset: resizeToAvoidBottomInset(),
    );
  }
}
