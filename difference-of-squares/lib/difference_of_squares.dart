class DifferenceOfSquares {
  int squareOfSum(int n) => square(sum(range(n))); //square((n * (n + 1) ~/ 2));

  int sumOfSquares(int n) =>
      sum(range(n).map(square)); // (n * (n + 1) * (2 * n + 1) ~/ 6);

  int differenceOfSquares(int n) => squareOfSum(n) - sumOfSquares(n);

  int square(int n) => n * n;
  List<int> range(int n) => List<int>.generate(n + 1, (index) => index);
  int sum(Iterable<int> items) => items.reduce((x, y) => x + y);
}
