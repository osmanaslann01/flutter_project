import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'core/app_settings.dart';
import 'providers/theme_provider.dart';
import 'screens/home_page.dart';

void main() {
  runApp(
    ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Okuma Yazma Uygulaması',
      themeMode: themeProvider.themeMode,
      theme: ThemeData(
        brightness: Brightness.light,
        textTheme: AppSettings.getTextTheme(
          themeProvider.fontFamily,
          themeProvider.fontSize,
        ),
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        textTheme: AppSettings.getTextTheme(
          themeProvider.fontFamily,
          themeProvider.fontSize,
        ),
      ),
      home: const HomePage(),
    );
  }
}
