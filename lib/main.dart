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
// import 'package:carousel_slider/carousel_slider.dart';

// import 'package:learnn/components/horizontal_listView.dart';
// import 'package:learnn/components/products.dart';
// import 'package:learnn/pages/cart.dart';
import 'package:learnn/pages/login.dart';
void main() {
  runApp(MaterialApp(
      // debugShowCheckedModeBanner: false,
      home: Login()));
}


