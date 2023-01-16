import 'package:flutter/material.dart';

class CartProducts extends StatefulWidget {
  const CartProducts({super.key});

  @override
  State<CartProducts> createState() => _CartProductsState();
}

class _CartProductsState extends State<CartProducts> {
  var productsInCart = [
    {
      "name":"shirt",
      "image":"images/RV1.webp",
      "price":18.5,
      "size":10,
      "color":"red",
      "quantity":10
    },
    {
      "name":"shoes",
      "image":"images/RV1.webp",
      "price":18.5,
      "size":10,
      "color":"red",
      "quantity":10
    },
    {
      "name":"pant",
      "image":"images/RV1.webp",
      "price":18.5,
      "size":10,
      "color":"red",
      "quantity":10
    },
    {
      "name":"pant",
      "image":"images/RV1.webp",
      "price":18.5,
      "size":10,
      "color":"red",
      "quantity":10
    },
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: productsInCart.length,itemBuilder: (context,index){
      return singleProduct(
        cart_color: productsInCart[index]["color"],
        cart_image: productsInCart[index]["image"],
        cart_name: productsInCart[index]["name"],
        cart_price: productsInCart[index]["price"],
        cart_quantity: productsInCart[index]["quantity"],
        cart_size: productsInCart[index]["size"],
      );
    });
  }
}

class singleProduct extends StatelessWidget {
  final cart_name;
  final cart_price;
  final cart_image;
  final cart_size;
  final cart_quantity;
  final cart_color;

  singleProduct({
    this.cart_name,
    this.cart_color,
    this.cart_image,
    this.cart_price,
    this.cart_quantity,
    this.cart_size,
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Image.asset(cart_image,width: 80.0,height: 80.0,),
        title: Text(cart_name),
        subtitle: Column(
          children: [
            Row(
              children: [
               Padding(padding: EdgeInsets.all(8.0),child: Text('size'),),
               Padding(padding: EdgeInsets.all(6.0),child: Text('$cart_size'),),
               Padding(padding: EdgeInsets.fromLTRB(20.0, 8.0, 8.0, 8.0),child: Text('color'),),
               Padding(padding: EdgeInsets.all(6.0),child: Text(cart_color),),             
              ],
            ),
            Container(
              alignment: Alignment.topLeft,
              child: Text("\$${cart_price}"),
            )
          ],
        ),
        trailing: Column(
          children: [
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_up)),
            Text('$cart_quantity'),
            IconButton(onPressed: (){}, icon: Icon(Icons.arrow_drop_down))
          ],
        ),
      ),
    );
  }
}