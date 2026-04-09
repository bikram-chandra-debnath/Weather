import 'package:flutter/material.dart';
import 'package:weather_app/common/custom_weather_card.dart';

class LowerSection extends StatelessWidget {
  const LowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // sunrise
            CustomWeatherCard(image: "assets/11.png",title: "Sunrise",content: "05:34 am",),
            // sunset
            CustomWeatherCard(image: "assets/12.png", title: "Sunset", content: "06:14 pm"),
          ],
        ),
        // devider
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 5.0),
          child: Divider(
            color: const Color.fromARGB(255, 51, 51, 51),
            height: 0.5,
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Max temp

            CustomWeatherCard(image: "assets/13.png", title:  "Temp Max", content: "22° C"),
            
            // Min Temp

            CustomWeatherCard(image: "assets/14.png", title:  "Temp Min", content: "8° C"),
            
          ],
        ),
      ],
    );
  }
}

