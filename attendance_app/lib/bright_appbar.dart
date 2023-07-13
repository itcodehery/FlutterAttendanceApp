import 'package:flutter/material.dart';

class BrightMusicAppBar extends StatelessWidget {
  const BrightMusicAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'Bright Music Academy',
        style: TextStyle(
          color: Colors.white,
          fontFamily: 'SFProDisplay',
        ),
      ),
      actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 20),
            child: GestureDetector(
              onTap: () {},
              child: const Text("SIGN IN",
                  style: TextStyle(fontSize: 14, fontFamily: 'SFProDisplay')),
            )),
      ],
      centerTitle: false,
      backgroundColor: const Color.fromRGBO(229, 115, 115, 1),
    );
  }
}
