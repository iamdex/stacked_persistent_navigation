import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_persistent_navigation/app/app.router.dart';

import 'home_viewmodel.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HomeViewModel>.reactive(
      viewModelBuilder: () => HomeViewModel(),
      builder: (context, model, child) => WillPopScope(
        onWillPop: () async {
          // If it's not on the first route in the bottom nav bar
          if (model.currentIndex != 0) {
            // Then pop to the first index
            model.setIndex(0);

            // And return false to prevent the default behavior of a back button
            return false;
          }
          // Let the default behavior handle the back button tap
          return true;
        },
        child: Scaffold(
          extendBody: true,
          extendBodyBehindAppBar: true,
          resizeToAvoidBottomInset: true,
          appBar: AppBar(
            title: const Text('This is a simple nvigation demo'),
          ),
          body: SafeArea(
            child: Stack(
              fit: StackFit.expand,
              children: [
                _MainBody(
                  index: 0,
                  navigatorKey: model.helloStackedKey,
                  initialRoute: Routes.helloStackedView,
                ),
                _MainBody(
                  index: 1,
                  navigatorKey: model.helloNavigationKey,
                  initialRoute: Routes.firstView,
                ),
              ],
            ),
          ),
          bottomNavigationBar: MystackedBottomNavigationBar(model),
        ),
      ),
    );
  }
}

class _MainBody extends ViewModelWidget<HomeViewModel> {
  const _MainBody({
    Key? key,
    required this.index,
    required this.navigatorKey,
    required this.initialRoute,
  }) : super(key: key);

  final int index;
  final GlobalKey<NavigatorState>? navigatorKey;
  final String? initialRoute;

  @override
  Widget build(BuildContext context, viewModel) {
    return Offstage(
      offstage: viewModel.currentIndex != index,
      child: ExtendedNavigator(
        router: StackedRouter(),
        navigatorKey: navigatorKey,
        initialRoute: initialRoute,
      ),
    );
  }
}

Widget MystackedBottomNavigationBar(model) {
  return BottomNavigationBar(
    currentIndex: model.currentIndex,
    onTap: model.setIndex,
    type: BottomNavigationBarType.fixed,
    backgroundColor: Colors.blue[500],
    selectedItemColor: Colors.white,
    elevation: 2,
    items: const [
      BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          //color: Colors.white,
        ),
        label: 'hello STACKED',
      ),
      BottomNavigationBarItem(
        icon: Icon(
          Icons.radar,
          //color: Colors.white,
        ),
        label: 'hello SUBNavigationBar',
      )
    ],
  );
}
