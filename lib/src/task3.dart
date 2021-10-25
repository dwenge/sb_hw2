extension ParseNumbersExtension on String {
  List<num> getNumbers() {
    var result = <num>[];

    final normalizeStr = replaceAll(RegExp(r',|\.(\D|$)'), '');
    normalizeStr.split(' ').forEach((word) {
      var tmp = num.tryParse(word);
      if (tmp != null) {
        result.add(tmp);
      }
    });

    return result;
  }
}
