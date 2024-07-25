import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Multiplication Test', () {
    final Multiplication multiplication = Multiplication();

    test('int Multiplication test', () {
      // given
      final a = 6;
      final b = 2;

      // when
      final result = multiplication.calculate(a, b);

      // then
      expect(result, 12);
    });

    test('double Multiplication test', () {
      // given
      final a = 6.6;
      final b = 2.2;

      // when
      final result = multiplication.calculate(a, b);

      // then
      expect(result, 14.52);
    });

    test('minus Multiplication test', () {
      // given
      final a = -6;
      final b = 2;

      // when
      final result = multiplication.calculate(a, b);

      // then
      expect(result, -12);
    });

    test('zero Multiplication test', () {
      // given
      final a = 0;
      final b = 2;

      // when
      final result = multiplication.calculate(a, b);

      // then
      expect(result, 0);
    });

    test('minus double Multiplication test', () {
      // given
      final a = -6.6;
      final b = 2.2;

      // when
      final result = multiplication.calculate(a, b);

      // then
      expect(result, -14.52);
    });
  });
}