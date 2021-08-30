class Bob {
  String response(String utterance) {
    if (utterance.isSilence)
      return Silence().response();
    else if (utterance.isYellAndQuestion)
      return YellAndQuestion().response();
    else if (utterance.isYell)
      return Yell().response();
    else if (utterance.isQuestion)
      return Question().response();
    else
      return Whatever().response();
  }
}

extension on String {
  bool get isQuestion => this.trim().endsWith("?");
  bool get isYell => this == this.toUpperCase() && this != this.toLowerCase();
  bool get isSilence => trim().isEmpty;
  bool get isYellAndQuestion => this.isYell && this.isQuestion;
}

class Question extends Bob {
  String response([String utterance = ""]) {
    return "Sure.";
  }
}

class Yell extends Bob {
  String response([String utterance = ""]) {
    return "Whoa, chill out!";
  }
}

class YellAndQuestion extends Bob {
  String response([String utterance = ""]) {
    return "Calm down, I know what I'm doing!";
  }
}

class Silence extends Bob {
  String response([String utterance = ""]) {
    return "Fine. Be that way!";
  }
}

class Whatever extends Bob {
  String response([String utterance = ""]) {
    return "Whatever.";
  }
}
