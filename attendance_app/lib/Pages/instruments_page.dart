import 'package:attendance_app/Pages/AddPage%20Pages/add_Student.dart';
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
      "Sahana": "Keyboard",
      "Tejaswini": "Keyboard",
      "Ivaan": "Piano",
      "Aditya": "Violin",
      'Taashini': 'Vocals',
    };

    List<String> timingsWeekdays = ['4:00pm', '5:00pm', '6:00pm', '7:00pm'];
    List<String> pagedInstruments = [
      "All",
      "Keyboard",
      "Guitar",
      "Piano",
      "Vocals",
      "Violin"
    ];

    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(
              width: 2,
            ),
            Flex(direction: Axis.vertical, children: [
              const SizedBox(
                height: 10,
              ),
              TimingDropMenu(
                  droplist: timingsWeekdays,
                  timinglabel: timingsWeekdays.first),
              const SizedBox(height: 10),
            ]),
            const SizedBox(width: 10),
            Flex(direction: Axis.vertical, children: [
              const SizedBox(
                height: 10,
              ),
              TimingDropMenu(
                  droplist: pagedInstruments, timinglabel: instruments.first),
              const SizedBox(height: 10),
            ]),
          ],
        ),
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

class TimingDropMenu extends StatelessWidget {
  const TimingDropMenu({
    super.key,
    required this.droplist,
    required this.timinglabel,
  });

  final List<String> droplist;
  final String timinglabel;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(color: Colors.white38, width: 2),
          borderRadius: BorderRadius.circular(10)),
      child: DropdownMenu(
        trailingIcon: const Icon(Icons.arrow_drop_down, color: Colors.white54),
        width: 320 / 2 - 10,
        inputDecorationTheme: InputDecorationTheme(
            activeIndicatorBorder: BorderSide(color: Colors.red[300]!),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colors.white54, width: 5))),
        dropdownMenuEntries: [
          for (var item in droplist) DropdownMenuEntry(value: item, label: item)
        ],
        textStyle: const TextStyle(color: Colors.white54),
        menuStyle: const MenuStyle(
          side: MaterialStatePropertyAll(
              BorderSide(color: Colors.white, width: 2)),
        ),
        initialSelection:
            DropdownMenuEntry(value: droplist.first, label: droplist.first),
      ),
    );
  }
}
