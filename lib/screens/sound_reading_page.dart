import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class SoundReadingPage extends StatefulWidget {
  const SoundReadingPage({super.key});

  @override
  State<SoundReadingPage> createState() => _SoundReadingPageState();
}

class _SoundReadingPageState extends State<SoundReadingPage> {
  int currentIndex = 0;
  final player = AudioPlayer();

  final List<String> items = [
    'elma',
    'armut',
    'ayakkabı',
    'balık',
    'ceket',
  ];

  Future<void> playSound(String itemName) async {
    try {
      await player.stop(); // varsa önceki sesi durdur
      await player.play(AssetSource('sounds/$itemName.mp3'));
    } catch (e) {
      debugPrint('Ses çalınamadı: $e');
    }
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final currentItem = items[currentIndex];

    return Scaffold(
      appBar: AppBar(title: const Text('Sesli Okuma')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Görsel alanı
          Container(
            width: 200,
            height: 200,
            color: Colors.grey[300],
            child: const Center(child: Text('Görsel')),
          ),
          const SizedBox(height: 20),

          // Adı
          Text(
            currentItem.toUpperCase(),
            style: const TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 20),

          // Ses butonu
          IconButton(
            icon: const Icon(Icons.volume_up),
            iconSize: 40,
            onPressed: () => playSound(currentItem),
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
                    if (currentIndex < items.length - 1) currentIndex++;
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
