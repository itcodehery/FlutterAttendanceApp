import 'package:flutter/material.dart';

class BrightMusicAppBar extends StatelessWidget {
  const BrightMusicAppBar({
    super.key,
  });

  Widget courseCard(String courseTitle, TimeOfDay timings) {
    return Card(
        child: SizedBox(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
          child: Text(courseTitle)),
    ));
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 20, 20, 20),
      title: const Text(
        'Bright Music Academy',
      ),
      centerTitle: true,
      shadowColor: Colors.transparent,
    );
  }
}
