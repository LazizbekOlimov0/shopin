import 'package:flutter/material.dart';
import 'package:shopin/screens/product.dart';

class EmptyCart extends StatelessWidget {
  const EmptyCart({super.key});

  @override
  Widget build(BuildContext context) {

    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: SizedBox(
            height: sizeHeight * 0.4,
            width: sizeWidth,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: sizeHeight * 0.2,
                  width: sizeWidth,
                  child: Image(image: AssetImage("assets/images/cart.jpg")),
                ),
                Column(
                  children: [
                    Text("Your cart is empty",style: TextStyle(fontSize: 40)),
                    Text("Looking for ideas?"),
                  ],
                ),
                MaterialButton(
                  onPressed: (){
                    Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => ProductPage()),(Route<dynamic> route) => false);
                  },
                  height: 60,
                  minWidth: 240,
                  color: Colors.deepPurple.shade700,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  child: Center(
                    child: Text("Explore New Products",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold)),
                  ),
                ),
              ],
            ),
          ),
        )
      ),
    );
  }
}
