import 'dart:collection';

class Raindrops {
  final LinkedHashMap<int, String> _rules = {
    '3': "Pling",
    '5': "Plang",
    '7': "Plong",
  };
  String convert(int rains) {
    final String _result = _rules.entries.fold('',
        (acc, note) => (rains % note.key == 0) ? "${acc}${note.value}" : acc);

    return _result.isEmpty ? rains.toString() : _result;
  }
}
