import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const Attendre());
}

class Attendre extends StatefulWidget {
  const Attendre({Key? key}) : super(key: key);

  @override
  AttendreState createState() => AttendreState();
}

class AttendreState extends State<Attendre> {
  static String printedName = "Enniki Ariyaam";

  Card createNewCard(String getString) {
    return Card(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(5)),
            side: BorderSide.none),
        margin: const EdgeInsets.all(20),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
          child: Text(getString),
        ));
  }

  Card selectCourseCard() {
    const String title = "Today's Classes";
    return const Card(
      child: SizedBox(
        height: 60,
        width: 200,
        child: Padding(
          padding: EdgeInsets.fromLTRB(50, 20, 50, 20),
          child: Column(
            children: [
              Text(title),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Attendre',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red[300],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   backgroundColor: Colors.red[300],
          //   items:
          // ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Mark'),
            backgroundColor: Colors.red[300],
            icon: const Icon(Icons.add_box_outlined),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              createNewCard(printedName),
              createNewCard("Hi"),
              selectCourseCard(),
            ],
          )),
    );
  }
}
