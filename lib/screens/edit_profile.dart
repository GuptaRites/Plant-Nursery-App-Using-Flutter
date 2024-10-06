//import 'package:flutter/widgets.dart';

import 'package:flutter/material.dart';

import 'botom_navigator_bar.dart';

class EditProfileScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController genderController = TextEditingController();

  EditProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green.shade400,
        title: Text('Edit Profile', style: TextStyle(color: Colors.green.shade800)),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Handle back action
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Profile picture placeholder
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.grey.shade300,
              child: const Icon(Icons.person, size: 50, color: Colors.grey),
            ),
            const SizedBox(height: 20),
            // Input fields for user details
            CustomTextField(
              controller: nameController,
              label: 'Name',
            ),
            CustomTextField(
              controller: emailController,
              label: 'E-Mail',
            ),
            CustomTextField(
              controller: phoneController,
              label: 'Phone no.',
            ),
            CustomTextField(
              controller: genderController,
              label: 'Gender',
            ),
            const SizedBox(height: 30),
            ElevatedButton(
              onPressed: () {
                // Save button logic goes here
                Navigator.of(context).push(
                          MaterialPageRoute(
                           builder: (context) => NavigatorPage(),
                         ),
                        );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green.shade400, // Save button color
                padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15),
              ),
              child: const Text(
                'Save',
                style: TextStyle(fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// A custom widget for the text fields
class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String label;

  const CustomTextField({super.key, required this.controller, required this.label});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: const BorderSide(color: Colors.grey),
          ),
          filled: true,
          fillColor: Colors.grey.shade200,
        ),
      ),
    );
  }
}