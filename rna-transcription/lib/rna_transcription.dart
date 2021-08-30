class RnaTranscription {
  final Map<String, String> _transcribe = {
    "G": "C",
    "C": "G",
    "T": "A",
    "A": "U",
  };

  String toRna(String strand) =>
      strand.split('').map((e) => _transcribe[e]).join();
}
