mixin Multiply {
  num multiply(
    num a,
    num b, {
    int precision = 8,
  }) =>
      num.parse((a * b).toStringAsFixed(precision));
}
