import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final ProdName;
  final ProdImage;
  final ProdOldPrice;
  final ProdPrice;

  ProductDetails({
    this.ProdName,this.ProdImage,this.ProdOldPrice,this.ProdPrice
    });
  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
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
      body: ListView(
        children: [
          Container(
            height: 300,
            child: GridTile(child: Container(
              color: Colors.white,
              child: Image.asset(widget.ProdImage),
            ),
            footer: new Container(
              color: Colors.white54,
              child: ListTile(
                // leading: Text(widget.ProdName,style: TextStyle(color: Color.fromARGB(255, 226, 113, 8),fontSize: 30),),
                title: Row(children: [
                  Expanded(child: Text(widget.ProdName,style: TextStyle(color: Color.fromARGB(255, 226, 113, 8),fontSize: 30),)),
                  Expanded(child: Text('\$${widget.ProdOldPrice}',style: TextStyle(color: Colors.grey,fontSize: 18,decoration: TextDecoration.lineThrough))),
                  Expanded(child: Text('\$${widget.ProdPrice}',style: TextStyle(color: Color.fromARGB(255, 223, 10, 141),fontSize: 22),)),
                ]),
              ),
            ),),
          ),
          
          Row(
            children: [
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return new AlertDialog(
                    title: Text('SIZE'),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text('Close'),)
                    ],
                  );
                });
              },
              color: Colors.black,
              textColor: Colors.grey,
              child: Row(
                children: [
                  Expanded(child: Text('size')),
                  Expanded(child: Icon(Icons.arrow_drop_down_circle))
                ],
              ),)),
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('color'),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text('close'),)
                    ],
                  );
                });
              },
              color: Colors.black,
              textColor: Colors.grey,
              child: Row(
                children: [
                  Expanded(child: Text('Color')),
                  Expanded(child: Icon(Icons.arrow_drop_down_circle))
                ],
              ),)),
              Expanded(child: MaterialButton(onPressed: (){
                showDialog(context: context, builder: (context){
                  return AlertDialog(
                    title: Text('Quantity'),
                    actions: [
                      MaterialButton(onPressed: (){
                        Navigator.of(context).pop(context);
                      },
                      child: Text('close'),)
                    ],
                  );
                });
              },
              color: Colors.black,
              textColor: Colors.grey,
              child: Row(
                children: [
                  Expanded(child: Text('Qty')),
                  Expanded(child: Icon(Icons.arrow_drop_down_circle))
                ],
              ),))
            ],
          ),
          Row(
            children: [
              Expanded(child: MaterialButton(onPressed: (){},
              color: Colors.red,
              textColor: Colors.white,
              child: Row(
                children: [
                  Expanded(child: Text('data')),
                ],
              ),)),
                  IconButton(onPressed: (){},icon: Icon(Icons.add_shopping_cart),) ,
                  IconButton(onPressed: (){},icon: Icon(Icons.favorite_border_rounded),) ,
            ],
          ),
          Divider(),
          ListTile(
            title: Text('Product Details'),
            subtitle: Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),            
          )
        ],
      ),
      );
  }
}