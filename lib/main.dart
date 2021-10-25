import 'package:book_app/pages/home/home_page.dart';
import 'package:book_app/pages/login/signin_page.dart';
import 'package:book_app/pages/splash/splash_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: SplashPage(),
    );
  }
}
