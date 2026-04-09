import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather/weather.dart';
import 'package:weather_app/data/my_data.dart';

part 'weather_event.dart';
part 'weather_state.dart';

class WeatherBloc extends Bloc<WeatherEvent, WeatherState> {
  WeatherBloc() : super(WeatherInitial()) {
    on<FetchWeather>(_onFatchWeather);
  }

  Future<void> _onFatchWeather(FetchWeather event, Emitter<WeatherState> emit) async {
    emit(WeatherLoading());
    try {
      WeatherFactory wf = WeatherFactory(apiKey, language: Language.ENGLISH);
      
      Weather weather = await wf.currentWeatherByLocation(
        
        event.position.latitude,event.position.longitude,
      );
      emit(WeatherSuccess(weather));
      debugPrint("Weather Details is : ${weather.toString()}");
    } catch (e) {
      emit(WeatherFailure());
      debugPrint("error is : $e");
    }
  }
}
