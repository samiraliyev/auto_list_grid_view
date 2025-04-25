import 'package:flutter/material.dart';

import 'auto_list_grid_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Auto List/Grid View Demo',
      home: const HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Auto List/Grid View')),
      body: AutoListGridView(
        itemCount: 20,
        itemBuilder: (context, index) => Card(
          color: Colors.blueAccent.shade100,
          child: Center(
            child: Text(
              'Item $index',
              style: const TextStyle(fontSize: 18, color: Colors.white),
            ),
          ),
        ),
        padding: const EdgeInsets.all(16),
        breakpoint: 600, // default
        gridCrossAxisCount: 3, // default 2, you can customize
      ),
    );
  }
} 