import 'package:flutter/material.dart';

class CustomWeatherCard extends StatelessWidget {
  const CustomWeatherCard({
    super.key, required this.image, required this.title, required this.content,
  });

  final String image, title, content;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(image, scale: 8),
        const SizedBox(width: 5),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w300,
              ),
            ),
            Text(
              content,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
      ],
    );
  }
}