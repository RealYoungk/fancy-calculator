library;

import 'dart:io';

import 'package:fancy_calculator/calculator.dart';

export 'src/fancy_calculator.dart';
export 'src/operations/operations.dart';
export 'src/operand/operand.dart';

void main() {
  final calculator = FancyCalculator();

  while (true) {
    stdout.write('Enter first number: ');
    final operand = stdin.readLineSync();
    if (operand == null) continue;
    final a = Operand(operand);

    stdout.write('Enter operation (+, -, *, /): ');
    final operationString = stdin.readLineSync();
    Operation operation;
    if (operationString == null) continue;
    switch (operationString) {
      case '+':
        operation = Addition();
        break;
      case '-':
        operation = Subtraction();
        break;
      case '*':
        operation = Multiplication();
        break;
      case '/':
        operation = Division();
        break;
      default:
        print('Invalid operation');
        continue;
    }

    stdout.write('Enter second number: ');
    final operand2 = stdin.readLineSync();
    if (operand2 == null) continue;
    final b = Operand(operand2);

    calculator.input(a, operation, b);

    calculator.output();
  }
}
