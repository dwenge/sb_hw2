class WordCollection {
  List<String> words;

  WordCollection(this.words);

  Map<String, int> getCountWords() {
    var result = <String, int>{};

    for (var word in words) {
      var count = result[word];

      count = count != null ? count + 1 : 1;

      result[word] = count;
    }

    return result;
  }
}
