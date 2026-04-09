import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather/weather_bloc.dart';
import 'package:weather_app/common/custom_weather_card.dart';

class LowerSection extends StatelessWidget {
  const LowerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if(state is WeatherSuccess){
          
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // sunrise
                CustomWeatherCard(
                  image: "assets/11.png",
                  title: "Sunrise",
                  content: DateFormat().add_jm().format(state.weather.sunrise!)
                ),
                // sunset
                CustomWeatherCard(
                  image: "assets/12.png",
                  title: "Sunset",
                  content: DateFormat().add_jm().format(state.weather.sunset!),
                ),
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
                CustomWeatherCard(
                  image: "assets/13.png",
                  title: "Temp Max",
                  content: "${state.weather.tempMax!.celsius!.round()}°C",
                ),

                // Min Temp
                CustomWeatherCard(
                  image: "assets/14.png",
                  title: "Temp Min",
                  content: "${state.weather.tempMin!.celsius!.round()}°C",
                ),
              ],
            ),
          ],
        );
        }else{
          return SizedBox();
        }
      },
    );
  }
}
