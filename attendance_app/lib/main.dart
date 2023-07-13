import 'package:flutter/material.dart';
import 'package:attendance_app/dropdown.dart';
import 'package:attendance_app/navigationbottom.dart';
import 'package:attendance_app/bright_appbar.dart';

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
      home: Scaffold(
          //made appbar into its own widget class in bright_appbar.dart
          appBar: const PreferredSize(
              preferredSize: Size.fromHeight(56), child: BrightMusicAppBar()),
          //navbar is its own widget in navigationbottom.dart
          bottomNavigationBar: const NavigationBottom(),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Mark'),
            backgroundColor: Colors.red[300],
            icon: const Icon(Icons.add_box_outlined),
          ),
          body: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: EdgeInsets.only(left: 20),
                child: Text(
                  "COURSE SELECTED",
                  style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'SFProDisplay',
                      letterSpacing: 2),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              CourseSelectionDropdown(),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
    );
  }
}
