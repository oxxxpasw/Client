import 'package:flutter/physics.dart';
import 'package:flutter/widgets.dart';
import 'dart:math' as math;

class MagneticScrollPhysics extends ScrollPhysics {
  /// Creates a scroll physics that always lands on items.
  const MagneticScrollPhysics({
    super.parent,
    required this.itemSize,
  });

  final double itemSize;

  @override
  MagneticScrollPhysics applyTo(ScrollPhysics? ancestor) {
    return MagneticScrollPhysics(
      parent: buildParent(
        ancestor,
      ),
      itemSize: itemSize,
    );
  }

  @override
  Simulation? createBallisticSimulation(
      ScrollMetrics position, double velocity) {
    // Scenario 1:
    // If we're out of range and not headed back in range, defer to the parent
    // ballistics, which should put us back in range at the scrollable's boundary.
    if ((velocity <= 0.0 && position.pixels <= position.minScrollExtent) ||
        (velocity >= 0.0 && position.pixels >= position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    // Create a test simulation to see where it would have ballistically fallen
    // naturally without settling onto items.
    final Simulation? testFrictionSimulation =
        super.createBallisticSimulation(position, velocity);

    // Scenario 2:
    // If it was going to end up past the scroll extent, defer back to the
    // parent physics' ballistics again which should put us on the scrollable's
    // boundary.
    if (testFrictionSimulation != null &&
        (testFrictionSimulation.x(double.infinity) ==
                position.minScrollExtent ||
            testFrictionSimulation.x(double.infinity) ==
                position.maxScrollExtent)) {
      return super.createBallisticSimulation(position, velocity);
    }

    // From the natural final position, find the nearest item it should have
    // settled to.
    final int settlingItemIndex = _getItemFromOffset(
      offset: testFrictionSimulation?.x(double.infinity) ?? position.pixels,
      itemExtent: itemSize,
      minScrollExtent: position.minScrollExtent,
      maxScrollExtent: position.maxScrollExtent,
    );

    final double settlingPixels = settlingItemIndex * itemSize;

    // Scenario 3:
    // If there's no velocity and we're already at where we intend to land,
    // do nothing.
    if (velocity.abs() < toleranceFor(position).velocity &&
        (settlingPixels - position.pixels).abs() <
            toleranceFor(position).distance) {
      return null;
    }

    // Scenario 4:
    // If we're going to end back at the same item because initial velocity
    // is too low to break past it, use a spring simulation to get back.
    // if (settlingItemIndex == _getItemFromOffset(o)) {
    //   return SpringSimulation(
    //     spring,
    //     position.pixels,
    //     settlingPixels,
    //     velocity,
    //     tolerance: toleranceFor(position),
    //   );
    // }

    if (settlingItemIndex ==
        _getItemFromOffset(
          offset: position.pixels,
          minScrollExtent: position.minScrollExtent,
          maxScrollExtent: position.maxScrollExtent,
          itemExtent: itemSize,
        )) {
      return SpringSimulation(
        spring,
        position.pixels,
        settlingPixels,
        velocity,
        tolerance: toleranceFor(position),
      );
    }

    // Scenario 5:
    // Create a new friction simulation except the drag will be tweaked to land
    // exactly on the item closest to the natural stopping point.
    return FrictionSimulation.through(
      position.pixels,
      settlingPixels,
      velocity,
      toleranceFor(position).velocity * velocity.sign,
    );
  }
}

int _getItemFromOffset({
  required double offset,
  required double itemExtent,
  required double minScrollExtent,
  required double maxScrollExtent,
}) {
  return (_clipOffsetToScrollableRange(
              offset, minScrollExtent, maxScrollExtent) /
          itemExtent)
      .round();
}

double _clipOffsetToScrollableRange(
  double offset,
  double minScrollExtent,
  double maxScrollExtent,
) {
  return math.min(math.max(offset, minScrollExtent), maxScrollExtent);
}
