import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../core/app_settings.dart';
//import '../../../Documents/flutter_project/lib/providers/theme_provider.dart';
import '../providers/theme_provider.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return Scaffold(
      appBar: AppBar(title: const Text("Ayarlar")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Tema Seçimi
            SwitchListTile(
              title: const Text("Karanlık Tema"),
              value: themeProvider.themeMode == ThemeMode.dark,
              onChanged: (value) => themeProvider.toggleTheme(value),
            ),

            const SizedBox(height: 20),

            // Yazı Fontu Seçimi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Yazı Fontu"),
                DropdownButton<String>(
                  value: themeProvider.fontFamily,
                  items: AppSettings.fontList
                      .map((font) => DropdownMenuItem(
                    value: font,
                    child: Text(font),
                  ))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      themeProvider.changeFont(value);
                    }
                  },
                ),
              ],
            ),

            const SizedBox(height: 20),

            // Yazı Büyüklüğü Seçimi
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text("Yazı Boyutu"),
                DropdownButton<double>(
                  value: themeProvider.fontSize,
                  items: AppSettings.fontSizes
                      .map((size) => DropdownMenuItem(
                    value: size,
                    child: Text("${size.toInt()} pt"),
                  ))
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      themeProvider.changeFontSize(value);
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
