class Anagram {
  String toLetters(String word) =>
      (word.toLowerCase().split('')..sort()).join();
  List<String> findAnagrams(String word, List<String> anagrams) {
    String letters = toLetters(word);

    return anagrams
        .where((anagram) => (anagram.toLowerCase() != word.toLowerCase() &&
            toLetters(anagram.toLowerCase()) == letters))
        .toList();
  }
}
