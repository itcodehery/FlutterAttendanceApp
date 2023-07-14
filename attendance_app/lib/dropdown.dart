import 'package:flutter/material.dart';

class CourseSelectionDropdown extends StatefulWidget {
  const CourseSelectionDropdown({Key? key}) : super(key: key);

  @override
  CourseSelectionDropdownState createState() => CourseSelectionDropdownState();
}

class CourseSelectionDropdownState extends State<CourseSelectionDropdown> {
  String selectedCourse = "Keyboard";

  List<DropdownMenuItem<String>> courses = [
    const DropdownMenuItem(child: Text("Keyboard"), value: "Keyboard"),
    const DropdownMenuItem(child: Text("Piano"), value: "Piano"),
    const DropdownMenuItem(child: Text("Violin"), value: "Violin"),
    const DropdownMenuItem(child: Text("Guitar"), value: "Guitar"),
    const DropdownMenuItem(child: Text("Vocals"), value: "Vocals"),
  ];

  //future: to build a map to map emojis to each course selected

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Card(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        color: const Color(0xFFE57373),
        child: Align(
          alignment: Alignment.center,
          child: Padding(
              padding: const EdgeInsets.fromLTRB(20, 4, 20, 4),
              child: SizedBox(
                width: 380,
                child: DropdownButton<String>(
                  alignment: Alignment.center,
                  dropdownColor: const Color(0xFFE57373),
                  style: const TextStyle(
                      fontFamily: 'SFProDisplay',
                      fontSize: 18,
                      fontWeight: FontWeight.w500,
                      color: Color.fromARGB(255, 255, 235, 234)),
                  isExpanded: true,
                  underline: const SizedBox(),
                  items: courses,
                  value: selectedCourse,
                  onChanged: (value) {
                    setState(() {
                      selectedCourse = value!;
                    });
                  },
                ),
              )),
        ),
      ),
    );
  }
}
