import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.lightBlueAccent,
      child: Text("data"),
    );
  }
}

final List<String> imgList = [
  'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/OpenSUSE_Logo.svg/1200px-OpenSUSE_Logo.svg.png',
  'https://raw.githubusercontent.com/docker-library/docs/01c12653951b2fe592c1f93a13b4e289ada0e3a1/ubuntu/logo.png',
];


class carousels extends StatelessWidget {
  const carousels({super.key});

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
              items: imgList
              .map((item) => Container(
                child: Center(
                  child: Image.network(
                    item,fit:BoxFit.cover, width: 1000)))).toList(), options: CarouselOptions(
              autoPlay: true,
              aspectRatio: 1.5,
              enlargeCenterPage: true,
            ));
  }
}