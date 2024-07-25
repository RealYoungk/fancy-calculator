import 'package:fancy_calculator/calculator.dart';

class OperationFactory {
  Operation createOperation(String operationType) {
    switch (operationType) {
      case '+':
        return Addition();
      case '-':
        return Subtraction();
      case '*':
        return Multiplication();
      case '/':
        return Division();
      default:
        throw Exception('Invalid operation type');
    }
  }
}
