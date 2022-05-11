import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';

import 'first_inner_viewmodel.dart';

class FirstInnerView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FirstInnerViewModel>.reactive(
      viewModelBuilder: () => FirstInnerViewModel(),
      builder: (context, model, child) => WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
          backgroundColor: Theme.of(context).backgroundColor,
          body: Container(
            padding: const EdgeInsets.all(25.0),
            child: const Center(
              child: Text(
                'Hi! 👋 I\'m First Inner View',
                style: TextStyle(fontSize: 32),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
