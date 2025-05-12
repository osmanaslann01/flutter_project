import 'package:flutter/material.dart';
import 'package:flutter_project/screens/reading_page.dart';
import 'package:flutter_project/screens/writing_page.dart';
import 'package:flutter_project/screens/test_page.dart';

class WordsPage extends StatelessWidget {
  const WordsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Kelimeler')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Sesli Okuma'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const ReadingPage()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Kelime Yazma'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const WritingPage()),
                );
              },
            ),
            ElevatedButton(
              child: const Text('Test'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const TestPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


