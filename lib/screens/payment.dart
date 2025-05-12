import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  TextEditingController controllerName = TextEditingController();
  TextEditingController controllerCardNumber = TextEditingController();
  TextEditingController controllerExpireData = TextEditingController();
  TextEditingController controllerCVC = TextEditingController();

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
                  Text("Payment Method",style: TextStyle(fontSize: 40)),
                  Divider(color: Colors.grey,height: 2),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border(
                            right: BorderSide(color: Colors.grey,width: 1),
                            left: BorderSide(color: Colors.grey,width: 1),
                            top: BorderSide(color: Colors.grey,width: 1),
                            bottom: BorderSide(color: Colors.grey,width: 1),
                          ),
                        ),
                        child: Center(
                          child: Image(image: AssetImage("assets/images/pp.png")),
                        ),
                      ),
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
                      Container(
                        height: 60,
                        width: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          border: Border(
                            right: BorderSide(color: Colors.grey,width: 1),
                            left: BorderSide(color: Colors.grey,width: 1),
                            top: BorderSide(color: Colors.grey,width: 1),
                            bottom: BorderSide(color: Colors.grey,width: 1),
                          ),
                        ),
                        child: Center(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image(image: AssetImage("assets/images/visa.png")),
                          ),
                        ),
                      ),
                    ],
                  ),
                  TextField(
                    controller: controllerName,
                    decoration: InputDecoration(
                        labelText: 'Name'
                    ),
                  ),
                  TextField(
                    controller: controllerCardNumber,
                    decoration: InputDecoration(labelText: "Card number"),
                  ),
                  TextField(
                    controller: controllerExpireData,
                    decoration: InputDecoration(labelText: "Expiry Data"),
                  ),
                  TextField(
                    controller: controllerCVC,
                    decoration: InputDecoration(labelText: "CVC"),
                  ),
                ],
              ),
              MaterialButton(
                height: 60,
                minWidth: 240,
                onPressed: () {
                  context.go('/checkOutPayment');
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
