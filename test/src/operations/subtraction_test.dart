import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Subtraction Test', (){
    final Subtraction subtraction = Subtraction();

    test('int Subtraction test', (){
      // given
      final a = 6;
      final b = 2;

      // when
      final result = subtraction.calculate(a, b);

      // then
      expect(result, 4);
    });

    test('double Subtraction test', (){
      // given
      final a = 6.6;
      final b = 2.2;

      // when
      final result = subtraction.calculate(a, b);

      // then
      expect(result, 4.4);
    });

    test('minus Subtraction test', (){
      // given
      final a = -6;
      final b = 2;

      // when
      final result = subtraction.calculate(a, b);

      // then
      expect(result, -8);
    });

    test('zero Subtraction test', (){
      // given
      final a = 0;
      final b = 2;

      // when
      final result = subtraction.calculate(a, b);

      // then
      expect(result, -2);
    });

    test('minus double Subtraction test', (){
      // given
      final a = -6.6;
      final b = 2.2;

      // when
      final result = subtraction.calculate(a, b);

      // then
      expect(result, -8.8);
    });
  });
}