import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "CAFE",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Container(
            height: 100,
            child: Column(
              children: [
                Text(
                  "Counter : $counter ",
                  
                ),
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                     print("Button clicked");
                      counter++;
                      print(counter);
                      });
                    },
                    child:  Text('Press Me'))
              ],
            )),
      ),
    );
  }
}
