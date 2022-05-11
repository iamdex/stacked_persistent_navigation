import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'second_inner_viewmodel.dart';

class SecondInnerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SecondInnerViewModel>.reactive(
      viewModelBuilder: () => SecondInnerViewModel(),
      builder: (context, model, child) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Container(
            padding: const EdgeInsets.all(25.0),
            child: const Center(
              child: Text(
                'Hi! 👋 I\'m Second Inner View',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
