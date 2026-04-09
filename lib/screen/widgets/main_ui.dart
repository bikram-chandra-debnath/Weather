import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/bloc/weather/weather_bloc.dart';
import 'package:weather_app/screen/widgets/body_section.dart';
import 'package:weather_app/screen/widgets/header_section.dart';
import 'package:weather_app/screen/widgets/lower_section.dart';

class MainUI extends StatelessWidget {
  const MainUI({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WeatherBloc, WeatherState>(
      builder: (context, state) {
        if (state is WeatherSuccess) {
          return SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // location and gretings
                  HeaderSection(),
                  // Image, temp, day and time
                  BodySection(),
                  const SizedBox(height: 20),

                  // temp and sunrise-sunset time
                  LowerSection(),
                ],
              ),
            ),
          );
        } else if(state is WeatherFailure) {
          return Center(
            child: Lottie.asset(
              "assets/animation/Page Not Found Animation.json",
            ),
          );
        } else{
          return SizedBox();
        }
      },
    );
  }
}
