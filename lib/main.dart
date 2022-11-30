import 'package:flutter/material.dart';
import 'package:on_boarding_screen/home_screen.dart';
import 'package:on_boarding_screen/on_boarding_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

bool show = true;
void main() async {
  final prefs = await SharedPreferences.getInstance();
  show = prefs.getBool('ON_BOARDING') ?? true;
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "OnBoardingPage",
        theme: ThemeData(primarySwatch: Colors.blue),
        home: show ? const OnBoardingScreen() : const HomeScreen());
  }
}
