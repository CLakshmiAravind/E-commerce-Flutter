import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Category(
            imageLocation: 'images/poloShirt-64.png',
            imageTitle: 'shirt',
          ),
          Category(
            imageLocation: 'images/formal_dress.png',
            imageTitle: 'formaldress',
          ),Category(
            imageLocation: 'images/jeans-64.png',
            imageTitle: 'jeans',
          ),Category(
            imageLocation: 'images/dress-64.png',
            imageTitle: 'dress',
          ),Category(
            imageLocation: 'images/shoes.png',
            imageTitle: 'shoes',
          )
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String imageLocation;
  final String imageTitle;

  Category({this.imageLocation = '', this.imageTitle = ''});
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(15),
        child: InkWell(
            onTap: () {},
            child: Container(
              width: 70.0,
              height: 80.0,
              child: ListTile(
                  title: Image.asset(
                    imageLocation,
                    width: 40.0,
                    height: 40.0,
                  ),
                  subtitle: Text(
                    imageTitle,
                  )),
            )));
  }
}
