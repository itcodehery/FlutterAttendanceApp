import 'package:attendance_app/attendance.dart';
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
  final List<String> coursesAvailable = [
    'Piano',
    'Keyboard',
    'Guitar',
    'Vocals',
  ];

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
          bottomNavigationBar: const NavigationBottom(),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            label: const Text('Mark'),
            backgroundColor: Colors.red[300],
            icon: const Icon(Icons.add_box_outlined),
          ),
          body: Column(
            children: [
              const Padding(
                padding: EdgeInsets.fromLTRB(20, 30, 5, 10),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                    child: Text(
                      "Courses Available: ",
                      style: TextStyle(
                        fontSize: 24,
                      ),
                    ),
                  ),
                ),
              ),
              const Divider(
                height: 10,
              ),
              BuildCourseList(coursesAvailable: coursesAvailable),
            ],
          ),
          backgroundColor: const Color.fromARGB(255, 255, 255, 255)),
    );
  }
}

class BuildCourseList extends StatelessWidget {
  const BuildCourseList({
    super.key,
    required this.coursesAvailable,
  });

  final List<String> coursesAvailable;

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Flexible(
              child: SizedBox(
                  child: ListView(
                shrinkWrap: true,
                children: [
                  ListView.builder(
                      itemCount: coursesAvailable.length,
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(coursesAvailable[index]),
                          trailing: const Icon(Icons.add),
                          onTap: () {},
                        );
                      }),
                ],
              )),
            ),
          ],
        ));
  }
}

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  @override
  NavigationBottomState createState() => NavigationBottomState();
}

class NavigationBottomState extends State<NavigationBottom> {
  List<BottomNavigationBarItem> navItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
      icon: Icon(Icons.add_box_outlined),
      label: "Attendance",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.of(navItems),
      selectedIconTheme: IconThemeData(color: Colors.red[300]),
      fixedColor: Colors.red[300],
      onTap: (label) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          Navigator.of(context).pushReplacement(MaterialPageRoute(
            builder: (context) => const Attendance(),
          ));
        });
      },
    );
  }
}
