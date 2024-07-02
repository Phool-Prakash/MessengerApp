import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

///BarAnimation with ReverseAnimation
class BarAnimation extends ReverseAnimation {
  BarAnimation({required AnimationController parent})
      : super(CurvedAnimation(
            parent: parent,
            curve: const Interval(0, 1 / 5),
            reverseCurve: const Interval(1 / 5, 4 / 5)));
}

///OffsetAnimation with CurvedAnimation
class OffsetAnimation extends CurvedAnimation {
  OffsetAnimation({required super.parent})
      : super(
          curve: const Interval(
            2 / 5,
            3 / 5,
            curve: Curves.easeInOutCubicEmphasized,
          ),
          reverseCurve: Interval(4 / 5, 1,
              curve: Curves.easeInOutCubicEmphasized.flipped),
        );
}

///RailAnimation with CurvedAnimation
class RailAnimation extends CurvedAnimation {
  RailAnimation({required super.parent})
      : super(
            curve: const Interval(0 / 5, 4 / 5),
            reverseCurve: const Interval(3 / 5, 1));
}

///RailFabAnimation with CurvedAnimation
class RailFabAnimation extends CurvedAnimation {
  RailFabAnimation({required super.parent})
      : super(curve: const Interval(3 / 5, 1));
}

///ScaleAnimation with CurvedAnimation
class ScaleAnimation extends CurvedAnimation {
  ScaleAnimation({required super.parent})
      : super(
            curve: const Interval(3 / 4, 4 / 5,
                curve: Curves.easeInOutCubicEmphasized),
            reverseCurve: Interval(3 / 5, 1,
                curve: Curves.easeInOutCubicEmphasized.flipped));
}

///ShapedAnimation with CurvedAnimation
class ShapedAnimation extends CurvedAnimation {
  ShapedAnimation({required super.parent})
      : super(
            curve: const Interval(2 / 5, 3 / 5,
                curve: Curves.easeInOutCubicEmphasized));
}

///SizeAnimation with CurvedAnimation

class SizeAnimation extends CurvedAnimation {
  SizeAnimation({required super.parent})
      : super(
            curve: const Interval(0 / 5, 3 / 5,
                curve: Curves.easeInOutCubicEmphasized),
            reverseCurve: Interval(2 / 5, 1,
                curve: Curves.easeInOutCubicEmphasized.flipped));
}
