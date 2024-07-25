import 'package:fancy_calculator/src/operations/operations.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main () {
  test('Subtraction value test', () {
    // Given
    final subtraction = Subtraction();

    // When

    // Then
    expect(subtraction.value, '-');
  });
}