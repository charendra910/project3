import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

void main() {
  runApp(SwitchPage());
}

class SwitchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SwitchScreen(),
    );
  }
}

class SwitchScreen extends StatefulWidget {
  @override
  _SwitchScreenState createState() => _SwitchScreenState();
}

class _SwitchScreenState extends State<SwitchScreen> {
  bool isSelected = true;
  var darkColor = Colors.black;
  var lightColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: isSelected ? darkColor : lightColor,
      appBar: AppBar(
        title: Text('switch page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              'Light',
              style: TextStyle(fontSize: 20,color: isSelected ? lightColor : darkColor),
            ),
            Switch(
              value: isSelected,
              onChanged: (v) {
                setState(() {
                  isSelected = v;
                });
                Fluttertoast.showToast(
                    msg: "This is Center Short Toast",
                    toastLength: Toast.LENGTH_SHORT,
                    gravity: ToastGravity.CENTER,
                    timeInSecForIosWeb: 1,
                    backgroundColor: Colors.red,
                    textColor: Colors.white,
                    fontSize: 16.0);
              },
            ),
            Text(
              'Dark',
              style: TextStyle(fontSize: 20,color: isSelected ? lightColor : darkColor),
            ),
          ],
        ),
      ),
    );
  }
}