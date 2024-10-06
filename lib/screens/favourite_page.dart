import 'package:flutter/material.dart';

import 'cart_page.dart';

class FavoritePage extends StatelessWidget {
  const FavoritePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite', style: TextStyle(color: Colors.green)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_cart, color: Colors.green),
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
                prefixIcon: const Icon(Icons.search),
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
              padding: const EdgeInsets.all(8),
              children: [
                favoriteItem('Rose', 'Their stems are usually prickly and their glossy, green leaves have toothed edges.', 'images/rose.jpg'),
                favoriteItem('Lily', 'Their stems are usually prickly and their glossy, green leaves have toothed edges.', 'images/lily.jpg'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget favoriteItem(String name, String description, String imagePath) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(imagePath),
          radius: 30,
        ),
        title: Text(name, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
        subtitle: Text(description),
        
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: const Icon(Icons.close, color: Colors.grey),
              onPressed: () {
                // Handle remove action
              },
            ),
            //Text(price, style: TextStyle(fontSize: 16)),
            // GestureDetector(
            //   onTap: () {
            //     // Handle buy action
            //   },
            //   child: Text('Buy', style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold)),
            // ),
          ],
        ),
      ),
    );
  }
}