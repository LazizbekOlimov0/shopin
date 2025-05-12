import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shopin/models/user/user_model.dart';
import 'package:shopin/models/user/users.dart';

class SignInUpPage extends StatefulWidget {
  const SignInUpPage({super.key});

  @override
  State<SignInUpPage> createState() => _SignInUpPageState();
}

class _SignInUpPageState extends State<SignInUpPage> {
  TextEditingController controllerEmail = TextEditingController();
  TextEditingController controllerPassword = TextEditingController();
  TextEditingController controllerConfirmPassword = TextEditingController();
  TextEditingController controllerName = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    double sizeWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            SizedBox(
              height: sizeHeight,
              width: sizeWidth,
              child: Image(
                image: AssetImage("assets/images/img.png"),
                fit: BoxFit.cover,
              ),
            ),
            Container(
              height: sizeHeight,
              width: sizeWidth,
              padding: EdgeInsets.all(40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Sign In",
                    style: TextStyle(
                      color: Colors.deepPurple.shade700,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextField(
                    controller: controllerEmail,
                    decoration: InputDecoration(labelText: "Email"),
                  ),
                  TextField(
                    controller: controllerPassword,
                    decoration: InputDecoration(labelText: "Password"),
                  ),
                  Column(
                    spacing: 20,
                    children: [
                      MaterialButton(
                        height: 60,
                        minWidth: 240,
                        onPressed: () {
                          final user = UserModel(
                            '',
                            email: controllerEmail.text,
                            password: controllerPassword.text,
                          );
                          if (users.contains(user)) {
                            context.go('/product');
                          }
                          controllerEmail.clear();
                          controllerPassword.clear();
                        },
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
                      MaterialButton(
                        height: 60,
                        minWidth: 240,
                        onPressed: () {},
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8),
                          side: BorderSide(
                            width: 1,
                            color: Colors.deepPurple.shade700,
                          ),
                        ),
                        //color: Colors.transparent,
                        child: Center(
                          child: Text(
                            "Sign in with FaceBook",
                            style: TextStyle(
                              color: Colors.deepPurple.shade700,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Don't have an account?"),
                          TextButton(
                            onPressed:
                                () => _singUp(context, sizeHeight, sizeWidth),
                            child: Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.deepPurple.shade700,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(),
                      TextButton(
                        onPressed: () => context.go('/resetPassword'),
                        child: Text(
                          "Forgot password",
                          style: TextStyle(
                            color: Colors.deepPurple.shade700,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _singUp(BuildContext context, double sizeHeight, double sizeWidth) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => Scaffold(
              body: Hero(
                tag: "",
                child: SingleChildScrollView(
                  child: Stack(
                    children: [
                      SizedBox(
                        height: sizeHeight,
                        width: sizeWidth,
                        child: Image(
                          image: AssetImage("assets/images/img.png"),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        height: sizeHeight,
                        width: sizeWidth,
                        padding: EdgeInsets.all(40),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Sign Up",
                              style: TextStyle(
                                color: Colors.deepPurple.shade700,
                                fontSize: 40,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            TextField(
                              controller: controllerName,
                              decoration: InputDecoration(labelText: "Name"),
                            ),
                            TextField(
                              controller: controllerEmail,
                              decoration: InputDecoration(labelText: "Email"),
                            ),
                            TextField(
                              controller: controllerPassword,
                              decoration: InputDecoration(
                                labelText: "Password",
                              ),
                            ),
                            TextField(
                              controller: controllerConfirmPassword,
                              decoration: InputDecoration(
                                labelText: "Confirm Password",
                              ),
                            ),
                            Column(
                              spacing: 20,
                              children: [
                                MaterialButton(
                                  height: 60,
                                  minWidth: 240,
                                  onPressed: () {
                                    if (controllerPassword.text ==
                                        controllerConfirmPassword.text) {
                                      final user = UserModel(
                                        controllerName.text,
                                        email: controllerEmail.text,
                                        password: controllerPassword.text,
                                      );
                                      users.add(user);
                                      _congratulations(
                                        context,
                                        sizeHeight,
                                        sizeWidth,
                                      );
                                    }
                                  },
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  color: Colors.deepPurple.shade700,
                                  child: Center(
                                    child: Text(
                                      "Sign Up",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Don't have an account?"),
                                    TextButton(
                                      onPressed: () => context.go('/signInUp'),
                                      child: Text(
                                        "Sign In",
                                        style: TextStyle(
                                          color: Colors.deepPurple.shade700,
                                          fontWeight: FontWeight.bold,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
      ),
    );
  }

  _congratulations(BuildContext context, double sizeHeight, double sizeWidth) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => Scaffold(
              body: Hero(
                tag: "",
                child: Stack(
                  children: [
                    SizedBox(
                      height: sizeHeight,
                      width: sizeWidth,
                      child: Image(
                        image: AssetImage("assets/images/img.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    Container(
                      height: sizeHeight,
                      width: sizeWidth,
                      padding: EdgeInsets.all(40),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                "Congratulations",
                                style: TextStyle(
                                  fontSize: 40,
                                  color: Colors.deepPurple.shade700,
                                ),
                              ),
                              Text(
                                "Your account has been",
                                style: TextStyle(
                                  color: Colors.deepPurple.shade700,
                                ),
                              ),
                              Text(
                                "successfully created",
                                style: TextStyle(
                                  color: Colors.deepPurple.shade700,
                                ),
                              ),
                            ],
                          ),
                          MaterialButton(
                            height: 60,
                            minWidth: 240,
                            onPressed: () {
                              context.go('/signInUp');
                            },
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
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
