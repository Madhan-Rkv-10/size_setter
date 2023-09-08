// import 'package:flutter_test/flutter_test.dart';

import 'package:mockito/mockito.dart';
import 'package:sizers/sizers.dart';

// void main() {
//   test('adds one to input values', () {
//     final calculator = Calculator();
//     expect(calculator.addOne(2), 3);
//     expect(calculator.addOne(-7), -6);
//     expect(calculator.addOne(0), 1);
//   });
// }
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
// import 'package:your_app/context_utils.dart'; // Import the file containing extensions

void main() {
  test('screenHeight and screenWidth should return non-null values', () {
    final BuildContext context =
        MockBuildContext(); // You may need to create a mock context
    final double screenHeight = context.screenHeight;
    final double screenWidth = context.screenWidth;

    expect(screenHeight, isNotNull);
    expect(screenWidth, isNotNull);
  });

  test('h, w, ph, and pw should return non-null values', () {
    final double numValue = 10.0;
    final BuildContext context =
        MockBuildContext(); // You may need to create a mock context
    final double h = numValue.h;
    final double w = numValue.w;
    final double ph = numValue.ph;
    final double pw = numValue.pw;

    expect(h, isNotNull);
    expect(w, isNotNull);
    expect(ph, isNotNull);
    expect(pw, isNotNull);
  });

  // Add more test cases for other extensions as needed
}

class MockBuildContext extends Mock implements BuildContext {
  @override
  MediaQueryData getMediaQuery() {
    // Return a mock MediaQueryData object.
    return MockMediaQueryData(Size(77, 88));
  }
}
