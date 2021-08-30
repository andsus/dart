const GIGA_SECONDS = 1000000000;

DateTime add(final DateTime birthDate) =>
    birthDate.add(Duration(seconds: GIGA_SECONDS));
