import 'package:flutter/material.dart';

import 'login.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

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
          // Transparent overlay
          Container(
            color: Colors.black.withOpacity(0.3),
          ),
          // Sign up form content
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // "Sign up" Text
                    const Text(
                      "Sign up",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    
                    // Input fields for First name, Last name, Email, Mobile number
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        label: const Text("Enter your First name"),
                        hintText: 'First name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        label: const Text("Enter your Last name"),
                        hintText: 'Last name',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    
                    TextField(
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        label: const Text("Enter your Email"),
                        hintText: 'Email',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 15),
                    
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        label: const Text("Enter Mobile Number"),
                        hintText: 'Mobile number',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        label: const Text("Create User Id"),
                        hintText: 'Create User Id',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                
                
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        label: const Text("Create Password"),
                        hintText: 'Create Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                
                
                    TextField(
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.white.withOpacity(0.9),
                        label: const Text("Conform Password"),
                        hintText: 'Conform Password',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                
                    // Gender selection radio buttons
                    Row(
                      children: [
                        const Text(
                          'Gender:',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Row(
                            children: [
                              Radio(
                                value: 'Male',
                                groupValue: 'gender',
                                onChanged: (value) {},
                                activeColor: Colors.white,
                              ),
                              const Text(
                                'Male',
                                style: TextStyle(color: Colors.white),
                              ),
                              Radio(
                                value: 'Female',
                                groupValue: 'gender',
                                onChanged: (value) {},
                                activeColor: Colors.white,
                              ),
                              const Text(
                                'Female',
                                style: TextStyle(color: Colors.white),
                              ),
                              Radio(
                                value: 'Other',
                                groupValue: 'gender',
                                onChanged: (value) {},
                                activeColor: Colors.white,
                              ),
                              const Text(
                                'Other',
                                style: TextStyle(color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    
                    // "Next" button
                    ElevatedButton(
                      onPressed: () {
                        // Implement next step functionality here
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
                        "Submit",
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}