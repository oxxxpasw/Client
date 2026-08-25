import 'dart:math' as math;

enum RoundBound {
  up,
  down,
  closest,
}

extension RoundDouble on double {
  double asFixed(
    int fractionDigits, [
    RoundBound roundBound = RoundBound.down,
  ]) =>
      switch (roundBound) {
        RoundBound.up => (this * math.pow(10, fractionDigits)).ceil() /
            math.pow(10, fractionDigits),
        RoundBound.down => (this * math.pow(10, fractionDigits)).floor() /
            math.pow(10, fractionDigits),
        RoundBound.closest => (this * math.pow(10, fractionDigits)).round() /
            math.pow(10, fractionDigits),
      };
}
