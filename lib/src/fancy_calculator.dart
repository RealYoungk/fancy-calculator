import 'package:fancy_calculator/calculator.dart';

class FancyCalculator {
  String result = '0';

  String input(
    Operand operand1,
    covariant Operation operation,
    Operand operand2,
  ) {
    return result =
        operation.calculate(operand1.number, operand2.number).toString();
  }

  void output() {
    print(result);
  }
}
