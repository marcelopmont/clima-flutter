import 'package:clima/screens/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => LoadingScreen(),
        'location': (context) {
          Map arguments = ModalRoute.of(context).settings.arguments as Map;
          return LocationScreen(
            weatherData: arguments['weatherData'],
          );
        }
      }
    );
  }
}
