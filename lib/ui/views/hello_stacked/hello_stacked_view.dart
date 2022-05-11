import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_persistent_navigation/ui/common/app_colors.dart';
import 'package:stacked_persistent_navigation/ui/common/ui_helpers.dart';

import 'hello_stacked_viewmodel.dart';

class HelloStackedView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<HelloStackedViewModel>.reactive(
      viewModelBuilder: () => HelloStackedViewModel(),
      builder: (context, model, child) => Scaffold(
        backgroundColor: Theme.of(context).backgroundColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 25.0),
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                verticalSpaceLarge,
                Column(
                  children: [
                    const Text(
                      'Hello, STACKED!',
                      style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    verticalSpaceMedium,
                    MaterialButton(
                      color: Colors.black,
                      onPressed: model.incrementCounter,
                      child: Text(
                        model.counterLabel,
                        style: const TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    MaterialButton(
                      color: kcDarkGreyColor,
                      child: const Text(
                        'Show Dialog',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: model.showDialog,
                    ),
                    MaterialButton(
                      color: kcDarkGreyColor,
                      child: const Text(
                        'Show Bottom Sheet',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: model.showBottomSheet,
                    ),
                  ],
                ),
                verticalSpaceMedium,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
