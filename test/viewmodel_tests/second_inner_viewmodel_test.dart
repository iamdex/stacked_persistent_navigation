import 'package:flutter_test/flutter_test.dart';
import 'package:stacked_persistent_navigation/app/app.locator.dart';

import '../helpers/test_helpers.dart';

void main() {
  group('SecondInnerViewModel Tests -', () {
    setUp(() => registerServices());
    tearDown(() => locator.reset());
  });
}
