import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StartPage"),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'First App Screen',
          style: TextStyle(
            fontSize: 25,
          ),
        ),
      ),
    );
  }
}
