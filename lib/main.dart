import 'package:flutter/material.dart';

void main() => runApp(AnimatedDots());

class AnimatedDots extends StatefulWidget {
  @override
  _AnimatedDotsState createState() => _AnimatedDotsState();
}

class _AnimatedDotsState extends State<AnimatedDots> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

class CustomCurve extends Curve {
  @override
  double transformInternal(double t) {
    if (t > 0.2 && t < 0.4) {
      return Curves.ease.transformInternal((t * 5) - 1);
    } else if (t > 0.4 && t < 0.6) {
      String x = t.toString();
      t = double.parse(x);
      return Curves.decelerate.transform(3 - (5 * t));
    } else if (t == 0.4) {
      return 1.0;
    } else {
      return 0.0;
    }
  }
}
