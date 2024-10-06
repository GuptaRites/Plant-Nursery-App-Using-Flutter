
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:plant_nusery_app/screens/categories.dart';
import 'package:plant_nusery_app/screens/profile_page.dart';

import 'favourite_page.dart';
import 'home_screen.dart';

class NavigatorPage extends StatefulWidget {
  const NavigatorPage({super.key});

  @override
  State<NavigatorPage> createState() => _NavigatorPageState();
}

class _NavigatorPageState extends State<NavigatorPage> {
  int myIndex = 0;
  List screenList= [
    PlantHomePage(),
    FavoritePage(),
    CategoriesPage(),
    const ProfilePage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   // title: Text('Home', style: TextStyle(color: Colors.green)),
      //   // centerTitle: true,
      //   // actions: [
      //   //   IconButton(
      //   //     icon: Icon(Icons.shopping_cart, color: Colors.green),
      //   //     onPressed: () {},
      //   //   ),
      //   //],
      //   backgroundColor: Colors.green[50],
      // ),
      body: screenList[myIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
             myIndex = index;
          });
         
        },
        currentIndex: myIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.category),
            label: 'Categories',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}