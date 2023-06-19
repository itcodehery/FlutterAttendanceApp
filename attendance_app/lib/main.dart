import 'package:flutter/material.dart';

void main() {
  runApp(const Attendre());
}

class Attendre extends StatefulWidget {
  const Attendre({Key? key}) : super(key: key);

  @override
  AttendreState createState() => AttendreState();
}

class AttendreState extends State<Attendre> {
  static String printedName = "Enniki Ariyaam";
  String titleText = " ";
  String subtitleText = " ";
  final List<String> coursesAvailable = [
    'Piano',
    'Keyboard',
    'Guitar',
    'Vocals',
  ];
  Widget createListTile(String en) {
    return ListTile(
      title: Text(en),
      trailing: const Icon(Icons.add),
      onTap: () {},
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text(
              'Attendre',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            centerTitle: true,
            backgroundColor: Colors.red[300],
          ),
          // bottomNavigationBar: BottomNavigationBar(
          //   backgroundColor: Colors.red[300],
          //   items:
          // ),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Mark'),
            backgroundColor: Colors.red[300],
            icon: const Icon(Icons.add_box_outlined),
          ),
          body:ListView.builder(
            itemCount: coursesAvailable.length,
            itemBuilder: (BuildContext context, int index) {
            return ListTile(
            title: Text(coursesAvailable.elementAt(index)),
            trailing: const Icon(Icons.add),
            onTap: () {},
            );
            }
          )),
    );
  }
}
