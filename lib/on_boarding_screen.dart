import 'package:flutter/material.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:on_boarding_screen/home_screen.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  final List<PageViewModel> pages = [
    PageViewModel(
      title: 'first page',
      body: 'Description',
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text('Swipe Next'),
      ),
      image: Center(
        child: Image.asset(
            'assets/—Pngtree—modern flat design concept of_5332894.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: 'second page',
      body: 'Description',
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text('Swipe Next'),
      ),
      image: Center(
        child:
            Image.asset('assets/—Pngtree—sign a contract to work_5394650.png'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
    PageViewModel(
      title: 'third page',
      body: 'Description',
      footer: ElevatedButton(
        onPressed: () {},
        child: const Text('Swipe Next'),
      ),
      image: Center(
        child: Image.network(
            'https://png.pngtree.com/png-clipart/20191120/original/pngtree-bad-feedback-and-review-concept-for-customer-satisfaction-png-image_5071713.jpg'),
      ),
      decoration: const PageDecoration(
        titleTextStyle: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    ),
  ];

  void onDone(context) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('ON_BOARDING', false);
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(
        builder: (context) => const HomeScreen(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("StartScreen"),
        centerTitle: true,
      ),
      body: IntroductionScreen(
        pages: pages,
        dotsDecorator: const DotsDecorator(
          size: Size(15, 15),
          color: Colors.blue,
          activeSize: Size.square(20),
          activeColor: Colors.red,
        ),
        showDoneButton: true,
        done: const Text(
          'Done',
          style: TextStyle(fontSize: 20),
        ),
        showSkipButton: true,
        skip: const Text(
          'Skip',
          style: TextStyle(fontSize: 20),
        ),
        showNextButton: true,
        next: const Icon(
          Icons.arrow_forward,
          size: 25,
        ),
        onDone: () => onDone(context),
        curve: Curves.bounceOut,
      ),
    );
  }
}
