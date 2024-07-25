import 'package:fancy_calculator/calculator.dart';
import 'package:fancy_calculator/src/operations/operation_factory.dart';
import 'package:test/test.dart';

void main() {
  group('Operation Factory Test', () {
    final OperationFactory operationFactory = OperationFactory();

    test('Addition test', () {
      // given
      final operation = operationFactory.createOperation('+');

      // then
      expect(operation, isA<Addition>());
    });

    test('Subtraction test', () {
      // given
      final operation = operationFactory.createOperation('-');

      // then
      expect(operation, isA<Subtraction>());
    });

    test('Multiplication test', () {
      // given
      final operation = operationFactory.createOperation('*');

      // then
      expect(operation, isA<Multiplication>());
    });

    test('Division test', () {
      // given
      final operation = operationFactory.createOperation('/');

      // then
      expect(operation, isA<Division>());
    });
  });
}
