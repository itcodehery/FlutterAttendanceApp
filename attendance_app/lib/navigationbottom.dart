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
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: List.of(navItems),
      selectedIconTheme: IconThemeData(color: Colors.red[300]),
      fixedColor: Colors.red[300],
      onTap: (value) {},
    );
  }
}
