import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_x/ui/load_screen.dart';
import 'package:weather_x/utils/app_colors.dart';
import 'package:weather_x/utils/app_images.dart';
import 'package:weather_x/utils/clipped_shape.dart';
import 'package:weather_x/utils/custom_elevated_button.dart';
import 'package:weather_x/utils/custom_text.dart';

class SplashScreen2 extends StatefulWidget {
  const SplashScreen2({Key? key}) : super(key: key);

  @override
  State<SplashScreen2> createState() => _SplashScreen2State();
}

class _SplashScreen2State extends State<SplashScreen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Stack(
          children: [
            ClipPath(
              clipper: CustomClippedShape(),
              child: Container(
                height: 125,
                width: MediaQuery.of(context).size.width,
                color: AppColors.primaryColor,
              ),
            ),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'Let’s See \nThe ',
                          style: GoogleFonts.poppins(
                            fontSize: 30.0,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(
                            height: 20.0,
                            width: 20.0,
                            child: AppImage().starIcon,
                          ),
                        ),
                        TextSpan(
                          text: '\nWeather \nAround you',
                          style: GoogleFonts.poppins(
                            fontSize: 30.0,
                            height: 1.2,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 200.0,
                  ),
                  CustomElevatedButton(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const LoadingScreen(),
                        ),
                      );
                    },
                    color: AppColors.primaryColor,
                    width: 290.0,
                    height: 60.0,
                    backgroundColor: AppColors.primaryColor,
                    child: CustomTextWidget(
                      data: 'Let\'s Check',
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: AppColors.whiteColor,
                    ),
                  ),
                  const SizedBox(
                    height: 70.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
