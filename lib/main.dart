import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart' as Tranz;
import 'package:stacked_persistent_navigation/app/app.locator.dart';
import 'package:stacked_persistent_navigation/ui/common/app_colors.dart';
import 'package:stacked_persistent_navigation/ui/setup/setup_bottom_sheet_ui.dart';
import 'package:stacked_persistent_navigation/ui/setup/setup_dialog_ui.dart';
import 'package:stacked_services/stacked_services.dart';

import 'app/app.router.dart';

void main() {
  setupLocator();
  setupDialogUi();
  setupBottomSheetUi();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      transitionDuration: const Duration(milliseconds: 0),
      defaultTransition: Tranz.Transition.noTransition,
      title: 'Flutter Demo',
      theme: Theme.of(context).copyWith(
        primaryColor: kcBackgroundColor,
        focusColor: kcPrimaryColor,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black,
            ),
      ),
      initialRoute: Routes.startupView,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      navigatorKey: StackedService.navigatorKey,
    );
  }
}
