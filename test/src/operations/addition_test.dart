import 'package:fancy_calculator/src/operations/addition.dart';
import 'package:test/test.dart';

void main() {
  test('Addition value test', () {
    // Given
    final addition = Addition();

    // When

    // Then
    expect(addition.value, '+');
  });
}
