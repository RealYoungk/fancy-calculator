import 'package:fancy_calculator/src/operations/division.dart';
import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  test(
    'Division value test',
    () {
      // Given
      final division = Division();

      // When

      // Then
      expect(division.value, '/');
    },
  );
}
