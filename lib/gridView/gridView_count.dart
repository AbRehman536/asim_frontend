import 'package:flutter/material.dart';

class GridviewCount extends StatelessWidget {
  const GridviewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Count"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        childAspectRatio: 0.5,
        children: [
          Container(color: Colors.red,child: Icon(Icons.reduce_capacity),),
          Container(color: Colors.yellow,child: Text("Hello")),
          Container(color: Colors.green,child: Icon(Icons.settings)),
          Container(color: Colors.orange,child: Icon(Icons.reduce_capacity)),
          Container(color: Colors.blue,child: ElevatedButton(onPressed: (){}, child: Text("Click"))),
        ],
      ),
    );
  }
}
