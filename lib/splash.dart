import 'package:flutter/material.dart';
import 'package:flutter_application_1/login.dart';

class Splashscreen extends StatefulWidget {
  const new({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState(){
    super.initState();
    Future.delayed(Duration(seconds:3),(){
Navigator.pushReplacement(context,MaterialPageRoute(builder: (context) => Loginpage()));
    },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 223, 217, 202),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.wrap_text_rounded,
            size: 100,
            color: const Color.fromARGB(255, 14, 3, 60),
            ),
            SizedBox(height: 50,),
          ],
        ),
      ),
    );
  }
}