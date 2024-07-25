import 'package:fancy_calculator/calculator.dart';

abstract interface class AIFancyCalculator {
  String run(Operand left, covariant Operation operation, Operand right);
}

class FancyCalculator implements AIFancyCalculator {
  @override
  String run(Operand left, covariant Operation operation, Operand right) {
    // TODO: implement run
    throw UnimplementedError();
  }
}
