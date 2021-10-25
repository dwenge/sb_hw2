import 'dart:math';

class Point {
  final double x, y, z;

  Point(this.x, this.y, this.z);

  factory Point.zero() {
    return Point(0, 0, 0);
  }

  factory Point.one() {
    return Point(1, 1, 1);
  }

  factory Point.random() {
    var rand = Random();
    return Point(
      rand.nextDouble() * 10,
      rand.nextDouble() * 10,
      rand.nextDouble() * 10,
    );
  }

  double areaTriangle(Point another1, Point another2) {
    var a = distanceTo(another1);
    var b = distanceTo(another2);
    var c = another1.distanceTo(another2);

    var p = (a + b + c) / 2;
    return sqrt(p * (p - a) * (p - b) * (p - c));
  }

  double distanceTo(Point another) {
    var dx = x - another.x;
    var dy = y - another.y;
    var dz = z - another.z;
    return sqrt(dx * dx + dy * dy + dz * dz);
  }
}
