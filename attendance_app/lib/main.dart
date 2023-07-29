import 'package:attendance_app/Pages/Home%20Content/home_appbar.dart';
import 'package:flutter/material.dart';
import 'package:attendance_app/Pages/homepage.dart';
import 'package:attendance_app/Pages/instruments_page.dart';

void main() {
  runApp(const Attendre());
}

class Attendre extends StatefulWidget {
  const Attendre({Key? key}) : super(key: key);

  @override
  AttendreState createState() => AttendreState();
}

//contains the Home page with the list builder
//for the list of students currently in each
//course
class AttendreState extends State<Attendre> {
  int selectedIndex = 0;

  static List<Widget> navigationPages = const [Homepage(), InstrumentsPage()];

  List<BottomNavigationBarItem> navItems = [
    const BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
    const BottomNavigationBarItem(
      icon: Icon(Icons.piano),
      label: "Instruments",
    )
  ];

  void _onTabTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: const PreferredSize(
            preferredSize: Size.fromHeight(56), child: BrightMusicAppBar()),
        body: navigationPages[selectedIndex],
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {},
          backgroundColor: Colors.red[300],
          label: const Text("Add"),
          icon: const Icon(Icons.add),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: List.of(navItems),
          selectedIconTheme: IconThemeData(color: Colors.red[300]),
          selectedItemColor: Colors.red[300],
          unselectedItemColor: const Color.fromARGB(255, 255, 255, 255),
          unselectedIconTheme: const IconThemeData(color: Colors.white),
          showSelectedLabels: true,
          showUnselectedLabels: false,
          currentIndex: selectedIndex,
          onTap: _onTabTapped,
        ),
      ),
      routes: {
        'Home': (context) => const Homepage(),
        'Instruments': (context) => const InstrumentsPage()
      },
      theme: ThemeData(
          fontFamily: 'SFProDisplay',
          primaryColor: const Color.fromARGB(255, 255, 255, 255),
          canvasColor: const Color.fromARGB(255, 20, 20, 20)),
    );
  }
}
