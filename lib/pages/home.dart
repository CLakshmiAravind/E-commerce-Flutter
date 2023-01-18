import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:learnn/components/horizontal_listView.dart';
import 'package:learnn/components/products.dart';
import 'package:learnn/pages/cart.dart';
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


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.redAccent,
        title: Text('E-shop'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          IconButton(onPressed: () {
            Navigator.push(context,MaterialPageRoute(builder: (context)=> Cart()));
          }, icon: Icon(Icons.shopping_cart)),
        ],
      ),
      drawer: Drawer(
        // backgroundColor: Colors.black38,
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.red),
              accountName: Text('accountName'),
              accountEmail: Text('accountEmail'),
              currentAccountPicture: GestureDetector(
                child: CircleAvatar(
                  backgroundColor: Colors.amber,
                  child: Icon(
                    Icons.person,
                    color: Colors.white,
                  ),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Home Page'),
                leading: Icon(
                  Icons.home,
                  color: Color.fromARGB(255, 230, 8, 211),
                ),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Cart()));
              },
              child: ListTile(
                title: Text('My account'),
                leading: Icon(
                  Icons.account_box,
                  color: Color.fromARGB(255, 230, 8, 211),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('My Orders'),
                leading: Icon(
                  Icons.shopping_bag,
                  color: Color.fromARGB(255, 230, 8, 211),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Categories'),
                leading: Icon(
                  Icons.dashboard,
                  color: Color.fromARGB(255, 230, 8, 211),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Favorites'),
                leading: Icon(
                  Icons.favorite,
                  color: Color.fromARGB(255, 230, 8, 211),
                ),
              ),
            ),

            Divider(),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('Settings'),
                leading: Icon(
                  Icons.settings,
                  color: Color.fromARGB(255, 230, 8, 211),
                ),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text('About'),
                leading: Icon(
                  Icons.info,
                  color: Color.fromARGB(255, 230, 8, 211),
                ),
              ),
            )
          ],
        ),
      ),
      body: Container(
        child: Column(
          children: [
            // Padding(padding: EdgeInsets.all(20),child: Text('Images')),
            carousels(),
            Padding(padding: const EdgeInsets.all(2.0),
            child: Container(child: Text('Categories'),alignment: Alignment.centerLeft,),),
            HorizontalList(),
            
          Padding(padding: EdgeInsets.all(8.0),
          child: Container(alignment: Alignment.centerLeft,child: Text('Recently viewed')),),
          Flexible(child: Products()),
          ],
        ),
      ),
    );
  }
}
