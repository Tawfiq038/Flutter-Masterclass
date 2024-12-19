// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class CounterPage extends StatefulWidget {
  const CounterPage({super.key});

  @override
  State<CounterPage> createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  //variable
  int _counter = 0;

  //method
  void _increment() {
    setState(() {
      _counter++;
    });
  }

  //UI
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "Counter",
          ),
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You've pressed this many times."),
              Text(
                _counter.toString(),
                style: TextStyle(fontSize: 40),
              ),
              ElevatedButton(onPressed: _increment, child: Text("Increment"))
            ],
          ),
        ));
  }
}
