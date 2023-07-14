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
      icon: Icon(Icons.add_box_outlined),
      label: "Attendance",
    )
  ];

  void showModal(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) => AlertDialog(
        content: const Text('Example Dialog'),
        actions: <TextButton>[
          TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Close'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.of(navItems),
      selectedIconTheme: IconThemeData(color: Colors.red[300]),
      selectedItemColor: Colors.red[300],
      unselectedItemColor: Colors.white,
      unselectedIconTheme: const IconThemeData(color: Colors.white),
      showSelectedLabels: true,
      onTap: (value) {
        if (value == 1) {
          showModal(context);
        }
      },
    );
  }
}
