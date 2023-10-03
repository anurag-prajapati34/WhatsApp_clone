import 'package:flutter/material.dart';

class callModel {
  String name;
  String dateTime;
  Icon callgoingIcon;
  Icon callIcon;
  callModel(
      {required this.name,
      required this.dateTime,
      required this.callIcon,
      required this.callgoingIcon});
}

List<callModel> callList = [
  callModel(
      name: "Sumit",
      dateTime: "21 september 12:20 pm",
      callIcon: Icon(
        Icons.call,
        color: Color(0xff075e55),
      ),
      callgoingIcon: Icon(
        Icons.call_made,
        color: Color(0xff075e55),
        size: 20,
      )),
  callModel(
      name: "Anil",
      dateTime: "9 september 4:20 pm",
      callIcon: Icon(
        Icons.video_call,
        color: Color(0xff075e55),
      ),
      callgoingIcon: Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 20,
      )),
  callModel(
      name: "Yash",
      dateTime: "9 september 4:20 pm",
      callIcon: Icon(
        Icons.video_call,
        color: Color(0xff075e55),
      ),
      callgoingIcon: Icon(
        Icons.call_missed,
        color: Colors.red,
        size: 20,
      )),
];
