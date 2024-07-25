import 'package:fancy_calculator/calculator.dart';

class FancyCalculator with Addition, Subtraction, Multiplication, Division {
  num calculate(num a, num b, String operation) {
    switch (operation) {
      case '+':
        return add(a, b);
      case '-':
        return subtract(a, b);
      case '*':
        return multiply(a, b);
      case '/':
        return divide(a, b);
      default:
        throw ArgumentError('Invalid operation: $operation');
    }
  }
}
