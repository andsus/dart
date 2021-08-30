class PascalsTriangle {
  var prevRow = <int>[];
  int _getElement(int index) => prevRow[index - 1] + prevRow[index];

  List<int> _generateInnerRows(int row) {
    var innerRow = List.generate(row + 1,
        (index) => (index == 0 || index == row) ? 1 : _getElement(index));
    prevRow = [...innerRow];
    return innerRow;
  }

  List<List<int>> rows(int numberOfRows) =>
      List.generate(numberOfRows, (row) => _generateInnerRows(row));
}
