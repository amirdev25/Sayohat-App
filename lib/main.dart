import 'package:flutter/material.dart';
import 'package:sayohat_app/ui/detail_screen.dart';
import 'package:sayohat_app/ui/home_screen.dart';
import 'package:sayohat_app/ui/splash_screen.dart';
import 'package:sayohat_app/utils/Constants.dart';

void main() {
  runApp(const TravelApp());
}
class TravelApp extends StatelessWidget {
  const TravelApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
      routes: {
        Constants.SplashScreen: (context)=> SplashScreen(),
        Constants.HomeScreen: (context)=> HomeScreen(),
        Constants.DetailsScreen: (context)=> DetailScreen()
      },
    );
  }
}
