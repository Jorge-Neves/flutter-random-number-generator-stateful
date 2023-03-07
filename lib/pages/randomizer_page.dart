import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  const RandomizerPage({super.key});

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
