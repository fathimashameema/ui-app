import 'package:flutter/material.dart';
import 'package:ui_app/homescreen.dart';

void main(List<String> args) {
  runApp(const UiApp());
}

class UiApp extends StatelessWidget {
  const UiApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 19, 76, 122)),
        useMaterial3: true,

        // iconTheme: IconThemeData(color: Colors.white)
      ),
      home: const Homescreen(),
    );
  }
}
