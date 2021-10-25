class NumberParser {
  // static const _strToInt
  final _strToInt = {
    'zero': 0,
    'one': 1,
    'two': 2,
    'three': 3,
    'four': 4,
    'five': 5,
    'six': 6,
    'seven': 7,
    'eight': 8,
    'nine': 9,
  };

  List<String> lines;

  NumberParser(this.lines);

  List<Set<int>?> parse() {
    List<Set<int>> result = [];
    for (var line in lines) {
      result.add(_parseLine(line));
    }
    return result;
  }

  Set<int> _parseLine(String line) {
    Set<int> result = {};
    var splitLine = line.split(',');
    for (var i = 0; i < splitLine.length; i++) {
      var number = _strToInt[splitLine[i].trim()];
      if (number != null) {
        result.add(number);
      }
    }
    return result;
  }
}
