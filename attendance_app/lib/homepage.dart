import 'package:flutter/material.dart';
import 'package:attendance_app/home_appbar.dart';
import 'package:attendance_app/instrument_appbar.dart';
import 'package:attendance_app/instruments_page.dart';
import 'package:attendance_app/navigationbottom.dart';
import 'package:attendance_app/instrumentcard.dart';

class Homepage extends StatefulWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  HomepageState createState() => HomepageState();
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

List<String> instruments = ["Keyboard", "Guitar", "Piano", "Vocals", "Violin"];

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
