import 'package:flutter/material.dart';
import 'alphabet_page.dart';

class LetterPage extends StatelessWidget {
  const LetterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Harf Sayfası")),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(context,
                MaterialPageRoute(builder: (_) => const AlphabetPage()));
          },
          child: const Text("Alfabe"),
        ),
      ),
    );
  }
}
