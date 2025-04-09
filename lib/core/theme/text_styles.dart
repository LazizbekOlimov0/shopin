import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

sealed class AppTextStyles{
  static const welcomeStyle = TextStyle(
    color: Colors.deepPurple,
    fontWeight: FontWeight.w900,
    fontSize: 64,
  ) ;

  static const titleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 32,
    color: Colors.deepPurple,
  );

  static const about1Style = TextStyle(
    //fontSize: 24,
    color: Colors.deepPurple,
  );

  static const about2Style = TextStyle(
    //fontSize: 24,
    color: Colors.deepPurple,
  );

  static const exploreStyle = TextStyle(
    color: Colors.white,
  );

  static const product = TextStyle(
    color: Colors.black,
    fontSize: 32,
  );
}