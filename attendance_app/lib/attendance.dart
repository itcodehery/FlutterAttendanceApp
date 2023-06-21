import 'package:flutter/material.dart';

class Attendance extends StatefulWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  AttendanceState createState() => AttendanceState();
}

class AttendanceState extends State<Attendance> {
  Map<String, String> allStudents = {
    "001": "Sahana",
    "002": "Saanvi",
    "003": "Lalith",
    "004": "Tejaswini",
    "005": "Rhea",
  };

  Widget createListTile(String value, String keyd) {
    return Column(children: [
      ListTile(
        title: Text(value),
        leading: Text(
          keyd,
          style: const TextStyle(fontSize: 12),
        ),
        trailing: const Icon(Icons.add),
        onTap: () {},
      ),
      const SizedBox(
        height: 20,
      ),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red[300],
          title: const Text("Mark Attendance"),
        ),
        body: Column(
          children: [
            ListView.builder(
              itemCount: allStudents.length,
              itemBuilder: (context, index) {
                return createListTile(allStudents.keys.elementAt(index),
                    allStudents.values.elementAt(index));
              },
            )
          ],
        ));
  }
}
