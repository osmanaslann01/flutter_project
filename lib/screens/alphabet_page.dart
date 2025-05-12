import 'package:flutter/material.dart';
import '../widgets/letter_grid.dart';

class AlphabetPage extends StatelessWidget {
  const AlphabetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Alfabe")),
      body: const Padding(
        padding: EdgeInsets.all(12.0),
        child: LetterGrid(),
      ),
    );
  }
}
