import 'package:flutter/material.dart';
import 'package:attendance_app/navigationbottom.dart';
import 'package:attendance_app/home_appbar.dart';
import 'package:attendance_app/instrumentcard.dart';

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
  List<String> instruments = [
    "Keyboard",
    "Guitar",
    "Piano",
    "Vocals",
    "Violin"
  ];

  Widget courseCard(String courseTitle, TimeOfDay timings) {
    return Card(
        child: SizedBox(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(100, 10, 100, 10),
          child: Text(courseTitle)),
    ));
  }

  Widget instrumentsList(List<String> instruments) {
    return Column(
      children: [
        for (var item in instruments)
          Card(
            color: const Color.fromARGB(255, 30, 30, 30),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                  child: Row(children: [
                    Text(item,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                        )),
                    const Icon(color: Colors.white, Icons.chevron_right),
                  ]),
                ),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        //made appbar into its own widget class in bright_appbar.dart
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56), child: BrightMusicAppBar()),
        //navbar is its own widget in navigationbottom.dart
        bottomNavigationBar: const NavigationBottom(),
        floatingActionButton: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.red[300],
          child: const Icon(Icons.add),
        ),
        body: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(children: [
              const CategoryTitleText(categoryTitle: 'TODAY'),
              const SizedBox(height: 10),
              const InstrumentCard(),
              const CategoryTitleText(categoryTitle: 'COURSES'),
              Padding(
                  padding: const EdgeInsets.all(5),
                  child: instrumentsList(instruments)),
            ])),
      ),
      theme: ThemeData(
          fontFamily: 'SFProDisplay',
          primaryColor: const Color.fromARGB(255, 255, 255, 255),
          canvasColor: const Color.fromARGB(255, 20, 20, 20)),
    );
  }
}

class CategoryTitleText extends StatelessWidget {
  final String categoryTitle;

  const CategoryTitleText({
    super.key,
    required this.categoryTitle,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      const SizedBox(
        height: 10,
      ),
      Text(
        categoryTitle,
        style: const TextStyle(
          color: Color.fromARGB(255, 255, 255, 255),
          fontSize: 16,
          letterSpacing: 4,
        ),
      ),
      const SizedBox(height: 10),
    ]);
  }
}
