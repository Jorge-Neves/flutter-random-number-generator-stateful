import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  const RandomizerPage({required this.min, required this.max, super.key});

  final int min, max;

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random"),
      ),
    );
  }
}
