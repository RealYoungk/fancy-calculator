import 'package:fancy_calculator/calculator.dart';
import 'package:test/test.dart';

void main() {
  test('Operand test', () {
    // given
    final regExpSource = r'[0-9]+[.]?[0-9]*';
    final regExp = RegExp(regExpSource);

    // when
    Operand operand1 = Operand("5");
    Operand operand2 = Operand("0.0");
    Operand operand3 = Operand(".1");
    Operand operand4 = Operand("1.");
    Operand operand5 = Operand(".");

    // then
    expect(regExp.hasMatch(operand1.value), true);
    expect(regExp.hasMatch(operand2.value), true);
    expect(regExp.hasMatch(operand3.value), true);
    expect(regExp.hasMatch(operand4.value), true);
    expect(regExp.hasMatch(operand5.value), false);
  });
}
