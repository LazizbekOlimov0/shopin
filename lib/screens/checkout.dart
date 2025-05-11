import 'package:flutter/material.dart';
import 'package:shopin/screens/product.dart';

import '../models/product/products.dart';

class CheckoutPage extends StatefulWidget {
  const CheckoutPage({super.key});

  @override
  State<CheckoutPage> createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  Widget build(BuildContext context) {

    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;
    
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: SizedBox(
          height: sizeHeight,
          width: sizeWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Checkout",style: TextStyle(fontSize: 40)),
              Divider(height: 2,color: Colors.grey),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Shipping Address",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                      TextButton(onPressed: (){}, child: Text("Change",style: TextStyle(color: Colors.blue))),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text("Berlin, str. Frankensteins 35",style: TextStyle(color: Colors.grey)),
                  Text("10114 Berlin, Germany",style: TextStyle(color: Colors.grey)),
                ],
              ),
              Divider(height: 2,color: Colors.grey),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Payment",style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold)),
                      TextButton(onPressed: (){}, child: Text("Change",style: TextStyle(color: Colors.blue))),
                    ],
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 60,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border(
                        right: BorderSide(color: Colors.grey,width: 1),
                        left: BorderSide(color: Colors.grey,width: 1),
                        top: BorderSide(color: Colors.grey,width: 1),
                        bottom: BorderSide(color: Colors.grey,width: 1),
                      ),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: Image(image: AssetImage("assets/images/master_card.png")),
                      ),
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("*** **** **** 5708",style: TextStyle(color: Colors.grey)),
                  Text("Gabriel Chapman",style: TextStyle(color: Colors.grey)),
                  Text("06/23",style: TextStyle(color: Colors.grey)),
                ],
              ),
              Divider(height: 2,color: Colors.grey),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Review Products",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for(int i=0;i<3;i++)
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
                    ],
                  )
                ],
              ),
              MaterialButton(
                height: 60,
                minWidth: 240,
                onPressed: () => _congratulations(context, sizeHeight, sizeWidth),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.deepPurple.shade700,
                child: Center(
                  child: Column(
                    children: [
                      Text("Place Order",
                        style: TextStyle(color: Colors.grey),
                      ),
                      Text(
                        "\$1079",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _congratulations(BuildContext context, double sizeHeight, double sizeWidth){
    return Navigator.of(context).push(MaterialPageRoute(builder: (context) => Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: sizeHeight,
              width: sizeWidth,
              child: Image(image: AssetImage("assets/images/img.png"),fit: BoxFit.cover),
            ),
            Container(
              height: sizeHeight,
              width: sizeWidth,
              padding: EdgeInsets.all(30),
              child: Column(
                children: [
                  Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 4,
                        children: [
                          Text("Congratulations",style: TextStyle(color: Colors.deepPurple.shade700,fontSize: 40)),
                          Text("Your order has been successfully",style: TextStyle(color: Colors.deepPurple.shade700)),
                          Text("placed.",style: TextStyle(color: Colors.deepPurple.shade700)),
                        ],
                      )
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(height: 1),
                        MaterialButton(
                          height: 60,
                          minWidth: 240,
                          onPressed: () {
                            Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProductPage()), (Route<dynamic> route) => false);
                          },
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: Colors.deepPurple.shade700,
                          child: Center(
                            child: Text(
                              "Continue Shopping",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ),
                ],
              ),
            ),
          ],
        )
      ),
    )
    )
    );
  }
}
