import 'dart:convert';
import 'package:weather_x/models/weather_model.dart';
import 'package:http/http.dart' as http;
import 'package:weather_x/utils/const.dart';

class MyLocation {
  Future<WeatherModel> getWeatherCity({
    required cityName,
  }) async {
    try {
      var url = Uri.https('api.openweathermap.org', '/data/2.5/weather',
          {'q': cityName, "units": "metric", "appid": weatherAPI});

      final response = await http.get(url);
      if (response.statusCode == 200) {
        final j = json.decode(response.body);
        return WeatherModel.fromMap(j);
      } else {
        throw Exception('Could not fetch data');
      }
    } catch (e) {
      throw Exception('Could not load data');
    }
  }
}
