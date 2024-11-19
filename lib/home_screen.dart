import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:report_project/challanges_screen.dart';
import 'package:report_project/custom_button.dart';
import 'package:report_project/devprocess_screen.dart';
import 'package:report_project/lessons_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 2, 94),
      appBar: AppBar(
        title: const Text(
          'Detailed Project Report',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(20, 80, 25, 70),
        child: Center(
          child: Column(
            children: [
              CustomButton(
                btnText: 'Development Process',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const DevelopmentProcessScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                btnText: 'Challenges Faced',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const ChallangeScreen(),
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 20,
              ),
              CustomButton(
                btnText: 'Lessons Learned',
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => const LessonScreen(),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
