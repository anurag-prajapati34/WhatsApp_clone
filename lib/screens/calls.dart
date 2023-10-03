import 'package:flutter/material.dart';
import 'package:whatssap_clone/colors.dart';
import 'package:whatssap_clone/screens/callsModel.dart';

class calls extends StatelessWidget {
  final customColor = myColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
          children: [
            SizedBox(
              height: 25,
            ),
            ListTile(
              leading: CircleAvatar(
                  radius: 30,
                  backgroundColor: customColor.primaryColor,
                  child: Icon(
                    Icons.link_outlined,
                    color: Colors.white,
                    size: 30,
                  )),
              title: Text("Create call link",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              subtitle: Text("Share a link for your WhatsApp call",
                  style: TextStyle(fontSize: 17)),
            ),
            ListTile(
                title: Text("Recent",
                    style:
                        TextStyle(fontSize: 19, fontWeight: FontWeight.bold))),
            Container(
              height: MediaQuery.of(context).size.height,
              width: double.infinity,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: callList.length,
                itemBuilder: (context, index) {
                  return ListTile(
                      leading: CircleAvatar(
                          radius: 30,
                          foregroundImage: AssetImage("assets/images/boy.png")),
                      title: Text(callList[index].name,
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      subtitle: Row(children: [
                        callList[index].callgoingIcon,
                        SizedBox(
                          width: 10,
                        ),
                        Text("${callList[index].dateTime}",
                            style: TextStyle(fontSize: 17))
                      ]),
                      trailing:
                          Icon(Icons.call, color: customColor.primaryColor));
                },
              ),
            )
          ],
        ),
        //call floating button
        floatingActionButton: FloatingActionButton(
            backgroundColor: Color(0xff075e55),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            onPressed: () {},
            child: Icon(
              Icons.add_call,
            )));
  }
}
