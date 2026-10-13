import 'package:flutter/material.dart';
import 'package:flutter_application_1/splash.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "login page",
      home: Splashscreen(),
    );
  }
}