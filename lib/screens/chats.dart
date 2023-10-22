import 'package:flutter/material.dart';
import 'package:whatssap_clone/colors.dart';
import 'package:whatssap_clone/model.dart';
import 'package:whatssap_clone/screens/allMasseges.dart';

// ignore: must_be_immutable
class chats extends StatelessWidget {
  final CustomColor = myColors();
  var totalCount;

  chats({super.key});

  get index => null;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
          itemCount: content.length,
          itemBuilder: (context, index) => ListTile(
            ////profile image
            leading: CircleAvatar(
              radius: 30,
              backgroundColor: Color(0xff075e55),
              foregroundImage: AssetImage(content[index].imagePath),
            ),

            ///name of person
            title: Text(content[index].name,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

            ///massege or subtitle
            subtitle:
                Text(content[index].massege, style: TextStyle(fontSize: 17)),
            ////date and message number
            trailing: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  //date
                  Text(content[index].date,
                      style: TextStyle(
                          color: content[index].massegCount > 0
                              ? Color(0xff0fce5e)
                              : Colors.grey,
                          fontSize: 16)),

                  ///massege count

                  content[index].massegCount > 0
                      ? CircleAvatar(
                          radius: 10,
                          backgroundColor: Color(0xff0fce5e),
                          child: Text(content[index].massegCount.toString(),
                              style:
                                  TextStyle(fontSize: 15, color: Colors.white)))
                      : Text("")
                ]),
          ),
        ),

        /////floadting Aciton button
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff075e55),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => allMassege()));
            },
            child: IconButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => allMassege()));
                },
                icon: Icon(Icons.chat))));
  }
}

///json model =it is used when we need to provide multiple information dynamicaly in list and then in app

