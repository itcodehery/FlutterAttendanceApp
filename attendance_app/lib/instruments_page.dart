//instrument ui to be designed
import 'package:attendance_app/homepage.dart';
import 'package:attendance_app/instrumentcard.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/instrument_appbar.dart';
import 'package:attendance_app/navigationbottom.dart';

class InstrumentsPage extends StatefulWidget {
  const InstrumentsPage({Key? key}) : super(key: key);

  @override
  InstrumentsPageState createState() => InstrumentsPageState();
}

class InstrumentsPageState extends State<InstrumentsPage> {
  final List<String> instruments = [
    "Keyboard",
    "Guitar",
    "Piano",
    "Vocals",
    "Violin"
  ];

  Widget instrumentsMarkList(List<String> instruments) {
    return Column(
      children: [
        for (var item in instruments)
          Card(
              color: const Color.fromARGB(255, 30, 30, 30),
              child: ListTile(
                  title: IconButton(
                      highlightColor: Colors.transparent,
                      splashColor: Colors.transparent,
                      hoverColor: Colors.transparent,
                      icon: const Icon(Icons.check_circle),
                      onPressed: () {}))),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PreferredSize(
          preferredSize: Size.fromHeight(56), child: InstrumentAppBar()),
      bottomNavigationBar: const NavigationBottom(),
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const InstrumentCard(),
              const SizedBox(height: 10),
              const Text("STUDENTS"),
              instrumentsList(instruments),
            ],
          )),
    );
  }
}
