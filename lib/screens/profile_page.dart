import 'package:flutter/material.dart';

import 'edit_profile.dart';
import 'login.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

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
        title: const Text('Profile', style: TextStyle(color: Colors.green)),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.edit, color: Colors.green),
            onPressed: () {
              // Handle profile edit
              Navigator.of(context).push(
                          MaterialPageRoute(
                           builder: (context) => EditProfileScreen(),
                         ),
                        );
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
              child: const Icon(Icons.person_add, size: 40, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            profileItem(Icons.person, 'Name', 'abc'),
            const SizedBox(height: 15),
            profileItem(Icons.email, 'E-Mail', 'abc@gmail.com'),
            const SizedBox(height: 15),
            profileItem(Icons.phone, 'Phone no.', '+91 ******6577'),
            const SizedBox(height: 15),
            profileItem(Icons.person_outline, 'Gender', 'Male', iconColor: Colors.purple),
            const Spacer(),
            ElevatedButton(
              onPressed: () {
                // Handle logout
                Navigator.of(context).push(
                          MaterialPageRoute(
                           builder: (context) => const LoginPage(),
                         ),
                        );
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.green[100],    // text color
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text('Logout', style: TextStyle(fontSize: 18)),
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
        const SizedBox(width: 15),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
            const SizedBox(height: 5),
            Text(subtitle, style: const TextStyle(fontSize: 14, color: Colors.grey)),
          ],
        ),
      ],
    );
  }
}