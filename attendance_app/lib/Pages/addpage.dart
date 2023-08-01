import 'package:attendance_app/Pages/AddPage%20Pages/add_Student.dart';
import 'package:flutter/material.dart';

class Addpage extends StatefulWidget {
  const Addpage({Key? key}) : super(key: key);

  @override
  AddpageState createState() => AddpageState();
}

class AddpageState extends State<Addpage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
          floatingActionButton: FloatingActionButton(
              backgroundColor: Colors.red[300],
              child: const Icon(Icons.add),
              onPressed: () {}),
          appBar: AppBar(
            backgroundColor: const Color.fromARGB(255, 20, 20, 20),
            toolbarHeight: 4,
            bottom: const TabBar(
              tabs: [
                Tab(text: 'Add Student'),
                Tab(text: 'Add Course'),
              ],
              labelColor: Color.fromRGBO(229, 115, 115, 1),
              indicatorColor: Color.fromRGBO(229, 115, 115, 1),
              unselectedLabelColor: Colors.white,
            ),
          ),
          body: const TabBarView(
            children: [
              Center(
                child: AddStudent(),
              ),
              Center(),
            ],
          )),
    );
  }
}
