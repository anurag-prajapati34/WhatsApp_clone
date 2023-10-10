import 'package:flutter/material.dart';
import 'package:whatssap_clone/colors.dart';

////creating community screen ui
class community extends StatelessWidget {
  var customColor = myColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
      SizedBox(
        height: 20,
      ),
      ListTile(
          leading: Stack(alignment: Alignment.bottomRight, children: [
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(11)),
              child: Icon(
                Icons.group_add,
                color: Colors.white,
                size: 30,
              ),
            ),
            CircleAvatar(
                radius: 12,
                backgroundColor: customColor.primaryColor,
                child: Icon(Icons.add))
          ]),
          title: Text("New community",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)))
    ]));
  }
}
