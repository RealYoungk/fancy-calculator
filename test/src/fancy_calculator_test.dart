import 'package:fancy_calculator/src/fancy_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('FancyCalculator test', () {
    // given
    final fancyCalculator = FancyCalculator();

    test('FancyCalculator int test', () {
      // given

      // when
      final result1 = fancyCalculator.add(1, 2);
      final result2 = fancyCalculator.subtract(1, 2);
      final result3 = fancyCalculator.multiply(1, 2);
      final result4 = fancyCalculator.divide(1, 2);

      // then
      expect(result1, 3);
      expect(result2, -1);
      expect(result3, 2);
      expect(result4, 0.5);
    });

    test('FancyCalculator double test', () {
      // given

      // when
      final result1 = fancyCalculator.add(1.1, 2.2);
      final result2 = fancyCalculator.subtract(1.1, 2.2);
      final result3 = fancyCalculator.multiply(1.1, 2.2);
      final result4 = fancyCalculator.divide(1.1, 2.2);

      // then
      expect(result1, 3.3);
      expect(result2, -1.1);
      expect(result3, 2.42);
      expect(result4, 0.5);
    });

    test('FancyCalculator minus test', () {
      // given

      // when
      final result1 = fancyCalculator.add(-1, 2);
      final result2 = fancyCalculator.subtract(-1, 2);
      final result3 = fancyCalculator.multiply(-1, 2);
      final result4 = fancyCalculator.divide(-1, 2);

      // then
      expect(result1, 1);
      expect(result2, -3);
      expect(result3, -2);
      expect(result4, -0.5);
    });

    test('FancyCalculator zero division test', () {
      // given

      // when
      final result = fancyCalculator.divide(1, 0);

      // then
      expect(result, double.infinity);
    });

    test('FancyCalculator multiplication test', () {
      // given

      // when
      final result = fancyCalculator.multiply(1, 0);
      final result2 = fancyCalculator.multiply(0, 1.2);
      final result3 = fancyCalculator.multiply(-1, 0.8327947);
      final result4 = fancyCalculator.multiply(-1, -1.32452345);

      // then
      expect(result, 0);
      expect(result2, 0);
      expect(result3, -0.8327947);
      expect(result4, 1.32452345);
    });
  });
}
