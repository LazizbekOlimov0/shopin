import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class RecoverAccount extends StatefulWidget {
  const RecoverAccount({super.key});

  @override
  State<RecoverAccount> createState() => _RecoverAccountState();
}

class _RecoverAccountState extends State<RecoverAccount> {
  TextEditingController controllerNew = TextEditingController();
  TextEditingController controllerConfirm = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Container(
        height: sizeHeight,
        width: sizeWidth,
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text("Recover account", style: TextStyle(fontSize: 20)),
                    Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.yellowAccent.shade700,
                    ),
                    ElevatedButton(onPressed: () {}, child: Text("Inbox")),
                  ],
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.star_border, color: Colors.grey),
                ),
              ],
            ),
            SizedBox(
              height: 100,
              width: sizeWidth,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Colors.red.shade300,
                        radius: 16,
                        child: Text("S"),
                      ),
                      Column(
                        children: [
                          Row(children: [Text("Shopin"), Text("17:56")]),
                          Text("to me_"),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.arrow_back, color: Colors.grey),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(Icons.more_horiz, color: Colors.grey),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(height: 60),
            Text("Reset your Shopin", style: TextStyle(fontSize: 40)),
            Text("password", style: TextStyle(fontSize: 40)),
            Text("Hi Gabriel,"),
            SizedBox(height: 20),
            Text("We've received a request to reset your"),
            SizedBox(height: 20),
            Text("Click the button below to setup a new"),
            SizedBox(height: 20),
            Text("This link will expire in 1 hour."),
            Text("If you didn't initiate this change, please email"),
            Text("us and let us know."),
            SizedBox(height: 30),
            MaterialButton(
              onPressed: () => _newPassword(context, sizeHeight, sizeWidth),
              height: sizeHeight * 0.09,
              minWidth: 180,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              color: Colors.deepPurple.shade700,
              child: Center(
                child: Text(
                  "Reset Password",
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
    );
  }

  _newPassword(BuildContext context, double sizeHeight, double sizeWidth) {
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "New Password",
                          style: TextStyle(
                            color: Colors.deepPurple.shade700,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: controllerNew,
                          decoration: InputDecoration(
                            labelText: "New Password",
                          ),
                        ),
                        SizedBox(height: 20),
                        TextField(
                          controller: controllerNew,
                          decoration: InputDecoration(
                            labelText: "Confirm Password",
                          ),
                        ),
                        SizedBox(height: 20),
                        MaterialButton(
                          onPressed:
                              () =>
                                  _successfully(context, sizeHeight, sizeWidth),
                          height: sizeHeight * 0.09,
                          minWidth: 240,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: Colors.deepPurple.shade700,
                          child: Center(
                            child: Text(
                              "Save",
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
    );
  }

  _successfully(BuildContext context, double sizeHeight, double sizeWidth) {
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
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          "New Password",
                          style: TextStyle(
                            color: Colors.deepPurple.shade700,
                            fontSize: 40,
                          ),
                        ),
                        SizedBox(height: 20),
                        Text(
                          "You successfully reset your password.",
                          style: TextStyle(color: Colors.deepPurple.shade700),
                        ),
                        Text(
                          "Please use your password to sign in.",
                          style: TextStyle(color: Colors.deepPurple.shade700),
                        ),
                        SizedBox(height: 20),
                        MaterialButton(
                          onPressed: () {
                            context.go('/singInUp');
                          },
                          height: sizeHeight * 0.09,
                          minWidth: 240,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8),
                          ),
                          color: Colors.deepPurple.shade700,
                          child: Center(
                            child: Text(
                              "Sign In",
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
    );
  }
}
