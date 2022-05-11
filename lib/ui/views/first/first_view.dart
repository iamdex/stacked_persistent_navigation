import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_persistent_navigation/ui/common/ui_helpers.dart';

import 'first_viewmodel.dart';

class FirstView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FirstViewModel>.reactive(
      viewModelBuilder: () => FirstViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalSpaceLarge,
                const Text(
                  'Hello, STACKED NAVIGATION!!',
                  style: TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w900,
                  ),
                ),
                verticalSpaceLarge,
                ElevatedButton(
                  onPressed: model.goToFirstInnerView,
                  child: const Text('Go to First Inner View'),
                ),
                ElevatedButton(
                  onPressed: model.goToSecondInnerView,
                  child: const Text('Go to Second Inner View'),
                ),
                verticalSpaceLarge
              ],
            ),
          ),
        ),
      ),
    );
  }
}
