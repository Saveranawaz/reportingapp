import 'package:flutter/material.dart';
import 'package:report_project/section_content.dart';

class LessonScreen extends StatelessWidget {
  const LessonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 57, 2, 94),
      appBar: AppBar(
        title: const Text(
          'Lessons Learned',
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
                "Technical Learnings",
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
                        "Gained a deeper understanding of Flutter widgets, state management techniques, and how to optimize the app for better performance.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              backgroundColor: Colors.deepOrange,
              title: Text(
                "Problem-Solving",
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
                        "Encountering and resolving multiple bugs helped improve our problem-solving skills, especially in debugging asynchronous code.",
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            ExpansionTile(
              backgroundColor: Colors.deepOrange,
              title: Text(
                "UI/UX Design",
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
                        "We learned the importance of user-centric design, ensuring that the app is not only functional but also provides a pleasant user experience.",
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
