import 'package:attendance_app/instruments_page.dart';
import 'package:flutter/material.dart';

class NavigationBottom extends StatefulWidget {
  const NavigationBottom({Key? key}) : super(key: key);

  @override
  NavigationBottomState createState() => NavigationBottomState();
}

class NavigationBottomState extends State<NavigationBottom> {
  List<BottomNavigationBarItem> navItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
      icon: Icon(Icons.piano),
      label: "Instruments",
    )
  ];

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        backgroundColor: const Color.fromARGB(255, 20, 20, 20),
        content: const Text(
          'This feature has not been implemented yet',
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        actions: <TextButton>[
          TextButton(
            style: const ButtonStyle(alignment: Alignment.center),
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text(
              'Close',
              style: TextStyle(
                color: Color.fromARGB(255, 229, 115, 155),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    //build a working bottom nav bar that leads to the instruments page
    //when clicked

    return BottomNavigationBar(
        items: List.of(navItems),
        selectedIconTheme: IconThemeData(color: Colors.red[300]),
        selectedItemColor: Colors.red[300],
        unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
        unselectedIconTheme: const IconThemeData(color: Colors.white),
        showSelectedLabels: true,
        onTap: (value) {
          Navigator.of(context).pop(const InstrumentsPage());
        });
  }
}
