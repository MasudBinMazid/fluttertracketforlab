import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Hello World AppBar')),
          backgroundColor: Colors.yellow,
        ),
        body: const Center(
          child: Text(
            'Hello World!',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.redAccent,
              fontFamily: 'DMSans',
            ),
          ),
        ),
      ),
    );
  }
}
