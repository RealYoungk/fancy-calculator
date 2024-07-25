import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

class PrecisionImpl extends Precision {}

void main() {
  group('Precision Test', () {
    final Precision precision = PrecisionImpl();

    test('round test', () {
      // given
      final seven = 4.44444440;
      final eight = 4.44444444;
      final nine = 4.444444444;

      // when
      final sevenResult = precision.round(seven);
      final eightResult = precision.round(eight);
      final nineResult = precision.round(nine);

      // then
      expect(sevenResult, 4.4444444);
      expect(eightResult, 4.44444444);
      expect(nineResult, 4.44444444);
    });

    test('removeUnnecessaryDecimal test', () {
      // given
      final a = 4.0;
      final b = 4.44444000;
      final c = 0.0;
      final d = -4.44444000;

      // when
      final aResult = precision.removeUnnecessaryDecimal(a);
      final bResult = precision.removeUnnecessaryDecimal(b);
      final cResult = precision.removeUnnecessaryDecimal(c);
      final dResult = precision.removeUnnecessaryDecimal(d);

      // then
      expect(aResult, 4);
      expect(bResult, 4.44444);
      expect(cResult, 0);
      expect(dResult, -4.44444);
    });
  });
}
