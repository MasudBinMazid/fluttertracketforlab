import 'package:flutter/material.dart';

void main() {
  runApp(const ListApp());
}

class ListApp extends StatelessWidget {
  const ListApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const ItemListScreen(),
    );
  }
}

class ItemListScreen extends StatelessWidget {
  const ItemListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('List AppBar')),
        backgroundColor: Colors.greenAccent,
      ),
      body: ListView.builder(
        itemCount: 15,
        itemBuilder: (context, index) {
          return Container(
            margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
            decoration: BoxDecoration(
              color: Colors.primaries[index % Colors.primaries.length],
              borderRadius: BorderRadius.circular(10),
            ),
            child: ListTile(
              title: Text(
                'Item ${index + 1}',
                style: const TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'DMSans',
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
