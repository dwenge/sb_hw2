class NumberParser {
  List<String> lines;

  NumberParser(this.lines);

  List<Set<int>> parse() {
    List<Set<int>> result = [];
    for (var line in lines) {
      result.add(_parseLine(line));
    }
    return result;
  }

  Set<int> _parseLine(String line) {}

  int? _getInt(String word) {}
}
