class SpaceAge {
  final Map<String, double> _astroRotation = {
    "Earth": 1.0,
    "Mercury": 0.2408467,
    "Venus": 0.61519726,
    "Mars": 1.8808158,
    "Jupiter": 11.862615,
    "Saturn": 29.447498,
    "Uranus": 84.016846,
    "Neptune": 164.79132
  };

  static const _secondsInEarthYear = 31557600; //60 * 60 * 24 * 365.25

  // double age({String planet, int seconds}) =>
  //     (seconds / _secondsInEarthYear / _astroRotation[planet]).toFixed(2);

  double age({String planet, int seconds}) => Planet.from(planet).age(seconds);
}

extension DoubleLibs on double {
  double toFixed(int fraction) => double.parse(toStringAsFixed(fraction));
}

abstract class Planet {
  static const _secondsInEarthYear = 31557600; //60 * 60 * 24 * 365.25

  double _rotationPeriod;

  double age(int seconds) =>
      (seconds / _secondsInEarthYear / _rotationPeriod).toFixed(2);

  static Planet from(String planet) {
    switch (planet) {
      case "Mercury":
        return Mercury();
      case "Venus":
        return Venus();
      case "Mars":
        return Mars();
      case "Jupiter":
        return Jupiter();
      case "Uranus":
        return Uranus();
      case "Saturn":
        return Saturn();
      case "Neptune":
        return Neptune();
      default:
        return Earth();
    }
  }
}

class Neptune extends Planet {
  @override
  double _rotationPeriod = 164.79132;
}

class Saturn extends Planet {
  @override
  double _rotationPeriod = 29.447498;
}

class Uranus extends Planet {
  @override
  double _rotationPeriod = 84.016846;
}

class Jupiter extends Planet {
  @override
  double _rotationPeriod = 11.862615;
}

class Mars extends Planet {
  @override
  double _rotationPeriod = 1.8808158;
}

class Venus extends Planet {
  @override
  double _rotationPeriod = 0.61519726;
}

class Earth extends Planet {
  @override
  double _rotationPeriod = 1;
}

class Mercury extends Planet {
  @override
  double _rotationPeriod = 0.2408467;
}
