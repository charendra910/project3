// import 'dart:developer'; // Import the 'developer' library to use the log function

// import 'package:flutter/material.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({Key? key}) : super(key: key); // Use 'Key?' for the key parameter

//   @override
//   _HomeScreenState createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   bool isSelected = false; // Define a boolean variable for the checkbox value

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Home"),
//       ),
//       body: Container(
//         child: ListTile(
//           leading: Checkbox(
//             value: isSelected,
//             onChanged: (v) {
//               setState(() {
//                 isSelected = v!;
//                 log(isSelected.toString()); // Use 'log' to print to console
//               });
//             },
//           ),
//           title: Text("I agree to the terms and conditions"),
//         ),
        
//       ),
//     );
//   }
// }





import 'package:flutter/material.dart';

class Home_Screen extends StatefulWidget {
  @override
  _Home_ScreenState createState() => _Home_ScreenState();
}

class _Home_ScreenState extends State<Home_Screen> {
  String selectedFruit = 'apple';
  String selectedBranch = 'CE';
  bool agreedToTerms = false; // New variable to track terms agreement

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text("Home Page")),
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Select your favorite fruit as well Branch:"),
            RadioListTile(
              title: Text("Apple"),
              value: 'apple',
              groupValue: selectedFruit,
              onChanged: (value) {
                setState(() {
                  selectedFruit = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("Banana"),
              value: 'banana',
              groupValue: selectedFruit,
              onChanged: (value) {
                setState(() {
                  selectedFruit = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("CE"),
              value: 'ce',
              groupValue: selectedBranch,
              onChanged: (value) {
                setState(() {
                  selectedBranch = value.toString();
                });
              },
            ),
            RadioListTile(
              title: Text("IT"),
              value: 'it',
              groupValue: selectedBranch,
              onChanged: (value) {
                setState(() {
                  selectedBranch = value.toString();
                });
              },
            ),
            SizedBox(height: 16), // Add some space
            CheckboxListTile(
              title: Text("I agree to the terms and conditions"),
              value: agreedToTerms,
              onChanged: (value) {
                setState(() {
                  agreedToTerms = value!;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}