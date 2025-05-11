import 'package:flutter/material.dart';
import 'package:shopin/core/theme/icons.dart';
import 'package:shopin/core/theme/strings.dart';
import 'package:shopin/core/theme/text_styles.dart';
import 'package:shopin/models/review/reviews.dart';
import 'package:shopin/screens/cart.dart';

import '../models/product/products.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key});

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        title: Text(AppStrings.product, style: AppTextStyles.product),
        centerTitle: false,
        actions: [IconButton(onPressed: () {}, icon: AppIcons.search)],
      ),
      body: SingleChildScrollView(
        child: SizedBox(
          height: sizeHeight,
          width: sizeWidth,
          child: Column(
            children: [
              SizedBox(height: 40),
              SizedBox(
                height: 20,
                width: double.infinity,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    TextButton(
                      onPressed: () {},
                      child: Text("New", style: TextStyle(color: Colors.black)),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Furniture",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Electronic",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Fashion",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Food",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 20),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        "Technique",
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                    SizedBox(width: 20),
                  ],
                ),
              ),
              SizedBox(height: 20),
              IconButton(
                onPressed: () {},
                icon: Align(
                  alignment: Alignment.topRight,
                  child: Icon(Icons.dashboard, color: Colors.grey),
                ),
              ),
              SizedBox(
                height: sizeHeight * 0.8,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    mainAxisExtent: 400,
                    mainAxisSpacing: 20,
                    crossAxisSpacing: 20,
                  ),
                  children: [
                    for (int i = 0; i < products.length; i++)
                      MaterialButton(
                        onPressed: () {
                          Navigator.of(context).push(
                            MaterialPageRoute<void>(
                              builder:
                                  (BuildContext context) => Scaffold(
                                    appBar: AppBar(
                                      leadingWidth: 100,
                                      leading: Row(
                                        children: [
                                          IconButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            icon: Icon(Icons.arrow_back),
                                          ),
                                          Expanded(
                                            child: Text(
                                              "Back",
                                              style: TextStyle(fontSize: 18),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                    bottomNavigationBar: BottomNavigationBar(
                                      items: [
                                        BottomNavigationBarItem(
                                          icon: Icon(Icons.email),
                                          label: "",
                                        ),
                                        BottomNavigationBarItem(
                                          icon: Icon(Icons.shopping_bag),
                                          label: "",
                                        ),
                                        BottomNavigationBarItem(
                                          icon: Icon(Icons.favorite_border),
                                          label: "",
                                        ),
                                      ],
                                    ),
                                    body: Hero(
                                      tag: Text(""),
                                      child: Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        children: [
                                          Align(
                                            alignment: Alignment.topLeft,
                                            child: Text(
                                              "Orange Chair",
                                              style: TextStyle(fontSize: 30),
                                            ),
                                          ),
                                          Container(
                                            height: sizeHeight * 0.5,
                                            width: sizeWidth,
                                            color: products[i].color,
                                            child: Center(
                                              child: Stack(
                                                alignment: Alignment.topRight,
                                                children: [
                                                  Image(
                                                    image: AssetImage(
                                                      products[i].imageUrl,
                                                    ),
                                                  ),
                                                  Container(
                                                    height: 36,
                                                    width: 80,
                                                    decoration: BoxDecoration(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                            8,
                                                          ),
                                                      color: Colors.white,
                                                    ),
                                                    child: Center(
                                                      child: Text(
                                                        products[i].cost,
                                                        style: TextStyle(
                                                          color:
                                                              Colors.blueAccent,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Text(
                                            "Furniture",
                                            style: TextStyle(
                                              color: Colors.grey,
                                            ),
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            children: [
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellowAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellowAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellowAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.yellowAccent,
                                              ),
                                              Icon(
                                                Icons.star,
                                                color: Colors.grey,
                                              ),
                                              TextButton(
                                                onPressed:
                                                    () => _reviews(
                                                      context,
                                                      sizeHeight,
                                                      sizeWidth,
                                                    ),
                                                child: Text(
                                                  "124 review",
                                                  style: TextStyle(
                                                    color: Colors.blue,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                          MaterialButton(
                                            height: 60,
                                            minWidth: 240,
                                            color: Colors.deepPurple,
                                            shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(8),
                                            ),
                                            onPressed: () {
                                              Navigator.push(
                                                context,
                                                MaterialPageRoute(
                                                  builder:
                                                      (context) => CartPage(),
                                                ),
                                              );
                                            },
                                            child: Text(
                                              "Add to Cart",
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                            ),
                          );
                        },
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 350,
                              width: double.infinity,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(12),
                                color: products[i].color,
                              ),
                              child: Image(
                                image: AssetImage(products[i].imageUrl),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  products[i].cost,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 16,
                                  ),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.more_horiz),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  _reviews(BuildContext context, double sizeHeight, double sizeWidth) {
    return Navigator.of(context).push(
      MaterialPageRoute(
        builder:
            (context) => Scaffold(
              appBar: AppBar(
                leadingWidth: 100,
                leading: Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back),
                    ),
                    Expanded(
                      child: Text("Back", style: TextStyle(fontSize: 18)),
                    ),
                  ],
                ),
              ),
              body: Hero(
                tag: "",
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildListDelegate([
                        Text("Reviews (45)", style: TextStyle(fontSize: 40)),
                        for (int j = 0; j < reviews.length; j++)
                          Container(
                            height: sizeHeight * 0.2,
                            width: sizeWidth,
                            padding: EdgeInsets.all(10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    CircleAvatar(
                                      backgroundImage: AssetImage(
                                        reviews[j].imageUrl,
                                      ),
                                      radius: 20,
                                    ),
                                    SizedBox(width: 10),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          reviews[j].person,
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            for (int k = 0; k < 5; k++)
                                              Icon(
                                                Icons.star,
                                                color:
                                                    Colors
                                                        .yellowAccent
                                                        .shade700,
                                                size: 16,
                                              ),
                                            Text(
                                              reviews[j].date,
                                              style: TextStyle(
                                                color: Colors.grey,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                Text(
                                  reviews[j].title,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Text(reviews[j].subtitle),
                                Divider(color: Colors.grey, height: 1),
                              ],
                            ),
                          ),
                      ]),
                    ),
                  ],
                ),
              ),
            ),
      ),
    );
  }
}
