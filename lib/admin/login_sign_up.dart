import 'package:flutter/material.dart';
//import 'package:shared_preferences/shared_preferences.dart';

import 'login.dart';
import 'signup.dart';

class AdminLoginSignUp extends StatelessWidget {
  const AdminLoginSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          // Background image
          Image.asset(
            'images/background.jpg', // Add your image in the assets folder and update this path
            fit: BoxFit.cover,
          ),
          // Transparent overlay for the content
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          // Login form content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Logo or icon at the top
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white.withOpacity(0.9),
                    child: const Icon(
                      Icons.eco,
                      size: 50,
                      color: Colors.green,
                    ),
                  ),
                  const SizedBox(height: 20),
                  
                  // "Log in" Text
                  const Center(
                    child: Text(
                      "   Welcome\n         to \nPlant Nursery",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  
                 
                  ElevatedButton(
                    onPressed: ()  {
                      // Implement login functionality here
                      
                          Navigator.of(context).push(
                          MaterialPageRoute(
                           builder: (context) => const LoginPage(),
                         ),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15), backgroundColor: Colors.white.withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ), // button color
                    ),
                    child: const Text(
                      "Log in",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  // Log in button
                  ElevatedButton(
                    onPressed: () {

                      // Implement login functionality here
                      Navigator.of(context).push(
                          MaterialPageRoute(
                           builder: (context) => SignUpScreen(),
                         ),
                        );
                    },
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(horizontal: 80, vertical: 15), backgroundColor: Colors.white.withOpacity(0.9),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ), // button color
                    ),
                    child: const Text(
                      "Sign Up",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 20),
                  
                  
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}