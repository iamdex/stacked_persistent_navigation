import 'package:stacked_persistent_navigation/app/app.locator.dart';
import 'package:stacked_persistent_navigation/enums/dialog_type.dart';
import 'package:stacked_persistent_navigation/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:stacked_services/stacked_services.dart';

void setupDialogUi() {
  final dialogService = locator<DialogService>();

  final Map<dynamic, DialogBuilder> builders = {
    DialogType.infoAlert: (context, sheetRequest, completer) =>
        InfoAlertDialog(request: sheetRequest, completer: completer),
  };

  dialogService.registerCustomDialogBuilders(builders);
}

