import 'package:flutter/material.dart';
import 'package:shopin/screens/recover_account.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  State<ResetPassword> createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final TextEditingController controllerEmail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: sizeHeight,
          width: sizeWidth,
          padding: EdgeInsets.all(40),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "Password Reset",
                style: TextStyle(
                  color: Colors.deepPurple.shade700,
                  fontSize: 40,
                ),
              ),
              SizedBox(height: 20),
              Text(
                "Enter your email address. We'll send",
                style: TextStyle(color: Colors.deepPurple.shade700),
              ),
              Text(
                "a link to reset your password",
                style: TextStyle(color: Colors.deepPurple.shade700),
              ),
              SizedBox(height: 10),
              TextField(
                controller: controllerEmail,
                decoration: InputDecoration(labelText: "Email"),
              ),
              SizedBox(height: 30),
              MaterialButton(
                onPressed: () => _send(context, sizeHeight, sizeWidth),
                height: sizeHeight * 0.09,
                minWidth: 240,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                color: Colors.deepPurple.shade700,
                child: Center(
                  child: Text(
                    "Send",
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

  _send(BuildContext context, double sizeHeight, double sizeWidth) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => Scaffold(
              body: Hero(
                tag: "",
                child: SingleChildScrollView(
                  child: Container(
                    height: sizeHeight,
                    width: sizeWidth,
                    padding: EdgeInsets.all(40),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "Instructions sent!",
                            style: TextStyle(
                              color: Colors.deepPurple.shade700,
                              fontSize: 40,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "Check your inbox and follow the",
                            style: TextStyle(color: Colors.deepPurple.shade700),
                          ),
                          Text(
                            "instructions to reset your password",
                            style: TextStyle(color: Colors.deepPurple.shade700),
                          ),
                          SizedBox(height: 30),
                          MaterialButton(
                            onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context) => RecoverAccount())),
                            height: sizeHeight * 0.09,
                            minWidth: 240,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            color: Colors.deepPurple.shade700,
                            child: Center(
                              child: Text(
                                "Go to Email",
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
                ),
              ),
            ),
      ),
    );
  }
}
