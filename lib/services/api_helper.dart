import 'dart:convert';
import 'package:http/http.dart' as http;

class APIHelper {
  APIHelper(this.url);
  final String url;

  Future getData() async {
    http.Response response = await http.get(Uri.parse(url));
    String data = response.body;
    return jsonDecode(data);
  }
}
