import 'package:flutter/material.dart';
import 'dart:async';
import 'package:report_project/home_screen.dart';

class AnimeSplashScreen extends StatefulWidget {
  const AnimeSplashScreen({super.key});

  @override
  _AnimeSplashScreenState createState() => _AnimeSplashScreenState();
}

class _AnimeSplashScreenState extends State<AnimeSplashScreen> {
  bool _visibleText1 = false;
  bool _visibleText2 = false;
  bool _visibleText3 = false;

  @override
  void initState() {
    super.initState();
    _startAnimations();
  }

  void _startAnimations() {
    Timer(Duration(seconds: 1), () {
      setState(() {
        _visibleText1 = true;
      });
    });
    Timer(Duration(seconds: 2), () {
      setState(() {
        _visibleText2 = true;
      });
    });
    Timer(Duration(seconds: 3), () {
      setState(() {
        _visibleText3 = true;
      });
    });

    // Fade out after text is fully visible and go to the next screen
    Timer(Duration(seconds: 5), () {
      setState(() {
        _visibleText1 = _visibleText2 = _visibleText3 = false;
      });
      Timer(Duration(seconds: 2), () {
        Navigator.of(context).pushReplacement(
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 2, 94),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Line 1: Detailed Project Report
            AnimatedOpacity(
              opacity: _visibleText1 ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: const Text(
                "Detailed Project Report",
                style: TextStyle(color: Colors.white, fontSize: 26),
              ),
            ),
            SizedBox(height: 10), // Spacing

            // Line 2: Subtitle or Additional Text
            AnimatedOpacity(
              opacity: _visibleText2 ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: const Text(
                "This project presents a comprehensive report on my journey of learning Flutter."
                "It covers the development process of building an app from scratch.",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 5),

            // Line 3: Another line of text (optional)
            AnimatedOpacity(
              opacity: _visibleText3 ? 1.0 : 0.0,
              duration: Duration(seconds: 1),
              child: const Text(
                "The challenges I encountered during development, and the valuable lessons I gained along the way",
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
