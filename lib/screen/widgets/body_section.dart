import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:weather_app/bloc/weather/weather_bloc.dart';

class BodySection extends StatelessWidget {
  const BodySection({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if(state is WeatherSuccess){
          return Column(
          children: [
            // image
            Image.asset(getImage(state.weather.weatherConditionCode!)),
            // Current Tempeature
            Center(
              child: Text(
                "${state.weather.temperature!.celsius!.round()}°C",
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
                state.weather.weatherDescription!.toUpperCase(),
                style: const TextStyle(
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
                DateFormat("EEEE dd ,").add_jm().format(state.weather.date!)
                ,
                style:const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w300,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        );
        }else{
          return SizedBox();
        }
      },
    );
  }

  String getImage (int code){

    switch (code){
      case >=200 && <300:
      return "assets/1.png";
      case >=300 && <400:
      return "assets/2.png";
      case >=500 && <600:
      return "assets/3.png";
      case >=600 && <700:
      return "assets/4.png";
      case >=700 && <800:
      return "assets/5.png";
      case ==800:
      return "assets/6.png";
      case >800 && <=804:
      return "assets/7.png";
      

      default: 
      return "assets/7.png";

    }
  }




}



