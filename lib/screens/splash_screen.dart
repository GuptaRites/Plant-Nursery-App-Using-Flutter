import 'dart:async';

import 'package:flutter/material.dart';
//import 'package:get/get.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(Duration(seconds:2), (){
      Navigator.pushReplacement(context,
      MaterialPageRoute(
        builder: (context) => LoginPage(),
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.green,
        child: Center(
          child: Text('Welcome',
          style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
        ),
        ),
      ),
    );
  }
}