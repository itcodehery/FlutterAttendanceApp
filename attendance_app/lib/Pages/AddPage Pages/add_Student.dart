import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final _formKey = GlobalKey<FormState>();

  List<String> instruments = [
    "Keyboard",
    "Guitar",
    "Piano",
    "Vocals",
    "Violin"
  ];

  String studentName = 'Student Name';
  String parentName = 'Parent Name';
  String course = 'No course selected';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(
                    height: 30,
                    child: Align(
                      alignment: Alignment.topCenter,
                      child: Text('Entering new Students details',
                          style: TextStyle(color: Colors.grey)),
                    )),
                BrightTextField(
                  labelText: studentName,
                  formValidator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name!';
                    }
                    return null; // Return null if the input is valid.
                  },
                ),
                BrightTextField(
                    labelText: parentName,
                    formValidator: (value) {
                      if (value == null || value.isEmpty) {
                        return 'Please enter the parent name';
                      } else {
                        setState(() {
                          parentName = value;
                        });
                      }
                      return null;
                    }),
                DropdownMenu(
                  width: 200,
                  dropdownMenuEntries: [
                    for (var item in instruments)
                      DropdownMenuEntry(value: item, label: item)
                  ],
                  label: const Text('Select Course'),
                  textStyle: const TextStyle(color: Colors.white54),
                  menuStyle: const MenuStyle(
                      side: MaterialStatePropertyAll(BorderSide(
                        color: Colors.white54,
                      )),
                      shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(5)),
                          side: BorderSide(color: Colors.white54)))),
                  initialSelection: 'No Course Selected',
                )
              ],
            )),
      ),
    );
  }
}

class BrightTextField extends StatelessWidget {
  const BrightTextField({
    super.key,
    required this.labelText,
    required this.formValidator,
  });

  final String labelText;
  final String? Function(String?)? formValidator;

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      TextFormField(
        decoration: InputDecoration(
            hoverColor: Colors.white,
            focusColor: Colors.red[300],
            labelText: labelText,
            labelStyle: const TextStyle(color: Colors.grey),
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(2),
                borderSide: const BorderSide(color: Colors.grey)),
            enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.white54)),
            focusedBorder: const OutlineInputBorder(
                borderSide:
                    BorderSide(color: Color.fromARGB(255, 229, 115, 115))),
            fillColor: Colors.white),
        keyboardType: TextInputType.text,
        validator: formValidator,
      ),
      const SizedBox(
        height: 20,
      )
    ]);
  }
}
