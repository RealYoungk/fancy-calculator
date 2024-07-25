import 'package:fancy_calculator/calculator.dart';
import 'package:fancy_calculator/src/fancy_calculator.dart';
import 'package:mocktail/mocktail.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Fancy calculator test', () {
    test('Fancy calculator Addition test', () {
      // Given
      final fancyCalculator = FancyCalculator();
      final leftOperand = Operand("1.35");
      final rightOperand = Operand("0.658888");
      final operation = Addition();

      // When

      // Then
      when(() => fancyCalculator.run(leftOperand, operation, rightOperand))
          .thenReturn("2.008888");
    });
  });
}
