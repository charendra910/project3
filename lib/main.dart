import 'package:flutter/material.dart';
import 'package:project2/bottom_nav_screen.dart';
import 'package:project2/dropdown_screen.dart';
import 'package:project2/home_screen.dart';
import 'package:project2/productpage.dart';
//import 'package:project2/counter_page.dart';
//import 'package:project2/login_page.dart';
//import 'package:project_learn_youtub/home_page.dart';

//import 'col_row_test.dart';

void main() {
  runApp(const MyApp());
  // home: Container(
  //  color: Colors.yellow,
  // child: Text('hi, rachid'),
  // ),
  //));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    //return MaterialApp(home: ColRowText());

    //return MaterialApp(home: CounterPage());

   // return MaterialApp(home:LoginPage());

   //return MaterialApp(home: Dashboard());

   //return const MaterialApp(home: ProductPage("ProductName"));

   //return MaterialApp(home: SwitchPage());

   //return MaterialApp(home: fluttertoast());

     //return MaterialApp(home: BottomNavScreen());

//return MaterialApp(home: Home_Screen());
    return MaterialApp(home: CustomDropdown());

  }
  
  fluttertoast() {}
}