class EndPoint {
  static String weatherAPI(
          double? latitude, double? longitude, String? appID) =>
      'https://api.openweathermap.org/data/2.5/weather?lat=$latitude&lon=$longitude&appid=$appID&units=metric';

  //this would be the end point for my city, once I'm able to navigate how to do it:
  // static String weatherCity({String? cityName, String? appID}) =>
  //     'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=$appID&units=metric';
}
