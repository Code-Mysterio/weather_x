import 'package:flutter/material.dart';
import 'package:weather_x/models/weather_location.dart';
import 'package:weather_x/ui/home_page.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:weather_x/utils/app_colors.dart';

class LoadingScreen extends StatefulWidget {
  const LoadingScreen({Key? key}) : super(key: key);

  @override
  State<LoadingScreen> createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  @override
  void initState() {
    super.initState();
    getLocationData();
  }

  void getLocationData() async {
    var weatherData = await WeatherLocationModel().weatherLocation();

    if (!mounted) return;
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) {
          return HomePage(
            weatherLocation: weatherData,
          );
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: Center(
        child: SpinKitFadingCircle(
          color: AppColors.primaryColor,
          size: 100.0,
        ),
      ),
    );
  }
}
