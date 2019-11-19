
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

    expect(curve.transform(.25),Curves.ease.transform(.25));
    expect(curve.transform(.3),Curves.ease.transform(.5));
    expect(curve.transform(.35),Curves.ease.transform(.75));
    expect(curve.transform(.4),Curves.ease.transform(1));
    expect(curve.transform(.45),Curves.decelerate.transform(.25));
    expect(curve.transform(.5),Curves.decelerate.transform(.5));
    expect(curve.transform(.55),Curves.decelerate.transform(.75));
    expect(curve.transform(.6),Curves.decelerate.transform(1));

  });
}
