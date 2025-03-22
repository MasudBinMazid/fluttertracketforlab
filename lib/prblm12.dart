import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container Design',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ContainerDesignScreen(),
    );
  }
}

class ContainerDesignScreen extends StatelessWidget {
  const ContainerDesignScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Container Design'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: Center(
        child: Container(
          width: 200, // Set the width of the container
          height: 100, // Set the height of the container
          decoration: BoxDecoration(
            color: Colors.blue.shade200, // Background color
            borderRadius: BorderRadius.circular(16), // Rounded corners
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.3), // Shadow color
                blurRadius: 8, // Blur radius
                offset: const Offset(4, 4), // Shadow offset
              ),
            ],
          ),
          child: const Center(
            child: Text(
              'Masud Rana',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
          ),
        ),
      ),
    );
  }
}