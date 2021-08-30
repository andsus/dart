class Hamming {
  int distance(String strandA, String strandB) {
    if ((strandA.isEmpty ^ strandB.isEmpty)) {
      throw ArgumentError('no strand must be empty');
    }
    if (strandA.length != strandB.length) {
      throw ArgumentError('left and right strands must be of equal length');
    }

    return strandA
        .split('')
        .asMap()
        .entries
        .where((element) => element.value != strandB[element.key])
        .length;
    // return zip([strandA.split(''), strandB.split('')])
    //     .fold(0, (acc, el) => el[0] != el[1] ? acc + 1 : acc);
  }
}
