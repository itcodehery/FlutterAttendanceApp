import 'package:flutter/material.dart';
import 'package:attendance_app/Pages/Home%20Content/home_appbar.dart';
import 'package:attendance_app/Pages/instruments_page.dart';
import 'package:attendance_app/Pages/navigationbottom.dart';
import 'package:attendance_app/Pages/Instrument%20Content/instrumentcard.dart';

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
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color: Colors.white10)),
            child: ListTile(
              title: Text(item, style: const TextStyle(color: Colors.white)),
              trailing: const Icon(Icons.chevron_right, color: Colors.white),
              contentPadding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
            )),
    ],
  );
}

List<String> instruments = ["Keyboard", "Guitar", "Piano", "Vocals", "Violin"];

class HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //made appbar into its own widget class in bright_appbar.dart
      //moved appbar to main.dart
      //navbar is its own widget in navigationbottom.dart
      body: Padding(
          padding: const EdgeInsets.all(10),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            const CategoryTitleText(categoryTitle: 'Today'),
            const InstrumentCard(),
            const CategoryTitleText(categoryTitle: 'Courses'),
            instrumentsList(instruments),
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
    return Column(mainAxisAlignment: MainAxisAlignment.start, children: [
      const SizedBox(
        height: 10,
      ),
      Row(children: [
        const SizedBox(width: 10),
        Text(
          categoryTitle,
          style: const TextStyle(
            color: Color.fromARGB(255, 255, 255, 255),
            fontSize: 16,
            letterSpacing: 2,
          ),
          textAlign: TextAlign.start,
        ),
      ]),
      const SizedBox(height: 10),
    ]);
  }
}
