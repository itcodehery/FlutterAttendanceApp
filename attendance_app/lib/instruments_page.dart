import 'package:flutter/material.dart';
import 'package:attendance_app/instrument_appbar.dart';

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

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: instruments.length,
        child: Scaffold(
            appBar: PreferredSize(
          preferredSize: const Size.fromHeight(300),
          child: InstrumentAppBar(),
        )));
  }
}
