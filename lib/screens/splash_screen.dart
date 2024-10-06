import 'dart:async';

import 'package:flutter/material.dart';
import 'package:plant_nusery_app/admin_user.dart';
//import 'package:get/get.dart';

//import 'login.dart';
//import 'login_sign_up.dart';

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
    Timer(const Duration(seconds:2), (){
      Navigator.pushReplacement(context,
      MaterialPageRoute(
        builder: (context) => const AdminUserPage(),
        ));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        color: Colors.green,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
        
          children: [
            CircleAvatar(
                radius: 50,
                backgroundColor: Colors.white.withOpacity(0.9),
                child: const Icon(
                  Icons.eco,
                  size: 50,
                  color: Colors.green,
                ),
              ),
            const Center(
              child: Text('Welcome',
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
               ), 
            ),  
          ],
        ),
      ),
    );
  }
}