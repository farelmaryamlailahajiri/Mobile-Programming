import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {
  int counter = 0;

  void increase() {
    setState(() {
      counter++;
    });
  }

  void decrease() {
    setState(() {
      if (counter <= 0) {
        return;
      }
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsetsGeometry.only(right: 20, left: 20),
          child: Text("Counter $counter"),
        ),
        Row(
          children: [
            Padding(
              padding: EdgeInsetsGeometry.only(right: 20, left: 20),
              child: Row(
                children: [
                  ElevatedButton(onPressed: increase, child: Text("++")),
                  SizedBox(width: 20),
                  ElevatedButton(onPressed: decrease, child: Text("--")),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
