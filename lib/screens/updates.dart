import 'package:flutter/material.dart';
import 'package:whatssap_clone/colors.dart';
import 'package:whatssap_clone/model.dart';
import 'package:whatssap_clone/screens/camera.dart';

// ignore: must_be_immutable
class updates extends StatefulWidget {
  updates({super.key});

  @override
  State<updates> createState() => _updatesState();
}

class _updatesState extends State<updates> {
  final customColor = myColors();

  bool isOpen = false;

  String defaultValue = "hii";

  List<String> dropdownItems = ["one", "two", "three", "four", "five"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(children: [
          ListTile(
              minVerticalPadding: 20,
              title: Text("Status",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              trailing: PopupMenuButton(
                itemBuilder: (context) => [
                  PopupMenuItem(child: Text("Muted updates")),
                  PopupMenuItem(child: Text("Status privacy"))
                ],
              )),

          ///my Status tile
          ListTile(
              title: Text("My status",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
              leading: Stack(alignment: Alignment.bottomRight, children: [
                CircleAvatar(
                    radius: 30, backgroundColor: customColor.primaryColor),
                CircleAvatar(
                    radius: 15,
                    backgroundColor: customColor.secondaryGreen,
                    child: Icon(Icons.add, color: Colors.white))
              ]),
              subtitle: Text("Tap to add status update",
                  style: TextStyle(fontSize: 17))),

          /////Recent updates
          ListTile(title: Text("Recent updates")),
          SingleChildScrollView(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 150,
              child: ListView.builder(
                physics: NeverScrollableScrollPhysics(),
                itemCount: 2,
                itemBuilder: (context, index) => ListTile(
                    title: Text(content[index].name,
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        )),
                    subtitle:
                        Text(content[1].date, style: TextStyle(fontSize: 17)),
                    leading: CircleAvatar(
                        radius: 30,
                        backgroundColor: customColor.secondaryGreen,
                        child: Image.asset(content[index].imagePath))),
              ),
            ),
          ),

          ///viewed updates
          ListTile(
              onTap: () {
                setState(() {
                  isOpen = !isOpen;
                });
              },
              title: Text("Viwed updates"),
              trailing: Icon(Icons.arrow_drop_down_sharp)),
          if (isOpen)
            Expanded(
              child: Container(
                height: MediaQuery.of(context).size.height * 0.5,
                width: MediaQuery.of(context).size.width,
                child: Expanded(
                  child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                      itemCount: 5,
                      itemBuilder: ((context, index) => ListTile(
                            leading: CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                              child: Image.asset(content[index].imagePath),
                            ),
                            title: Text(
                              content[index].name,
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            subtitle: Text(content[index].date,
                                style: TextStyle(fontSize: 17)),
                          ))),
                ),
              ),
            ),

          ///divider
          Divider(
            thickness: 2,
          ),

          /// channels for follow section
          ListTile(
            title: Text("Channels",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
            subtitle: Text(
                "Stay udated on topics that matter to you.Find channels to follow below.",
                style: TextStyle(fontSize: 17)),
            trailing: Icon(Icons.add),
          ),
          SizedBox(
            height: 10,
          ),
////celebreties profiel list
          Container(
            height: 200,
            width: double.infinity,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 20,
                itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(
                        left: 15,
                      ),
                      child: ClipRRect(
                          child: Container(
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey, width: 0.5),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        width: 160,
                        height: 250,
                        child: Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CircleAvatar(
                                      radius: 35,
                                      backgroundColor: Colors.white,
                                      foregroundImage:
                                          AssetImage("assets/images/boy.png"),
                                    ),
                                    CircleAvatar(
                                      radius: 16,
                                      backgroundColor: Colors.white,
                                      child: Image.asset(
                                        "assets/images/verified.png",
                                      ),
                                    )
                                  ]),
                              Text("Anurag",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              Container(
                                height: 35,
                                width: 150,
                                child: ElevatedButton(
                                    style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30)),
                                        backgroundColor: customColor.shadGreen),
                                    onPressed: () {},
                                    child: Text("Follow",
                                        style: TextStyle(
                                            fontSize: 17,
                                            color: customColor.primaryColor))),
                              )
                            ],
                          ),
                        ),
                      )),
                    )),
          ),
          Container(
            height: 150,
          )
        ]),
        //floating Action button
        floatingActionButton:
            Wrap(direction: Axis.vertical, spacing: 20, children: [
          Container(
            height: 50,
            width: 50,
            child: FloatingActionButton(
                onPressed: () {},
                child: Icon(Icons.edit, color: customColor.primaryColor),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
                backgroundColor: customColor.shadGreen),
          ),
          FloatingActionButton(
            onPressed: () {},
            child: IconButton(
                icon: Icon(Icons.camera_alt),
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => camera()));
                }),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            backgroundColor: customColor.primaryColor,
          ),
        ]));
  }
}

////////////list tile
/////listTille
class listModel extends StatelessWidget {
  final customColor = myColors();
  final String imagePath;
  final String title;
  final String subtitle;
  listModel(
      {required this.title, required this.imagePath, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
          backgroundColor: customColor.secondaryGreen,
          radius: 30,
          child: Image.asset(imagePath)),
      title: Text(title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
      subtitle: Text(
        subtitle,
        style: TextStyle(fontSize: 17),
      ),
    );
  }
}
