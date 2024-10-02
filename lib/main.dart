import 'package:flutter/material.dart';
//import 'package:plant_nusery_app/screens/login.dart';

//import 'screens/forget_password.dart';
//import 'screens/create_password.dart';
//import 'screens/login_sign_up.dart';
//import 'screens/botom_navigator_bar.dart';
//import 'screens/home_screen.dart';
//import 'screens/favourite_page.dart';
//import 'screens/profile_page.dart';
//import 'screens/signup.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant Nusery App',
      theme: ThemeData(
        
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      //home: SplashScreen(),
      home: SplashScreen(),
    );
  }
}
