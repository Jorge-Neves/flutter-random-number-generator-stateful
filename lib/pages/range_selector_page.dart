import 'package:flutter/material.dart';
import 'package:random_number_generator/pages/randomizer_page.dart';

import '../widgets/rangeSelectorForm.dart';

class RangeSelectorPage extends StatefulWidget {
  const RangeSelectorPage({super.key});

  @override
  State<RangeSelectorPage> createState() => _RangeSelectorPageState();
}

class _RangeSelectorPageState extends State<RangeSelectorPage> {
  final formKey = GlobalKey<FormState>();
  // ignore: unused_field
  int _min = 0;
  // ignore: unused_field
  int _max = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Select Range'),
      ),
      body: RangeSelectorForm(
        formKey: formKey,
        valueSetterMin: (value) => _min = value,
        valueSetterMax: (value) => _max = value,
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.arrow_forward),
        onPressed: () {
          if (formKey.currentState?.validate() == true) {
            formKey.currentState?.save();
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: ((context) => RandomizerPage(min: _min, max: _max)),
              ),
            );
          }
        },
      ),
    );
  }
}
