mixin Subtraction {
  num subtract(
    num a,
    num b, {
    int precision = 8,
  }) =>
      num.parse((a - b).toStringAsFixed(precision));
}
