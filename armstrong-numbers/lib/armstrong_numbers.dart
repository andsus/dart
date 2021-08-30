import "dart:math";

class ArmstrongNumbers {
  bool isArmstrongNumber(int number) {
    var stringNum = number.toString();
    return number ==
        stringNum
            .split('')
            .map((x) => pow(int.parse(x), stringNum.length))
            .reduce((a, b) => a + b);
  }
}
