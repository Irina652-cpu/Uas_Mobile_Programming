import 'package:flutter/material.dart';
import 'package:nike_shop/pages/HomePage.dart';
import 'package:nike_shop/pages/ItemPage.dart';
//import 'package:nike_shop/pages/LoginPage.dart';

void main()  => runApp(MyApp());
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        scaffoldBackgroundColor: Color(0xFFCEDDEE)
      ),
      routes: {
        "/" : (context) => HomePage(),
        "HomePage" : (context) => HomePage(),
        "ItemPage" : (context) => ItemPage(),
      },
    );
  }
}
