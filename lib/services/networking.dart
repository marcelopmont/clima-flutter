import 'package:http/http.dart' as http;
import 'dart:convert';

class NetworkHelper {

  static const String _API_KEY = '7c647c8ad814375f94c37f0aa8f0884d';

  NetworkHelper({this.lat, this.long});

  final double lat;
  final double long;

  Future getWeatherData() async {
    http.Response response = await http.get('https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$long&units=metric&appid=$_API_KEY');
    return jsonDecode(response.body);
  }





}