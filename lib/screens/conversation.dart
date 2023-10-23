import 'package:flutter/material.dart';

class conversation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
      leading: InkWell(
        onTap: () {
          Navigator.pop(context);
        },
        child: Row(
          children: [
            //back button
            Icon(Icons.arrow_back),

            ///contact dp
            CircleAvatar(
              radius: 16,
              backgroundColor: Colors.white,
            ),
          ],
        ),
      ),
      //contact name
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("contactName"),
          Text("online", style: TextStyle(fontSize: 15))
        ],
      ),
      //active status
    ));
  }
}
