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
          color: Color.fromARGB(255, 38, 38, 75),
          fontFamily: 'Musicalina',
          fontWeight: FontWeight.normal,
          fontSize: 40,
        ),
      ),
      actions: <Widget>[
        Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 0),
            child: GestureDetector(
              onTap: () {},
              child: const Align(
                alignment: Alignment.centerRight,
                child: DecoratedBox(
                  position: DecorationPosition.foreground,
                  decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      border: Border.symmetric(
                          horizontal: BorderSide(
                              color: Color.fromARGB(255, 38, 38, 75), width: 2),
                          vertical: BorderSide(
                              color: Color.fromARGB(255, 38, 38, 75),
                              width: 2))),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(14, 6, 14, 6),
                    child: Text("SIGN IN",
                        style: TextStyle(
                            color: Color.fromARGB(255, 38, 38, 75),
                            fontSize: 14,
                            fontFamily: 'SFProDisplay')),
                  ),
                ),
              ),
            )),
      ],
      centerTitle: false,
      backgroundColor: Color(0xFFE57373),
    );
  }
}
