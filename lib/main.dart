// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     print("Building");
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const Homepage(),
//     );
//   }
// }

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder(color: Colors.green,);
//   }
// }

// // class MyHomePage extends StatefulWidget {
// //   const MyHomePage({super.key, required this.title});

// //   final String title;

// //   @override
// //   State<MyHomePage> createState() => _MyHomePageState();
// // }

// // class _MyHomePageState extends State<MyHomePage> {
// //   int _counter = 0;

// //   void _incrementCounter() {
// //     setState(() {
// //       _counter++;
// //     });
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       appBar: AppBar(
// //         title: Text(widget.title),
// //       ),
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: <Widget>[
// //             const Text(
// //               'You have incremented',
// //             ),
// //             Text(
// //               '$_counter',
// //               style: Theme.of(context).textTheme.headlineMedium,
// //             ),
// //           ],
// //         ),
// //       ),
// //       floatingActionButton: FloatingActionButton(
// //         onPressed: _incrementCounter,
// //         tooltip: 'Increment',
// //         child: const Icon(Icons.add),
// //       ), // This trailing comma makes auto-formatting nicer for build methods.
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';
// import 'home.dart';

// void main(List<String> args) {
//   runApp(
//     new MaterialApp(
//         // home: new GridView.count(crossAxisCount: 3,
//         //   children:[
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //     Text("data"),
//         //   ],
//         // ),
//         home: MyWidget(),
//       ),
//   );
// }

// import 'dart:html';

import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

import 'package:learnn/components/horizontal_listView.dart';
import 'home.dart';
void main() {
  runApp(MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Home()));
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
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
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
              onTap: () {},
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
            child: Text('Categories'),),
            HorizontalList(),
            
          Padding(padding: EdgeInsets.all(8.0),
          child: Text('Recently viewed'),),
          Container(
            height: 320.0,
            Products(),
          )
          ],
        ),
      ),
    );
  }
}
