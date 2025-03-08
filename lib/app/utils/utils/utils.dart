import 'package:threads_clone/app/utils/extensions/string_extension.dart';
import 'package:threads_clone/app/widgets/alert_dialog/adaptive_alert_dialog.dart';

import 'package:threads_clone/app/assets/exporter/exporter_app_general.dart';

class WidgetUtils {
  static Future<void> showDefaultErrorDialog(
    BuildContext context,
    String errorMessage,
  ) async {
    final List<Widget> actionBuilders = [
      TextButton(
        onPressed: () {
          context.router.maybePop();
        },
        child: Text(S.current.ok.capitalize()),
      ),
    ];
    if (context.mounted) {
      return showAdaptiveDialog<void>(
        context: context,
        builder: (context) => AdaptiveAlertDialog(
          errorMessage: errorMessage,
          actionBuilders: actionBuilders,
        ),
        useRootNavigator: false,
      );
    }
  }
}
