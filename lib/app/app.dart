import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_persistent_navigation/ui/views/first/first_view.dart';
import 'package:stacked_persistent_navigation/ui/views/first_inner/first_inner_view.dart';
import 'package:stacked_persistent_navigation/ui/views/hello_stacked/hello_stacked_view.dart';
import 'package:stacked_persistent_navigation/ui/views/home/home_view.dart';
import 'package:stacked_persistent_navigation/ui/views/second_inner/second_inner_view.dart';
import 'package:stacked_persistent_navigation/ui/views/startup/startup_view.dart';
import 'package:stacked_services/stacked_services.dart';
// @stacked-import

@StackedApp(routes: [
  MaterialRoute(page: StartupView),
  MaterialRoute(page: HomeView),
  MaterialRoute(page: FirstView, children: [
    MaterialRoute(page: FirstInnerView),
    MaterialRoute(page: SecondInnerView),
  ]),
  MaterialRoute(page: HelloStackedView),

// @stacked-route
], dependencies: [
  LazySingleton(classType: NavigationService),
  LazySingleton(classType: DialogService),
  LazySingleton(classType: BottomSheetService),
])
class App {}
