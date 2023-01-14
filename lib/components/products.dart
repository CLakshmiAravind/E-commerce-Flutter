import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});

  @override
  State<Products> createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var products_list=[
    {
      "name":"shirt",
      "image":"images/RV1.webp",
      "oldPrice":20,
      "price":18.5
    },
    {
      "name":"pant",
      "image":"images/RV2.webp",
      "oldPrice":20,
      "price":18.5
    },
    {
      "name":"scalff",
      "image":"images/RV1.webp",
      "oldPrice":10,
      "price":8
    },
    {
      "name":"scalff",
      "image":"images/RV2.webp",
      "oldPrice":10,
      "price":8
    }
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: products_list.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2),
          itemBuilder: (BuildContext context, int index){  
                return single_product(
                  prod_name: products_list[index]['name'],
                  prod_image: products_list[index]['image'],
                  prod_oldPrice: products_list[index]['oldPrice'],
                  prod_price: products_list[index]['price'],
                );  
              },  
      );
  }
}

class single_product extends StatelessWidget {
  final prod_name;
  final prod_oldPrice;
  final prod_price;
  final prod_image;

  single_product({
    this.prod_name,
    this.prod_image,
    this.prod_oldPrice,
    this.prod_price
  });
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(tag: prod_name, child: Material(
        child: InkWell(onTap: (){},
        child: GridTile(
          footer: Container(
            color: Colors.white70,
            child: ListTile(
              leading: Text(prod_name),
              title: Text('\$$prod_price',style: TextStyle(color: Colors.redAccent),),
              subtitle: Text('\$$prod_oldPrice',style: TextStyle(color: Colors.black38,decoration:TextDecoration.lineThrough),),
            ),
          ),
          child: Image.asset(prod_image,fit: BoxFit.cover,),
        ),),
      )),
    );
  }
}