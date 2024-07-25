class Operand {
  final String _value;

  Operand(this._value);

  num get number {
    bool isValidOperand = RegExp(r'[0-9]+[.]?[0-9]*').hasMatch(_value);
    if (!isValidOperand) throw ArgumentError('Invalid operand: $_value');

    if (_value.endsWith('.')) {
      return num.parse(_value.substring(0, _value.length - 1));
    }

    if (_value.startsWith('.')) {
      return num.parse('0$_value');
    }

    num result = num.parse(_value);

    return result;
  }
}
