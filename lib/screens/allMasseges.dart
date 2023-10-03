import 'package:flutter/material.dart';
import 'package:whatssap_clone/colors.dart';
import 'package:whatssap_clone/model.dart';

class allMassege extends StatelessWidget {
  final customColor = myColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      ////appBar
      appBar: AppBar(
          title:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text("Select contact",
                style: TextStyle(
                    color: Colors.white, fontWeight: FontWeight.normal)),
            Text("${content.length} contacts",
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.normal,
                    fontSize: 15))
          ]),
          //search button and menu button
          actions: [
            Icon(Icons.search),
            PopupMenuButton(
              itemBuilder: (context) => [
                PopupMenuItem(child: Text("Invite a friend")),
                PopupMenuItem(child: Text("Contacts")),
                PopupMenuItem(child: Text("Refresh")),
                PopupMenuItem(child: Text("Help")),
              ],
            )
          ]),

      ///screen body
      body: ListView(children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 20),

          ///new group option
          child: ListTile(
            leading: CircleAvatar(
                radius: 25,
                backgroundColor: customColor.primaryColor,
                child: Icon(Icons.group)),
            title: Text("New group",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20)),
          ),
        ),
        //new contact option
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ListTile(
            leading: CircleAvatar(
                radius: 25,
                backgroundColor: customColor.primaryColor,
                child: Icon(Icons.person_add)),
            title: Text("New contact",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
            trailing: Icon(
              Icons.qr_code,
            ),
          ),
        ),
        //new community option

        ListTile(
            leading: CircleAvatar(
              radius: 25,
              backgroundColor: customColor.primaryColor,
              child: Icon(Icons.group),
            ),
            title: Text("New comminity",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),

        //hading=contacts on whatssap
        ListTile(
          title: Text("Contacts on WhattsApp"),
        ),
////all contacts list
        Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          child: Expanded(
            child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          foregroundImage:
                              AssetImage(content[index].imagePath)),
                      title: Text(content[index].name,
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20)),
                      subtitle: Text("Hey there! I am using WhatsApp",
                          style: TextStyle(
                            fontSize: 17,
                          )));
                },
                itemCount: content.length),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.share, color: Colors.grey.shade700),
              ),
              title: Text("Share invite link",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ),
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.grey,
                child: Icon(Icons.question_mark, color: Colors.grey.shade700),
              ),
              title: Text("Contacts help",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold))),
        ),
      ]),
    );
  }
}
