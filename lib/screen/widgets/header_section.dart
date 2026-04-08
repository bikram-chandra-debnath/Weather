
import 'package:flutter/material.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Dhaka, Bangladesh",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w300),
        ),
        SizedBox(height: 8),
        Text(
          "Good Morning",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 25,
          ),
        ),
      ],
    );
  }
}
