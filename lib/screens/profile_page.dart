import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // leading: IconButton(
        //   icon: Icon(Icons.arrow_back),
        //   onPressed: () {
        //     // Handle back navigation
        //   },
        // ),
        title: Text('Profile', style: TextStyle(color: Colors.green)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.edit, color: Colors.green),
            onPressed: () {
              // Handle profile edit
            },
          ),
        ],
        backgroundColor: Colors.green[50],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundColor: Colors.grey[200],
              child: Icon(Icons.person_add, size: 40, color: Colors.grey),
            ),
            SizedBox(height: 20),
            profileItem(Icons.person, 'Name', 'abc'),
            SizedBox(height: 15),
            profileItem(Icons.email, 'E-Mail', 'abc@gmail.com'),
            SizedBox(height: 15),
            profileItem(Icons.phone, 'Phone no.', '+91 ******6577'),
            SizedBox(height: 15),
            profileItem(Icons.person_outline, 'Gender', 'Male', iconColor: Colors.purple),
            Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle logout
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.green[100],    // text color
                minimumSize: Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Text('Logout', style: TextStyle(fontSize: 18)),
            ),
          ],
        ),
      ),
    );
  }

  Widget profileItem(IconData icon, String title, String subtitle, {Color? iconColor}) {
    return Row(
      children: [
        Icon(icon, color: iconColor ?? Colors.black),
        SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}