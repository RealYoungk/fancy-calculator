import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Addition Test', () {
    final Addition addition = Addition();

    test('int Addition test', () {
      // given
      final a = 1;
      final b = 2;

      // when
      final result = addition.calculate(a, b);

      // then
      expect(result, 3);
    });

    test('double Addition test', () {
      // given
      final a = 1.1;
      final b = 2.2;

      // when
      final result = addition.calculate(a, b);

      // then
      expect(result, 3.3);
    });

    test('minus Addition test', () {
      // given
      final a = -1;
      final b = 2;

      // when
      final result = addition.calculate(a, b);

      // then
      expect(result, 1);
    });

    test('zero Addition test', () {
      // given
      final a = 1;
      final b = 0;

      // when
      final result = addition.calculate(a, b);

      // then
      expect(result, 1);
    });

    test('minus double Addition test', () {
      // given
      final a = -1.1;
      final b = 2.2;

      // when
      final result = addition.calculate(a, b);

      // then
      expect(result, 1.1);
    });
  });
}
