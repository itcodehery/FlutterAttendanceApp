import 'package:flutter/material.dart';
import 'package:attendance_app/homepage.dart';

void main() {
  runApp(const Attendre());
}

class Attendre extends StatefulWidget {
  const Attendre({Key? key}) : super(key: key);

  @override
  AttendreState createState() => AttendreState();
}

//contains the Home page with the list builder
//for the list of students currently in each
//course
class AttendreState extends State<Attendre> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const Homepage(),
      theme: ThemeData(
          fontFamily: 'SFProDisplay',
          primaryColor: const Color.fromARGB(255, 255, 255, 255),
          canvasColor: const Color.fromARGB(255, 20, 20, 20)),
    );
  }
}
