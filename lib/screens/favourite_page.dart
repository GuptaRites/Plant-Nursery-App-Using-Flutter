import 'package:flutter/material.dart';

import 'cart_page.dart';

class FavoritePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Favorite', style: TextStyle(color: Colors.green)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.green),
            onPressed: () {
              // Handle cart action
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
            child: ListView(
              padding: EdgeInsets.all(8),
              children: [
                favoriteItem('Rose', 'Their stems are usually prickly and their glossy, green leaves have toothed edges.', 'assets/rose.jpg', '\$200.00'),
                favoriteItem('Rose', 'Their stems are usually prickly and their glossy, green leaves have toothed edges.', 'assets/rose.jpg', '\$200.00'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget favoriteItem(String name, String description, String imagePath, String price) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 30,
        ),
        title: Text(name, style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Icon(Icons.close, color: Colors.grey),
              onPressed: () {
                // Handle remove action
              },
            ),
            Text(price, style: TextStyle(fontSize: 16)),
            GestureDetector(
              onTap: () {
                // Handle buy action
              },
              child: Text('Buy', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
            ),
          ],
        ),
      ),
    );
  }
}