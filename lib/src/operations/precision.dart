abstract class Precision {
  final int _value = 8;

  num round(num number) {
    return num.parse(number.toStringAsFixed(_value));
  }

  num removeUnnecessaryDecimal(num number) {
    String numberString = number.toString();
    int decimalIndex = numberString.indexOf('.');

    if (!_hasDecimal(number)) return number;

    String naturalPart = numberString.substring(0, decimalIndex);
    String decimalPart = _removeTrailingZero(numberString, decimalIndex);

    if (decimalPart.isEmpty) return num.parse(naturalPart);

    return num.parse('$naturalPart.$decimalPart');
  }

  String _removeTrailingZero(String numberString, int decimalIndex) {
    String decimalPart = numberString.substring(decimalIndex + 1);
    decimalPart = decimalPart.replaceAll(RegExp(r'0+$'), '');

    return decimalPart;
  }

  bool _hasDecimal(num number) {
    return number.toString().contains('.');
  }
}
