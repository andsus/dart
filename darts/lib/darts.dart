import 'dart:math';

class Darts {
  int score(double x, double y) {
    final double circle = sqrt(pow(x, 2) + pow(y, 2));

    // landed outside
    if (circle > 10) return 0;
    // landed in outer circle
    if (circle > 5) return 1;
    // landed in middle circle
    if (circle > 1) return 5;
    // landed in innner circle
    return 10;
  }
}
