import 'package:asim_frontend/models/onBoarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class PageviewScreen extends StatefulWidget {
  const PageviewScreen({super.key});

  @override
  State<PageviewScreen> createState() => _PageviewScreenState();
}

class _PageviewScreenState extends State<PageviewScreen> {
  PageController pageController = PageController();
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
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              scrollDirection: Axis.vertical,
              controller: pageController,
              itemCount: screenList.length,
              itemBuilder: (BuildContext context, int index) {
                return Column(
                  children: [
                    Text(screenList[index].title.toString(),style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 25
                    ),),
                    Image.asset(screenList[index].image.toString(),width: 400,height: 300,),
                    Text(screenList[index].desc.toString(),style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 15
                    ),),


                  ],
                );
              },),
          ),
          SmoothPageIndicator(
              controller: pageController,  // PageController
              count:  screenList.length,
              effect:  ExpandingDotsEffect(),  // your preferred effect
              onDotClicked: (index){
              }
          ),
          ElevatedButton(onPressed: (){}, child: Text("Get Start"))
        ],
      ),
    );
  }
}
