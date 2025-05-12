import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
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
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Your Cart",style: TextStyle(fontSize: 40)),
                  IconButton(
                      onPressed: () => showDialog(
                        context: context,
                        builder: (BuildContext context) => Dialog(
                          child: Container(
                            height: 200,
                            width: 200,
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Text("Empty Cart",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Text("Are you sure you want to delete all"),
                                    Text("items in your cart"),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                                  children: [
                                    MaterialButton(
                                      height: 52,
                                      minWidth: 132,
                                      onPressed: (){
                                        Navigator.pop(context);
                                      },
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                        side: BorderSide(width: 1,color: Colors.deepPurple.shade700),
                                      ),
                                      child: Text("Cancel",style: TextStyle(color: Colors.deepPurple.shade700,fontWeight: FontWeight.bold)),
                                    ),
                                    MaterialButton(
                                      height: 52,
                                      minWidth: 132,
                                      onPressed: (){
                                        context.go('/emptyCart');
                                      },
                                      color: Colors.deepPurple.shade700,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(8),
                                      ),
                                      child: Text("Empty Cart",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
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
                key: UniqueKey(),
                mainAxisAlignment: MainAxisAlignment.center,
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
                            height: 120,
                            width: 120,
                            decoration: BoxDecoration(
                              color: products[i].color,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Center(
                              child: Image(image: AssetImage(products[i].imageUrl),fit: BoxFit.contain),
                            ),
                          ),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              Text("Rains Backpack Pacific",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                    children: [
                                      MaterialButton(
                                        onPressed: () => showDialog(
                                          context: context,
                                          builder: (BuildContext context) => Dialog(
                                            child: Container(
                                              height: 200,
                                              width: 200,
                                              padding: EdgeInsets.all(8),
                                              decoration: BoxDecoration(
                                                borderRadius: BorderRadius.circular(8),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Text('Delete "Rains Backpack"',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20)),
                                                  Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: [
                                                      Text("Are you sure you want to delete 'Rains"),
                                                      Text("Backpack Pacific' from your cart"),
                                                    ],
                                                  ),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                                                    children: [
                                                      MaterialButton(
                                                        height: 52,
                                                        minWidth: 132,
                                                        onPressed: (){
                                                          Navigator.pop(context);
                                                        },
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8),
                                                          side: BorderSide(width: 1,color: Colors.deepPurple.shade700),
                                                        ),
                                                        child: Text("Cancel",style: TextStyle(color: Colors.deepPurple.shade700,fontWeight: FontWeight.bold)),
                                                      ),
                                                      MaterialButton(
                                                        height: 52,
                                                        minWidth: 132,
                                                        onPressed: (){ },
                                                        color: Colors.deepPurple.shade700,
                                                        shape: RoundedRectangleBorder(
                                                          borderRadius: BorderRadius.circular(8),
                                                        ),
                                                        child: Text("Delete",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                                                      ),
                                                    ],
                                                  )
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        child: Icon(CupertinoIcons.delete),
                                      ),
                                      SizedBox(width: 10),
                                      Text("$count"),
                                      SizedBox(width: 10),
                                      MaterialButton(
                                        onPressed: (){
                                          setState(() {
                                            count ++;
                                          });
                                        },
                                        color: Colors.white,
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                                        child: Icon(CupertinoIcons.add),
                                      ),
                                    ],
                                  ),
                                  SizedBox(width: 10),
                                  Text(products[i].cost),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    )
                ],
              ),
              MaterialButton(
                onPressed: (){
                  context.go('/shipping');
                },
                height: 60,
                minWidth: 240,
                color: Colors.deepPurple.shade700,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Check out",style: TextStyle(color: Colors.white)),
                    Text("\$$sum",style: TextStyle(color: Colors.white)),
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
