import 'package:flutter/material.dart';

import '../models/onBoarding.dart';

class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({super.key});

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  List<OnBoarding> screenList = [
    OnBoarding(
        title: "Request Ride",
        image: "assets/images/car.jpg",
        desc: "Request Driver for Ride"),
    OnBoarding(
        title: "Book Ride",
        image: "assets/images/second.png",
        desc: "Book Your Ride"),
    OnBoarding(
        title: "Track Ride",
        image: "assets/images/third.jpg",
        desc: "Track Your Ride"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Grid View Builder"),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 300,
              mainAxisSpacing: 10,
            crossAxisSpacing: 10
          ),
        itemCount: screenList.length,
        itemBuilder: (BuildContext context, int index) {
            return Container(
              color: Colors.red,
              child: Column(
                children: [
                  Text(screenList[index].title),
                  Image.asset(screenList[index].image, width: 100,),
                  Text(screenList[index].desc)
                ],
              ),
            );
        },
          )
    );
  }
}
