import 'package:flutter/material.dart';
import 'package:text_rec_example/home_screen.dart';
import 'package:text_rec_example/quiz_screen.dart'; 
import 'package:text_rec_example/scanner_screen.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'ML Text Recognition',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomeScreen(), // This now points to home_screen.dart
      routes: {
        '/quiz': (context) => QuizScreen(),
        '/scanner': (context) => ScannerScreen(),
      }
    );
  }
}
