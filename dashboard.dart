import 'package:flutter/material.dart';
import 'package:carousel_pro_nullsafety/carousel_pro_nullsafety.dart';

class DashboardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Image Slider',
      home: MySlider(),
    );
  }
}
class MySlider extends StatefulWidget {
  @override
  _MySliderState createState() => _MySliderState();
}
class _MySliderState extends State<MySlider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent[100],
      body: Container(
        child: Center(
            child: ListView(
              children: [
                SizedBox(
                  height: 200.0,
                  width: double.infinity,
                  child: Carousel(
                    dotSize: 6.0,
                    dotSpacing: 15.0,
                    dotPosition: DotPosition.bottomCenter,
                    images: [
                      Image.asset('assests/images/1.jpg', fit: BoxFit.cover),
                      Image.asset('assests/images/2.jpg', fit: BoxFit.cover),
                      Image.asset('assests/images/3.jpg', fit: BoxFit.cover),
                    ],
                  ),
                )
              ],
            )),
      ),


    );
  }

}
