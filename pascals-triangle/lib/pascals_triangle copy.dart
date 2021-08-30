/*
class PascalsTriangle {
  var prevRow = <int>[];
  int getElement(int index) => prevRow[index - 1] + prevRow[index];

  List<int> generateInnerRows(int row) {
    var innerRow = List.generate(row + 1,
        (index) => (index == 0 || index == row) ? 1 : getElement(index));
    prevRow = [...innerRow];
    return innerRow;
  }

  List<List<int>> rows(int numberOfRows) =>
      List.generate(numberOfRows, (row) => generateInnerRows(row));
}
*/

class PascalsTriangle {
  int _sumTwoFrom(List<int> lst, int idx) =>
      lst.skip(idx).take(2).reduce((p, c) => p + c);

  List<int> _newRow(List<int> prev) =>
      [1] + List.generate(prev.length, (i) => _sumTwoFrom(prev, i));

  // yield returns stream of List<int>
  Iterable<List<int>> _genTriangle([List<int> prevR = const []]) sync* {
    List<int> newR = _newRow(prevR);
    yield newR;
    yield* _genTriangle(newR);
  }

  List<List<int>> rows(int n) => _genTriangle().take(n).toList();
}
