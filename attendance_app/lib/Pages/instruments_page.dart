import 'package:attendance_app/Pages/homepage.dart';
import 'package:attendance_app/Pages/Instrument%20Content/instrumentcard.dart';
import 'package:flutter/material.dart';

class InstrumentsPage extends StatefulWidget {
  const InstrumentsPage({Key? key}) : super(key: key);

  @override
  InstrumentsPageState createState() => InstrumentsPageState();
}

class InstrumentsPageState extends State<InstrumentsPage> {
  Widget instrumentsMarkList() {
    Map<String, String> students = {
      "Sahana": "3:00pm - 4:00pm",
      "Tejaswini": "4:00pm - 6:00pm",
      "Ivaan": "3:00pm - 5:00pm"
    };

    return Column(
      children: [
        const CategoryTitleText(categoryTitle: "Students"),
        for (var item in students.keys)
          Card(
            color: const Color.fromARGB(255, 30, 30, 30),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                side: BorderSide(color: Colors.white10, width: 2)),
            child: ListTile(
              title: Text(
                item,
                style: const TextStyle(color: Colors.white),
              ),
              subtitle: Text(
                students[item]!,
                style: const TextStyle(color: Colors.white, fontSize: 12),
              ),
              trailing: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(30))),
                    backgroundColor: Colors.white10),
                onPressed: () {},
                child:
                    const Text("MARK", style: TextStyle(color: Colors.white)),
              ),
            ),
          ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              instrumentsMarkList(),
            ],
          )),
    );
  }
}
