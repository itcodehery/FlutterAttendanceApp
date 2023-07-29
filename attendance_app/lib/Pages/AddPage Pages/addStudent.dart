import 'package:flutter/material.dart';

class AddStudent extends StatefulWidget {
  const AddStudent({Key? key}) : super(key: key);

  @override
  State<AddStudent> createState() => _AddStudentState();
}

class _AddStudentState extends State<AddStudent> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                const SizedBox(height: 10),
                TextFormField(
                  decoration: InputDecoration(
                      labelText: 'Student Name',
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(2)),
                      counterText: 'Hello',
                      fillColor: Colors.white),
                  keyboardType: TextInputType.text,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name!';
                    }
                    return null; // Return null if the input is valid.
                  },
                )
              ],
            )),
      ),
    );
  }
}
