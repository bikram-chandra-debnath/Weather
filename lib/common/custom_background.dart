
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:weather_app/common/rounded_container.dart';

class CustomBackground extends StatelessWidget {
  const CustomBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Align(
      alignment: AlignmentDirectional(3, -0.3),
      child: CustomRoundedContainer()
    ),
    Align(
      alignment: AlignmentDirectional(-3, -0.3),
      child: CustomRoundedContainer(),
    ),
    Align(
      alignment: AlignmentDirectional(0, -1.2),
      child: Container(
        height: 300,
        width: 600,
        decoration: BoxDecoration(color: Color(0xffffa840)),
      ),
    ),
    BackdropFilter(
      filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
      child: Container(
        decoration: BoxDecoration(color: Colors.transparent),
      ),
    ),
    
      ],
    );
  }
}
