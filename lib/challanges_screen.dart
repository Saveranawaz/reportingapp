import 'package:flutter/material.dart';
import 'package:report_project/section_content.dart';

class ChallangeScreen extends StatelessWidget {
  const ChallangeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 2, 94),
      appBar: AppBar(
        title: const Text(
          'Challenges Faced',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.deepOrange,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          // Replaced Column with ListView for scrollability
          children: const [
            ExpansionTile(
              backgroundColor: Colors.deepOrange,
              title: Text(
                "Cross-Platform Compatibility",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SectionContent(
                    content:
                        "Ensuring the app worked seamlessly across both Android and iOS devices presented several challenges, especially in handling platform-specific UI quirks.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              backgroundColor: Colors.deepOrange,
              title: Text(
                "State Management",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SectionContent(
                    content:
                        "Managing the state efficiently while keeping the app's architecture clean was difficult. We had to choose between different state management approaches.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              backgroundColor: Colors.deepOrange,
              title: Text(
                "Performance Optimization",
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: SectionContent(
                    content:
                        "We faced performance issues due to heavy image assets. Lazy loading and caching techniques were used to optimize the app’s performance.",
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
