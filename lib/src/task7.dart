extension NthRoot on num {
  double nthRoot(int rootDegree) {
    double rn = this.toDouble(); // Значение корня последовательным делением
    if (rn == 1) return rn;
    final eps = 0.0000001; // Точность
    double root = this / rootDegree; // Начальное приближение корня
    int count = 0;
    while (_mabs(root - rn) >= eps) {
      rn = this.toDouble();
      for (int i = 1; i < rootDegree; i++) {
        rn = rn / root;
      }
      root = 0.5 * (rn + root);
      if (count++ > 10000) {
        throw NthRootException(
            "It is impossible to calculate the root of a given number");
      }
    }

    return (root * 1000000).floor() / 1000000;
  }
}

class NthRootException implements Exception {
  final String message;
  NthRootException(this.message);
}

double _mabs(double x) {
  return (x < 0) ? -x : x;
}
