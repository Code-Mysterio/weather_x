import 'dart:async';
import 'package:flutter/material.dart';
import 'package:weather_x/ui/splash_screen_2.dart';
import 'package:weather_x/utils/app_colors.dart';
import 'package:weather_x/utils/app_images.dart';
import 'package:weather_x/utils/custom_text.dart';

class SplashScreen1 extends StatefulWidget {
  const SplashScreen1({Key? key}) : super(key: key);

  @override
  State<SplashScreen1> createState() => _SplashScreen1State();
}

class _SplashScreen1State extends State<SplashScreen1> {
  @override
  void initState() {
    super.initState();
    startTimer();
  }

  startTimer() async {
    var duration = const Duration(seconds: 4);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const SplashScreen2(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            AppImage().appLogo,
            const SizedBox(
              height: 25.0,
            ),
            CustomTextWidget(
              data: 'weather x',
              fontFamily: 'Syncopate',
              color: AppColors.whiteColor,
              fontWeight: FontWeight.w700,
              fontSize: 25,
            )
          ],
        ),
      ),
    );
  }
}
