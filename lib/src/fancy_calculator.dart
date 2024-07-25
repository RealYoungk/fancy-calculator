import 'package:fancy_calculator/calculator.dart';

class FancyCalculator with Add, Subtract, Multiply, Divide {
  num calculate(Operand a, Operand b, Operation operation) {
    switch (operation) {
      case Addition():
        return add(a.number, b.number);
      case Subtraction():
        return subtract(a.number, b.number);
      case Multiplication():
        return multiply(a.number, b.number);
      case Division():
        return divide(a.number, b.number);
      default:
        throw ArgumentError('Invalid operation: $operation');
    }
  }
}
