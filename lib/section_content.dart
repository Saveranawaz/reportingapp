import 'package:flutter/material.dart';

class SectionContent extends StatelessWidget {
  final String content;

  const SectionContent({super.key, required this.content});

  @override
  Widget build(BuildContext context) {
    return Text(
      content,
      style: const TextStyle(
        fontSize: 16,
        color: Colors.white,
        height: 1.5,
      ),
    );
  }
}
