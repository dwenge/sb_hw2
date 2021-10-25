class DelimetersCalculator {
  static int gcd(int a, int b) {
    if (a <= 0 || b <= 0) throw ArgumentError('Enter any natural number');

    if (a < b) {
      final tmp = a;
      a = b;
      b = tmp;
    }

    return _gcd(a, b);
  }

  static int _gcd(int a, int b) {
    if (b != 0) {
      return _gcd(b, a % b);
    } else {
      return a;
    }
  }

  static int lcm(int a, int b) {
    return (a / gcd(a, b) * b).toInt();
  }

  static List<int> getSimpleMultipliers(int naturalNumber) {
    if (naturalNumber <= 1) throw ArgumentError('Enter any natural number > 1');

    final r = <int>[];
    int multiplier = 2;

    while (multiplier * multiplier <= naturalNumber) {
      if (naturalNumber % multiplier == 0) {
        r.add(multiplier);
        naturalNumber ~/= multiplier;
      } else {
        multiplier++;
      }
    }

    if (naturalNumber > 1) {
      r.add(naturalNumber);
    }

    return r;
  }
}
