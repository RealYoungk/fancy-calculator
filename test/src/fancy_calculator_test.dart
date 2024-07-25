import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Fancy Calculator test', () {
    final calculator = FancyCalculator();

    test('initial result test', () {
      // then
      expect(calculator.result, "0");
    });

    group('Operand test', () {
      test('int Addition test', () {
        // given
        final a = Operand("6");
        final b = Operand("2");
        final addition = Addition();

        // when
        final result = calculator.input(a, addition, b);

        // then
        expect(result, "8");
      });

      test('double Addition test', () {
        // given
        final a = Operand("6.0");
        final b = Operand("2.0");
        final addition = Addition();

        // when
        final result = calculator.input(a, addition, b);

        // then
        expect(result, "8");
      });

      test('minus Addition test', () {
        // given
        final a = Operand("-6");
        final b = Operand("2");
        final addition = Addition();

        // when
        final result = calculator.input(a, addition, b);

        // then
        expect(result, "-4");
      });
    });

    group('Subtraction test', () {
      test('int Subtraction test', () {
        // given
        final a = Operand("6");
        final b = Operand("2");
        final subtraction = Subtraction();

        // when
        final result = calculator.input(a, subtraction, b);

        // then
        expect(result, "4");
      });

      test('double Subtraction test', () {
        // given
        final a = Operand("6.0");
        final b = Operand("2.0");
        final subtraction = Subtraction();

        // when
        final result = calculator.input(a, subtraction, b);

        // then
        expect(result, "4");
      });

      test('minus Subtraction test', () {
        // given
        final a = Operand("-6");
        final b = Operand("2");
        final subtraction = Subtraction();

        // when
        final result = calculator.input(a, subtraction, b);

        // then
        expect(result, "-8");
      });
    });

    group('Division test', (){
      test('int Division test', () {
        // given
        final a = Operand("6");
        final b = Operand("2");
        final division = Division();

        // when
        final result = calculator.input(a, division, b);

        // then
        expect(result, "3");
      });

      test('double Division test', () {
        // given
        final a = Operand("6.0");
        final b = Operand("2.0");
        final division = Division();

        // when
        final result = calculator.input(a, division, b);

        // then
        expect(result, "3");
      });

      test('minus Division test', () {
        // given
        final a = Operand("-6");
        final b = Operand("2");
        final division = Division();

        // when
        final result = calculator.input(a, division, b);

        // then
        expect(result, "-3");
      });

      test('Division by zero test', () {
        // given
        final a = Operand("6");
        final b = Operand("0");
        final division = Division();

        // when
        final result = calculator.input(a, division, b);

        // then
        expect(result, "Infinity");
      });
    });

    group('Multiplication test', (){
      test('int Multiplication test', () {
        // given
        final a = Operand("6");
        final b = Operand("2");
        final multiplication = Multiplication();

        // when
        final result = calculator.input(a, multiplication, b);

        // then
        expect(result, "12");
      });

      test('double Multiplication test', () {
        // given
        final a = Operand("6.0");
        final b = Operand("2.0");
        final multiplication = Multiplication();

        // when
        final result = calculator.input(a, multiplication, b);

        // then
        expect(result, "12");
      });

      test('minus Multiplication test', () {
        // given
        final a = Operand("-6");
        final b = Operand("2");
        final multiplication = Multiplication();

        // when
        final result = calculator.input(a, multiplication, b);

        // then
        expect(result, "-12");
      });

      test('zero Multiplication test', () {
        // given
        final a = Operand("6");
        final b = Operand("0");
        final multiplication = Multiplication();

        // when
        final result = calculator.input(a, multiplication, b);

        // then
        expect(result, "0");
      });
    });
  });
}
