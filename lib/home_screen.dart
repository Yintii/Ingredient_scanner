import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_mlkit_text_recognition/google_mlkit_text_recognition.dart';
import 'package:image_picker/image_picker.dart';
import 'package:text_rec_example/image_preview.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Ingredient Checker'),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("Welcome to the app"),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/quiz');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Take the quiz'),
                  ],
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(context, '/scanner');
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    const Text('Scan Ingredients'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}