import 'package:digital_art_gallery_app/show_first_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Digital Art Gallery',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        primaryColor: Colors.deepPurple,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurple,
          titleTextStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        textTheme: const TextTheme(
          bodyLarge: TextStyle(color: Colors.black),
          bodyMedium: TextStyle(color: Colors.black54),
        ),
        buttonTheme: const ButtonThemeData(
          buttonColor: Colors.deepPurple,
          textTheme: ButtonTextTheme.primary,
        ),
      ),
      home: const ShowFirstScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
