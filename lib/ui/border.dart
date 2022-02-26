import 'package:flutter/material.dart';

extension BorderX<T extends Widget> on T {
  ///add border
  Container border({Color color = const Color(0xff95d9f1), double width = 2, double radius = 0}) {
    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: color, width: width),
          borderRadius: BorderRadius.all(
            Radius.circular(radius),
          ),
        ),
        child: this);
  }

  ///add Circle border
  Container circleBorder({Color color = const Color(0xff95d9f1), double width = 2}) {



    return Container(
        decoration: BoxDecoration(
          border: Border.all(color: color, width: width),
          borderRadius: const BorderRadius.all(
            Radius.circular(1000),
          ),
        ),
        child: this);
  }
}
