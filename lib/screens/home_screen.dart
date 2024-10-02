
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
//import 'package:plant_nusery_app/screens/categories.dart';

class PlantHomePage extends StatefulWidget {
  @override
  State<PlantHomePage> createState() => _PlantHomePageState();
}

class _PlantHomePageState extends State<PlantHomePage> {
 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home', style: TextStyle(color: Colors.green)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.green),
            onPressed: () {},
          ),
        ],
        backgroundColor: Colors.green[50],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                children: [
                  plantItem('Rose', 'assets/rose.jpg'),
                  plantItem('Lily', 'assets/lily.jpg'),
                  plantItem('Money Plant', 'assets/moneyplant.jpg'),
                  plantItem('Sandalwood', 'assets/sandalwood.jpg'),
                  plantItem('Dalchini', 'assets/dalchini.jpg'),
                  plantItem('Cucumber', 'assets/cucumber.jpg'),
                ],
              ),
            ),
          ),
        ],
      ),

    );
  }

  Widget plantItem(String name, String imagePath) {
    return Column(
      children: [
        Expanded(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              image: DecorationImage(
                image: AssetImage(imagePath),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        SizedBox(height: 5),
        Text(name, style: TextStyle(fontSize: 16)),
      ],
    );
  }
}