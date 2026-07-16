import 'package:flutter/material.dart';

class ImagesScreen extends StatelessWidget {
  const ImagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back_ios_new),
        title: Text("Images Screen"),
        actions: [
          Icon(Icons.notification_add),
          Icon(Icons.settings),
          Icon(Icons.bookmark),
        ],
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.yellow,
              child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5q5xaq4mREHN2A2BNFff_aXw5TLfNQ5bz2JtEDE4ZH89TSJ0753Pli2A&s=10",
              height: 500,width: 800,
              fit: BoxFit.cover,),
            ),
            SizedBox(height: 10,),
            Image.asset("assets/images/first.jpg",
            width: 300,height: 200,),
            ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5q5xaq4mREHN2A2BNFff_aXw5TLfNQ5bz2JtEDE4ZH89TSJ0753Pli2A&s=10",)),
            ClipOval(child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5q5xaq4mREHN2A2BNFff_aXw5TLfNQ5bz2JtEDE4ZH89TSJ0753Pli2A&s=10",)),
            CircleAvatar(
              radius: 150,
                child: Icon(Icons.person,size: 100,),
                backgroundColor: Colors.blue.withOpacity(0.5),
               // backgroundImage: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT5q5xaq4mREHN2A2BNFff_aXw5TLfNQ5bz2JtEDE4ZH89TSJ0753Pli2A&s=10",)
              )
          ],
        ),
      ),
    );
  }
}
