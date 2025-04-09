import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shopin/models/product/products.dart';

class CartPage extends StatefulWidget {
  const CartPage({super.key});

  @override
  State<CartPage> createState() => _CartPageState();
}

class _CartPageState extends State<CartPage> {

  int count = 1;

  int sum = 1079;

  @override
  Widget build(BuildContext context) {

    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
          leadingWidth: 100,
          leading: Row(
            children: [
              IconButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back),
              ),
              Expanded(child: Text("Back",style: TextStyle(fontSize: 18))),
            ],
          )
      ),
      body: SingleChildScrollView(
        child: Container(
          height: sizeHeight,
          width: sizeWidth,
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Your Cart",style: TextStyle(fontSize: 40)),
                  IconButton(
                      onPressed: (){}, 
                      icon: Icon(CupertinoIcons.delete),
                  ),
                ],
              ),
              Text("3 items"),
              SizedBox(height: 20),
              Divider(
                color: Colors.grey,
                height: 2,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  for(int i=0;i<3;i++)
                    Container(
                      height: sizeHeight * 0.2,
                      width: sizeWidth,
                      padding: EdgeInsets.all(4),
                      child: Row(
                        children: [
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                              color: products[i].color,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Image(image: AssetImage(products[i].imageUrl)),
                            ),
                          ),
                          Column(
                            children: [
                              Text("Rains Backpack Pacific",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                              Row(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      MaterialButton(
                                        onPressed: (){},
                                        color: Colors.grey,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        child: Icon(CupertinoIcons.delete),
                                      ),
                                      Text("$count"),
                                      MaterialButton(
                                        onPressed: (){
                                          setState(() {
                                            count ++;
                                          });
                                        },
                                        color: Colors.grey,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        child: Icon(CupertinoIcons.add),
                                      ),
                                    ],
                                  ),
                                  Text(products[i].cost),
                                ],
                              )
                            ],
                          )
                        ],
                      ),
                    )
                ],
              ),
              MaterialButton(
                onPressed: (){},
                height: 60,
                minWidth: 240,
                color: Colors.deepPurple.shade700,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Check out"),
                    Text("\$$sum"),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
