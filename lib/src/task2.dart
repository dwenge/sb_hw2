class NumberSystemConverter {
  static String toBinary(int decimal) {
    return decimal.toRadixString(2);
  }

  static int toDecimal(String binary) {
    return int.parse(binary, radix: 2);
  }
}
