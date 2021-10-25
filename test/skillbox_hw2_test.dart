import 'package:skillbox_hw2/skillbox_hw2.dart';
import 'package:test/test.dart';

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
}
