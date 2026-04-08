import 'package:flutter/material.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // image
        Image.asset("assets/1.png"),
        // Current Tempeature
        Center(
          child: Text(
            "21° C",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 55,
            ),
          ),
        ),
        // current condition
        Center(
          child: Text(
            "THUNDERSTORM",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 25,
            ),
          ),
        ),
        const SizedBox(height: 5),
        // Day and Time
        Center(
          child: Text(
            "Friday 10 , 09:41 am",
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w300,
              fontSize: 16,
            ),
          ),
        ),
      ],
    );
  }
}
