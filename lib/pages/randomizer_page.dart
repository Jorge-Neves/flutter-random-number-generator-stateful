import 'dart:math';

import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  const RandomizerPage({required this.min, required this.max, super.key});

  final int min, max;

  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? _generatedNumber;

  final randomGenerator = Random();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Random Number"),
      ),
      body: Center(
        child: Text(
          _generatedNumber?.toString() ??
              "Click the button to generate your number.",
          style: const TextStyle(fontSize: 17),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text("Generate"),
        onPressed: () {
          setState(() {
            _generatedNumber = widget.min +
                randomGenerator.nextInt(widget.max + 1 - widget.min);
          });
        },
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
