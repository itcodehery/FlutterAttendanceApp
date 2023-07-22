import 'package:flutter/material.dart';
import 'package:attendance_app/instrument_appbar.dart';

class InstrumentsPage extends StatefulWidget {
  const InstrumentsPage({Key? key}) : super(key: key);

  @override
  InstrumentsPageState createState() => InstrumentsPageState();
}

class InstrumentsPageState extends State<InstrumentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: InstrumentAppBar(),
    );
  }
}
