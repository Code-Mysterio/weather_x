import 'package:flutter/material.dart';
import 'package:weather_x/models/weather_icon_model.dart';

WeatherIconModel weatherIconModel = WeatherIconModel();

class WeatherModel {
  final double temp;
  final String city;
  final String daymood;
  final String nextmood;
  final int condition;

  WeatherModel.fromMap(Map<String, dynamic> json)
      : temp = json['main']['temp'],
        city = json['name'],
        daymood = json['weather'][0]['main'],
        nextmood = json['weather'][0]['description'],
        condition = json['cod'];
  Widget displayWeatherIcon = weatherIconModel.displayWeatherIcon(600);
}
