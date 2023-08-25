import 'package:flutter/material.dart';

class CallScreen extends StatelessWidget {
  const CallScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("call"),
      ),
      body: Center(
        child: Text("This is the Call page"),
      ),
    );
  }
}