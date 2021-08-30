class Leap {
  bool leapYear(int year) {
    bool isDivBy(int n) => year % n == 0;

    return (isDivBy(4) && !isDivBy(100)) || isDivBy(400);
  }
}
