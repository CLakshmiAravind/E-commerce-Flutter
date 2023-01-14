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
  // 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d0/OpenSUSE_Logo.svg/1200px-OpenSUSE_Logo.svg.png',
  // 'https://assets.ubuntu.com/v1/83ff4203-awshp-strip-customers.png',
  'https://images.pexels.com/photos/10037708/pexels-photo-10037708.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://images.pexels.com/photos/1187954/pexels-photo-1187954.jpeg?auto=compress&cs=tinysrgb&w=600',
  'https://rukminim1.flixcart.com/image/832/832/xif0q/t-shirt/b/d/j/-original-imagh2sfgea9aqqj.jpeg?q=70',
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
              // autoPlayCurve: Curves.easeInOutCubic
            ));
  }
}