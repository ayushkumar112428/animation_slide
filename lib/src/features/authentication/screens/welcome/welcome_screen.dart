import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(child: Text("Welcome",style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),)),
      ),
    );
  }
}