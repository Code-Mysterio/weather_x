import 'package:flutter/material.dart';
import 'package:weather_x/ui/splash_screen_1.dart';

void main() {
  runApp(const WeatherX());
}

class WeatherX extends StatelessWidget {
  const WeatherX({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: SplashScreen1(),
    );
  }
}
