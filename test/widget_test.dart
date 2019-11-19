
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:day_33_morning_challenge_curve/main.dart';
//rahul
void main() {
  Curve myCurve = Curves.ease;
  print(myCurve.transform(0.5));
  test("Testing curve value", (){
    expect(5+2, 7);
    CustomCurve curve = CustomCurve();
    expect(curve.transforminternal(.15),0.0);
    expect(curve.transforminternal(.19),0.0);
    expect(curve.transforminternal(.61),0.0);
    expect(curve.transforminternal(.75),0.0);

    expect(curve.transforminternal(.25),Curves.ease.transformInternal(.25));
    expect(curve.transforminternal(.3),Curves.ease.transformInternal(.5));
    expect(curve.transforminternal(.35),Curves.ease.transformInternal(.75));
    expect(curve.transforminternal(.4),Curves.ease.transformInternal(1));
    expect(curve.transforminternal(.45),Curves.decelerate.transformInternal(.25));
    expect(curve.transforminternal(.5),Curves.decelerate.transformInternal(.5));
    expect(curve.transforminternal(.55),Curves.decelerate.transformInternal(.75));
    expect(curve.transforminternal(.6),Curves.decelerate.transformInternal(1));

  });
}
