import 'package:flutter/material.dart';

class camera extends StatefulWidget {
  @override
  State<camera> createState() => _cameraState();
}

class _cameraState extends State<camera> {
  static double count2 = 0;
  void navigaton() {
    setState(() {
      count2++;
      if (count2 == 1) {
        count2 = 0;
      }
    });
  }

  ////an function for changing icon on pressed

  int count = 0;
  void onClick() {
    setState(() {
      count++;
      if (count == 3) {
        count = 0;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                height: 100,
              ),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                //cancel button

                IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(
                      Icons.cancel_rounded,
                      color: Colors.white,
                    )),
                //flash button
                IconButton(
                    onPressed: () {
                      onClick();
                    },
                    icon: count == 0
                        ? Icon(
                            Icons.flash_off,
                            color: Colors.white,
                          )
                        : (count == 1
                            ? Icon(
                                Icons.flash_on,
                                color: Colors.white,
                              )
                            : Icon(
                                Icons.flash_auto,
                                color: Colors.white,
                              ))),
              ]),
              Expanded(child: Container()),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15, right: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        ///icon to open photos
                        Icon(
                          Icons.photo,
                          color: Colors.white,
                        ),
                        //button to click phots
                        Stack(alignment: Alignment.center, children: [
                          Icon(
                            Icons.circle_outlined,
                            color: Colors.white,
                            size: 80,
                          ),
                          Icon(
                            Icons.circle,
                            color: Colors.white,
                            size: count2 == 1 ? 50 : 30,
                          )
                        ]),
                        Icon(
                          Icons.recycling,
                          color: Colors.white,
                        )
                      ],
                    ),
                  ),
                  Container(
                      height: 80,
                      color: Colors.black87,
                      child: Center(
                        child: Container(
                          width: 200,
                          child: Row(
                            children: [
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    count2 = 0;
                                  });
                                },
                                child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: count2 == 0
                                            ? Colors.grey.shade800
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      "Video",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2,
                                          fontSize: 15),
                                    ))),
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  setState(() {
                                    count2 = 1;
                                  });
                                },
                                child: Container(
                                    height: 40,
                                    width: 90,
                                    decoration: BoxDecoration(
                                        color: count2 == 1
                                            ? Colors.grey.shade800
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(20)),
                                    child: Center(
                                        child: Text(
                                      "Photo",
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          letterSpacing: 2,
                                          fontSize: 15),
                                    ))),
                              )
                            ],
                          ),
                        ),
                      ))
                ],
              )
            ]),
      ),
    );
  }
}
