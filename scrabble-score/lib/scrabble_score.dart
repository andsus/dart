int score(String word) {
  final SCORES = {
    'AEIOULNRST': 1,
    'DG': 2,
    'BCMP': 3,
    'FHVWY': 4,
    'K': 5,
    'JX': 8,
    'QZ': 10,
  };

  return word
    .toUpperCase()
    .split('') 
    .map((letter) => SCORES.entries
      .firstWhere((entry) => entry.key.contains(letter))
      .value)
    .fold(0, (previousValue, element) => previousValue + element);
}