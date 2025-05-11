import 'package:flutter/material.dart';
import 'package:shopin/screens/payment.dart';

class ShippingPage extends StatefulWidget {
  const ShippingPage({super.key});

  @override
  State<ShippingPage> createState() => _ShippingPageState();
}

class _ShippingPageState extends State<ShippingPage> {

  TextEditingController controllerCity = TextEditingController();
  TextEditingController controllerPostCode = TextEditingController();
  TextEditingController controllerStreet = TextEditingController();

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
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: 30,
                children: [
                  Text("Shipping Address",style: TextStyle(fontSize: 40)),
                  Divider(color: Colors.grey,height: 2),
                  TextField(
                    decoration: InputDecoration(
                        labelText: 'Country'
                    ),
                  ),
                  TextField(
                    controller: controllerCity,
                    decoration: InputDecoration(labelText: "Town / City"),
                  ),
                  TextField(
                    controller: controllerPostCode,
                    decoration: InputDecoration(labelText: "PostCode"),
                  ),
                  TextField(
                    controller: controllerStreet,
                    decoration: InputDecoration(labelText: "Street"),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("This will be your default shipping address.",style: TextStyle(color: Colors.grey)),
                      Text("This will be your default billing address.",style: TextStyle(color: Colors.grey)),
                    ],
                  ),
                ],
              ),
              MaterialButton(
                height: 60,
                minWidth: 240,
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => PaymentPage()));
                },
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.deepPurple.shade700,
                child: Center(
                  child: Text(
                    "Next",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
