import 'package:flutter/material.dart';

class community extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        Text("hell0"),
        Center(
          child: Container(
              width: double.infinity,
              height: double.infinity,
              color: Colors.blue,
              child: ListView.builder(
                  itemCount: 4,
                  itemBuilder: (context, index) => Text("hell0"))),
        )
      ],
    ));
  }
}
