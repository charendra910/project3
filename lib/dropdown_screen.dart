import 'package:flutter/material.dart';

class CustomDropdown extends StatefulWidget {
  const CustomDropdown({Key? key}) : super(key: key);

  @override
  State<CustomDropdown> createState() => _CustomDropdownState();
}

class _CustomDropdownState extends State<CustomDropdown> {
  String selectedFruit = 'Apple';
  List<String> fruits = ['Apple', 'Banana', 'Guava'];

  List<Student> students=[
   Student('Harendra','21SOECE11607'),
   Student('Pawan','21SOECE111'),
   Student('Angad','21SOECE114'),

  ]

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: DropdownButton<String>(
          value: selectedFruit,
          items: fruits.map((fruit) {
            return DropdownMenuItem<String>(
              value: students,
              child: ListTile(title: Text(students.name,students.),),
            );
          }).toList(),
          onChanged: (v) {
            setState(() {
              selectedFruit = v!;
            });
          },
        ),
      ),
    );
  }
}