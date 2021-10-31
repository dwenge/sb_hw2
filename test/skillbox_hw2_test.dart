import 'package:skillbox_hw2/skillbox_hw2.dart';
import 'package:test/test.dart';

import 'dart:math' as math;

void main() {
  group('Task 1', () {
    setUp(() {});

    test('gcd', () {
      expect(DelimetersCalculator.gcd(18, 48), 6);
      expect(() => DelimetersCalculator.gcd(-1, 34), throwsArgumentError);
    });

    test('lcm', () {
      expect(DelimetersCalculator.lcm(18, 48), 144);
      expect(() => DelimetersCalculator.lcm(-18, 48), throwsArgumentError);
    });

    test('simple multipliers', () {
      expect(
        DelimetersCalculator.getSimpleMultipliers(48),
        <int>[2, 2, 2, 2, 3],
      );
      expect(
        () => DelimetersCalculator.getSimpleMultipliers(-18),
        throwsArgumentError,
      );
    });
  });

  group('Task 2', () {
    test('decimal to binary', () {
      expect(NumberSystemConverter.toBinary(17), '10001');
    });
    test('binary to decimal', () {
      expect(NumberSystemConverter.toDecimal('10001'), 17);
    });
  });

  group('Task 3', () {
    test('from string to list num', () {
      expect(
        'Реализуйте 30 метод 16, -18 который 0.5 принимает 85.'.getNumbers(),
        <num>[30, 16, -18, 0.5, 85],
      );

      expect(
        'Реализуйте метод, который принимает.'.getNumbers(),
        <num>[],
      );
    });
  });

  group('Task 4', () {
    test('couting words', () {
      expect(
        WordCollection(<String>['one', 'two', 'three', 'two']).getCountWords(),
        <String, int>{
          'one': 1,
          'two': 2,
          'three': 1,
        },
      );

      expect(
        WordCollection(<String>[]).getCountWords(),
        <String, int>{},
      );
    });
  });

  group('Task 5', () {
    test('Number Parser', () {
      expect(
        NumberParser([
          'one, two, cat, three, four, dog, zero',
          'five, beer, six, both',
          'seven, every, eight, nine, next',
        ]).parse(),
        [
          [1, 2, 3, 4, 0],
          [5, 6],
          [7, 8, 9],
        ],
      );

      expect(
        NumberParser([
          'dog, cat',
          'beer, both',
        ]).parse(),
        [
          <int>{},
          <int>{},
        ],
      );

      expect(
        NumberParser([]).parse(),
        [],
      );
    });
  });

  group('Task 6', () {
    test('distance', () {
      expect(Point.zero().distanceTo(Point(0, 0, 5)), 5);
    });

    test('area triangle', () {
      expect(
        Point.zero().areaTriangle(
          Point(0, 5, 0),
          Point(5, 5, 0),
        ),
        12.5,
      );
    });
  });

  group('Task 7', () {
    test('sqrt', () {
      expect(36.nthRoot(2), math.sqrt(36));
    });
    test('root degree = 3', () {
      expect(27.0.nthRoot(3), math.pow(27, 1 / 3));
    });
    test('one', () {
      expect(1.nthRoot(5), 1);
    });
    test('err', () {
      expect(() => 0.1.nthRoot(5), throwsA((e) => e is NthRootException));
    });
  });
}
