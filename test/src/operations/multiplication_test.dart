import 'package:fancy_calculator/src/operations/multiplication.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test('Multiplication value test', () {
    // Given
    final multiplication = Multiplication();

    // When

    // Then
    expect(multiplication.value, '*');
  });
}
