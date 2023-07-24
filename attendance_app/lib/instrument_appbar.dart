import 'package:flutter/material.dart';

class InstrumentAppBar extends StatelessWidget {
  InstrumentAppBar({
    super.key,
  });

  final List<String> instruments = [
    "Keyboard",
    "Guitar",
    "Piano",
    "Vocals",
    "Violin"
  ];

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      title: const Text(
        'Bright Music Academy',
      ),
      centerTitle: true,
    );
  }
}
