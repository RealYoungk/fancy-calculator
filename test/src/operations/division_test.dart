import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Division Test', () {
    final Division division = Division();

    test('int Division test', () {
      // given
      final a = 6;
      final b = 2;

      // when
      final result = division.calculate(a, b);

      // then
      expect(result, 3);
    });

    test('double Division test', () {
      // given
      final a = 6.6;
      final b = 2.2;

      // when
      final result = division.calculate(a, b);

      // then
      expect(result, 3);
    });

    test('minus Division test', () {
      // given
      final a = -6;
      final b = 2;

      // when
      final result = division.calculate(a, b);

      // then
      expect(result, -3);
    });

    test('zero Division test', () {
      // given
      final a = 0;
      final b = 2;

      // when
      final result = division.calculate(a, b);

      // then
      expect(result, 0);
    });

    test('minus double Division test', () {
      // given
      final a = -6.6;
      final b = 2.2;

      // when
      final result = division.calculate(a, b);

      // then
      expect(result, -3);
    });

    test('zero Division test', () {
      // given
      final a = 1;
      final b = 0;

      // when
      final result = division.calculate(a, b);

      // then
      expect(result, double.infinity);
    });
  });
}
