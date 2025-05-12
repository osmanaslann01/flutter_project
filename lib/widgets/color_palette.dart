import 'package:flutter/material.dart';

class ColorPalette extends StatelessWidget {
  final Function(Color) onColorSelected;
  const ColorPalette({super.key, required this.onColorSelected});

  @override
  Widget build(BuildContext context) {
    final colors = [Colors.black, Colors.red, Colors.blue, Colors.green];
    return Wrap(
      direction: Axis.vertical,
      children: colors.map((color) {
        return GestureDetector(
          onTap: () => onColorSelected(color),
          child: Container(
            margin: const EdgeInsets.all(4),
            width: 24,
            height: 24,
            color: color,
          ),
        );
      }).toList(),
    );
  }
}
