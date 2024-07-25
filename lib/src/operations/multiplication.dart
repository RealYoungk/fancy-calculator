import 'package:fancy_calculator/calculator.dart';

class Multiplication extends Precision implements Operation {
  @override
  num calculate(num a, num b) {
    return removeUnnecessaryDecimal(round(a * b));
  }
}
