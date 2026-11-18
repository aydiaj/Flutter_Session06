import 'package:flutter/material.dart';

void main() => runApp(const ExplorerApp());

class ExplorerApp extends StatelessWidget {
  const ExplorerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text('Follow the widget tree')),
        body: const Center(
          child: Text('A Text widget inside Center inside Scaffold'),
        ),
      ),
    );
  }
}
