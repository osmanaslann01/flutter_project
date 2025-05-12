import 'package:flutter/material.dart';

class SyllablesPage extends StatefulWidget {
  const SyllablesPage({super.key});

  @override
  State<SyllablesPage> createState() => _SyllablesPageState();
}

class _SyllablesPageState extends State<SyllablesPage> {
  int currentIndex = 0;

  final List<String> syllables = [
    'ba', 'be', 'bi', 'bo', 'bu',
    'da', 'de', 'di', 'do', 'du',
    'ka', 'ke', 'ki', 'ko', 'ku',
  ];

  @override
  Widget build(BuildContext context) {
    final currentSyllable = syllables[currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Heceler')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Görsel alanı (placeholder)
          Container(
            width: 200,
            height: 200,
            color: Colors.grey[300],
            child: const Center(
              child: Text('Görsel'),
            ),
          ),
          const SizedBox(height: 20),

          // Hece yazısı
          Text(
            currentSyllable.toUpperCase(),
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 40),

          // Geçiş butonları
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                iconSize: 40,
                onPressed: () {
                  setState(() {
                    if (currentIndex > 0) currentIndex--;
                  });
                },
              ),
              const SizedBox(width: 20),
              IconButton(
                icon: const Icon(Icons.arrow_forward),
                iconSize: 40,
                onPressed: () {
                  setState(() {
                    if (currentIndex < syllables.length - 1) currentIndex++;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

