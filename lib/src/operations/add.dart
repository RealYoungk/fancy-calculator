mixin class Add {
  num add(
    num a,
    num b, {
    int precision = 8,
  }) =>
      num.parse((a + b).toStringAsFixed(precision));
}
