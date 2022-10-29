import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weather_x/models/weather_model.dart';
import 'package:weather_x/services/weather_service.dart';
import 'package:weather_x/utils/app_colors.dart';
import 'package:weather_x/utils/app_images.dart';
import 'package:weather_x/utils/custom_icon_align.dart';
import 'package:weather_x/utils/custom_text.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  Future<WeatherModel> getData(String cityName) async {
    return await MyLocation().getWeatherCity(cityName: cityName);
  }

  @override
  void initState() {
    super.initState();
    getData(dropdownvalue);
  }

  String dropdownvalue = 'Lagos';
  var items = [
    'Lagos',
    'Paris',
    'Ibadan',
    'London',
    'Germany',
    'Kaduna',
    'Johannesburg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        minimum: const EdgeInsets.all(20.0),
        child: FutureBuilder<WeatherModel>(
            future: getData(dropdownvalue),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else {
                if (snapshot.error != null) {
                  return const Center(child: Text('There is an error'));
                } else {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(10.0),
                            child: SizedBox(
                              height: 40.0,
                              width: 38.0,
                              child: AppImage().profilePicture,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          DropdownButton(
                              value: dropdownvalue,
                              icon: Icon(
                                Icons.expand_more,
                                color: AppColors.greyColor,
                              ),
                              items: items.map((String items) {
                                return DropdownMenuItem(
                                  value: items,
                                  child: Text(items),
                                );
                              }).toList(),
                              onChanged: (String? newValue) {
                                setState(() {
                                  dropdownvalue = newValue!;
                                });
                                getData(dropdownvalue);
                              }),
                        ],
                      ),
                      const SizedBox(
                        height: 40.0,
                      ),
                      Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 20.0),
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text:
                                        'Feels Like A good \ntime to ride a bike',
                                    style: GoogleFonts.poppins(
                                      fontSize: 24.0,
                                      height: 1.1,
                                      fontWeight: FontWeight.w500,
                                    ),
                                  ),
                                  WidgetSpan(
                                    alignment: PlaceholderAlignment.bottom,
                                    child: Row(
                                      children: [
                                        const SizedBox(
                                          width: 12.0,
                                        ),
                                        SizedBox(
                                          height: 20.0,
                                          width: 20.0,
                                          child: AppImage().bikeIcon,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 70,
                      ),
                      CircleAvatar(
                        radius: 170,
                        backgroundColor: AppColors.primaryColor,
                        child: Stack(
                          children: [
                            Align(
                              alignment: const Alignment(-0.2, -0.1),
                              child: Text.rich(
                                textAlign: TextAlign.end,
                                TextSpan(
                                  children: [
                                    TextSpan(
                                      text: 'Today’s Like\n',
                                      style: GoogleFonts.poppins(
                                        fontSize: 17.0,
                                        fontWeight: FontWeight.w400,
                                        height: -1.2,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                    TextSpan(
                                      text: '${snapshot.data?.temp.round()}°',
                                      style: GoogleFonts.poppins(
                                        fontSize: 55.0,
                                        fontWeight: FontWeight.w400,
                                        color: AppColors.whiteColor,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Align(
                              alignment: const Alignment(0.4, 0.2),
                              child: CircleAvatar(
                                radius: 60.0,
                                backgroundColor: Colors.transparent,
                                child: snapshot.data?.displayWeatherIcon,
                              ),
                            ),
                            CustomIconAlign(
                              x: -0.9,
                              y: -1.0,
                              child: AppImage().sunnyIcon,
                            ),
                            CustomIconAlign(
                              x: 1.0,
                              y: -1.0,
                              child: AppImage().rainIcon,
                            ),
                            CustomIconAlign(
                              x: 1.25,
                              y: 0.7,
                              child: AppImage().moonIcon,
                            ),
                            CustomIconAlign(
                              x: -1.1,
                              y: 0.7,
                              child: AppImage().windIcon,
                            ),
                            CustomIconAlign(
                              x: -0.0,
                              y: 1.4,
                              child: AppImage().thunderIcon,
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 80.0,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CustomTextWidget(
                                  data: 'Today’s Mood',
                                  fontFamily: 'Poppins',
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w400,
                                ),
                                CustomTextWidget(
                                  data: '${snapshot.data?.daymood}',
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                )
                              ],
                            ),
                            const SizedBox(
                              width: 40.0,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const CustomTextWidget(
                                  data: 'Tomorrow’s Mood',
                                  fontFamily: 'Poppins',
                                  fontSize: 14.5,
                                  fontWeight: FontWeight.w400,
                                ),
                                CustomTextWidget(
                                  data: '${snapshot.data?.nextmood}',
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12.0,
                                )
                              ],
                            )
                          ],
                        ),
                      )
                    ],
                  );
                }
              }
            }),
      ),
    );
  }
}
