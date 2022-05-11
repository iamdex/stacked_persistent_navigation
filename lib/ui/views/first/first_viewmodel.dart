import 'dart:developer';

import 'package:stacked/stacked.dart';
import 'package:stacked_persistent_navigation/app/app.locator.dart';
import 'package:stacked_persistent_navigation/ui/views/first_inner/first_inner_view.dart';
import 'package:stacked_persistent_navigation/ui/views/second_inner/second_inner_view.dart';
import 'package:stacked_services/stacked_services.dart';

class FirstViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  void goToFirstInnerView() {
    log('first inner view pressed!');
    _navigationService.navigateToView(FirstInnerView(), id: 1);
  }

  void goToSecondInnerView() {
    log('second inner view pressed!');
    _navigationService.navigateToView(SecondInnerView(), id: 1);
  }
}
