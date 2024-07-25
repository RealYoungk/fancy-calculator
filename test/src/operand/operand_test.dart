import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Operand test', () {
    // given

    // when
    Operand operand1 = Operand("5");
    Operand operand2 = Operand("0.0");
    Operand operand3 = Operand(".1");
    Operand operand4 = Operand("1.");
    Operand operand5 = Operand(".");

    // then
    expect(operand1.number, 5);
    expect(operand2.number, 0);
    expect(operand3.number, 0.1);
    expect(operand4.number, 1.0);
    expect(() => operand5.number, throwsA(isA<ArgumentError>()));
  });
}
