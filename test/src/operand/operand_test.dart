import 'package:fancy_calculator/calculator.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Operand value test', () {
    // Given
    final regExpSource = r'^[0-9]+[.]?[0-9]*$';
    final regExp = RegExp(regExpSource);

    // When
    final operand1 = Operand("0.1");
    final operand2 = Operand("3");
    final operand3 = Operand("3.");
    final operand4 = Operand(".1");

    // Then
    expect(regExp.hasMatch(operand1.value), true);
    expect(regExp.hasMatch(operand2.value), true);
    expect(regExp.hasMatch(operand3.value), true);
    expect(regExp.hasMatch(operand4.value), false);
  });
}
