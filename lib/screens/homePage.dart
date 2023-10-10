import 'package:flutter/material.dart';
import 'package:whatssap_clone/screens/calls.dart';
import 'package:whatssap_clone/screens/camera.dart';
import 'package:whatssap_clone/screens/chats.dart';
import 'package:whatssap_clone/screens/community.dart';
import 'package:whatssap_clone/screens/updates.dart';

class homePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _homePageState();
  }
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("WhatsApp"),

          ////appbar actions buttons
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: IconButton(
                  onPressed: () {
                    //navigating to camer
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => camera()));
                  },
                  icon: Icon(Icons.camera_alt_outlined)),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search),
            ),
            PopupMenuButton(
                color: Colors.white,
                itemBuilder: (context) => [
                      PopupMenuItem(child: Text("New group"), value: 1),
                      PopupMenuItem(child: Text("New broadcast"), value: 2),
                      PopupMenuItem(child: Text("Linked devices"), value: 3),
                      PopupMenuItem(child: Text("Starred messages"), value: 4),
                      PopupMenuItem(child: Text("Payments"), value: 5),
                      PopupMenuItem(child: Text("Settings"), value: 6),
                    ])
          ],
        ),

        ///////////////body of appp////////
        body: Column(children: [
          Container(
            color: Color(0xff075e55),
            child: TabBar(
                labelColor: Colors.white,
                labelStyle:
                    TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                indicatorColor: Colors.white,
                tabs: [
                  Container(child: Tab(icon: Icon(Icons.group))),

                  ///chats
                  Container(
                    child: Tab(
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                          Text("Chats"),
                          CircleAvatar(
                              radius: 10,
                              backgroundColor: Colors.white,
                              child: Center(
                                child: Text("3",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
                              ))
                        ])),
                  ),

                  ///updates
                  Tab(text: "Updates"),
                  Tab(text: "Calls"),
                ]),
          ),
          Flexible(
              flex: 1,
              child: TabBarView(
                  children: [community(), chats(), updates(), calls()]))
        ]),
        ////floating action button
      ),
    );
  }
}
