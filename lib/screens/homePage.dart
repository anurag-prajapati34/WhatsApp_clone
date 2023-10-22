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

class _homePageState extends State<homePage>
    with SingleTickerProviderStateMixin {
  late TabController _controller;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    _controller.addListener(() {
      setState(() {});
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
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

          //search button for appbar
          Padding(
            padding: _controller.index == 1 || _controller.index == 3
                ? EdgeInsets.all(8.0)
                : EdgeInsets.all(0),
            child: _controller.index == 1 || _controller.index == 3
                ? Icon(Icons.search)
                : null,
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
              controller: _controller,
              labelColor: Colors.white,
              labelStyle: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
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
                controller: _controller,
                children: [community(), chats(), updates(), calls()]))
      ]),
      ////floating action button
    );
  }
}
