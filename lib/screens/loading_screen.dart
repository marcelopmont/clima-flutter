import 'package:clima/services/weather.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class LoadingScreen extends StatefulWidget {
  @override
  _LoadingScreenState createState() => _LoadingScreenState();
}

class _LoadingScreenState extends State<LoadingScreen> {
  getLocation() async {
    WeatherModel weatherModel = WeatherModel();
    dynamic decodeData = await weatherModel.getWeatherData();

    Navigator.pushNamed(context, 'location', arguments: {
      'weatherData': decodeData,
    });
  }

  @override
  void initState() {
    super.initState();
    getLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SpinKitChasingDots(
          color: Colors.white,
        ),
      ),
    );
  }
}
