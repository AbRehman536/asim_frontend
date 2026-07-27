import 'package:flutter/material.dart';

class RowColScreen extends StatelessWidget {
  const RowColScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Row Col"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.settings),
          Icon(Icons.bookmark),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 10,top: 10),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 20,
                  backgroundImage: AssetImage("assets/images/first.jpg"),
                ),
                SizedBox(width: 10,),
                Column(
                  children: [
                    Text("Cars Collection"),
                    Text("F-7 Islamabad"),
                  ],
                ),
                SizedBox(width: 120,),
                Icon(Icons.menu)
              ],
            ),
            SizedBox(height: 10,),
            Image.asset("assets/images/first.jpg",height: 300,),
            SizedBox(height: 10,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
              Icon(Icons.favorite),
              Icon(Icons.comment),
              Icon(Icons.share),
              Icon(Icons.bookmark),
            ],)
          ],
        ),
      )

    );
  }
}
