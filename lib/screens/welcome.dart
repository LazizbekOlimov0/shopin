import 'package:flutter/material.dart';
import 'package:shopin/core/theme/strings.dart';
import 'package:shopin/core/theme/text_styles.dart';
import 'package:shopin/screens/product.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {

    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: sizeHeight,
            width: sizeWidth,
            child: Image(image: AssetImage("assets/images/img.png"),fit: BoxFit.cover),
          ),
          SingleChildScrollView(
            padding: EdgeInsets.all(20),
            child: SizedBox(
              height: sizeHeight,
              width: sizeWidth,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(AppStrings.welcome, style: AppTextStyles.welcomeStyle),
                  Column(
                    children: [
                      Text(AppStrings.title, style: AppTextStyles.titleStyle),
                      Text(AppStrings.about1, style: AppTextStyles.about1Style),
                      Text(AppStrings.about2, style: AppTextStyles.about2Style),
                    ],
                  ),
                  MaterialButton(
                    height: 60,
                    minWidth: 240,
                    onPressed: (){
                      Navigator.pushAndRemoveUntil(
                          context,
                          MaterialPageRoute(builder: (context) => ProductPage(),
                          ),
                            (Route<dynamic> route) => false,
                      );
                    },
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    color: Colors.deepPurple,
                    child: Text(AppStrings.explore, style: AppTextStyles.exploreStyle),
                  ),
                ]
              ),
            ),
          ),
        ],
      )
    );
  }
}
