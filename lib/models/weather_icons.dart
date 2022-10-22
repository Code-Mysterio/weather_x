import 'package:flutter/material.dart';
import 'package:weather_x/utils/app_images.dart';

class WeatherIconModel {
  Widget displayWeatherIcon(int condition) {
    if (condition < 300) {
      return AppImage().thunder;
    } else if (condition < 600 || condition >= 500) {
      return AppImage().rain;
    } else if (condition < 800 || condition >= 700) {
      return AppImage().wind;
    } else if (condition == 800) {
      return AppImage().sun;
    } else if (condition >= 800) {
      return AppImage().moon;
    } else {
      return AppImage().defaultCloud;
    }
  }
}
