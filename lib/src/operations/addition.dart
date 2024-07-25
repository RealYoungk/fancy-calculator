import 'package:fancy_calculator/calculator.dart';

class Addition extends Precision implements Operation {
  @override
  num calculate(num a, num b) {
    return removeUnnecessaryDecimal(round(a + b));
  }
}
