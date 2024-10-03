
//import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'cart_page.dart';
//import 'package:plant_nusery_app/screens/categories.dart';

class CategoriesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories', style: TextStyle(color: Colors.green)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.green),
            onPressed: () {
              Navigator.of(context).push(
                          MaterialPageRoute(
                           builder: (context) => ShoppingCart(),
                         ),
                        );
            },
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
                  plantItem('Seeds', 'images/cucumber.jpg'),
                  plantItem('Flowers', 'images/lily.jpg'),
                  plantItem('Trees', 'images/tree.jpeg'),
                  plantItem('Firtilizers', 'images/fertilizers.jpeg'),
                  plantItem('Plants', 'images/money_plant.jpg'),
                  plantItem('Combos', 'images/combo.jpeg'),
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