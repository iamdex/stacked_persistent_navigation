import 'package:stacked/stacked.dart';
import 'package:stacked_persistent_navigation/app/app.locator.dart';
import 'package:stacked_services/stacked_services.dart';

class HomeViewModel extends IndexTrackingViewModel {
  final _navigationService = locator<NavigationService>();

  final helloStackedKey = StackedService.nestedNavigationKey(0);
  final helloNavigationKey = StackedService.nestedNavigationKey(1);

  String _actualRoute = '';

  @override
  void setIndex(int value) {
    switch (value) {
      case 0:
        _actualRoute = 'helloStacked';
        break;
      case 1:
        _actualRoute = 'helloNavigation';
        break;
    }

    if (value == 1) {
      if (_actualRoute.contains('helloNavigation')) {
        _navigationService.back(id: 1);
      }
    }
    super.setIndex(value);
  }
}
