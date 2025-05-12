import 'package:flutter/material.dart';

class LetterGrid extends StatelessWidget {
  const LetterGrid({super.key});

  static const List<String> letters = [
    'Aa', 'Bb', 'Cc', 'Çç', 'Dd', 'Ee', 'Ff', 'Gg',
    'Ğğ', 'Hh', 'Iı', 'İi', 'Jj', 'Kk', 'Ll', 'Mm',
    'Nn', 'Oo', 'Öö', 'Pp', 'Rr', 'Ss', 'Şş', 'Tt',
    'Uu', 'Üü', 'Vv', 'Yy', 'Zz'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: GridView.builder(
        itemCount: letters.length,
        gridDelegate:
        const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 10),
        itemBuilder: (context, index) {
          return SingleChildScrollView(
            child: Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
              elevation: 4,
              child: Center(
                child: Text(
                  letters[index],
                  style: Theme.of(context).textTheme.headlineSmall,
                ),
              ),
            ),
          );
        },
      ), ),
    );
  }
}
