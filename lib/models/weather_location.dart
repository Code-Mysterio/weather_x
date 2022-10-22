import 'package:weather_x/services/api_helper.dart';
import 'package:weather_x/services/endpoint.dart';
import 'package:weather_x/services/weather_service.dart';
import 'package:weather_x/utils/const.dart';

String? appID = AppConst.weatherAPI;

class WeatherLocationModel {
  Future<dynamic> weatherLocation() async {
    MyLocation location = MyLocation();
    await location.getCurrentLocation();

    APIHelper apiHelper = APIHelper(
        EndPoint.weatherAPI(location.latitude, location.longitude, appID));

    var weatherData = await apiHelper.getData();
    return weatherData;
  }

  //trying to implement the weather city below:

  // Future<dynamic> weatherCity(String? cityName) async {
  //   APIHelper apiHelper =
  //       APIHelper(EndPoint.weatherCity(cityName: cityName, appID: appID));
  //
  //   var weatherData = await apiHelper.getData();
  //   return weatherData;
  // }
}
