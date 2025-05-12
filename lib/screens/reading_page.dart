import 'package:flutter/material.dart';

class ReadingPage extends StatefulWidget {
  const ReadingPage({super.key});

  @override
  State<ReadingPage> createState() => _ReadingPageState();
}

class _ReadingPageState extends State<ReadingPage> {
  int currentIndex = 0;

  final List<String> words = [
    'Elma',
    'Araba',
    'Kedi',
  ];

  @override
  Widget build(BuildContext context) {
    final currentWord = words[currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Sesli Okuma')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Görsel kısmı - geçici yer tutucu
          Container(
            width: 200,
            height: 200,
            color: Colors.grey[300],
            child: const Center(child: Text('Görsel')),
          ),
          const SizedBox(height: 20),

          // Kelime adı
          Text(
            currentWord,
            style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
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
                    if (currentIndex < words.length - 1) currentIndex++;
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
