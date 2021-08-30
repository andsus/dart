class WordCount {
  Map<String, int> countWords(String words) {
    final wordDict = Map<String, int>();
    final splitWords = RegExp(r"\b[\w']+\b").allMatches(words.toLowerCase());

    splitWords.forEach(
        (w) => wordDict.update(w.group(0), (i) => i + 1, ifAbsent: () => 1));
    return wordDict;
  }
}
