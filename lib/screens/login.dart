
import 'package:ethio_market_app/screens/home.dart';
import 'package:flutter/material.dart';
import '../constants/app_colors.dart';


class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          // Top green banner acting as the header
          Container(
            width: double.infinity,
            height: 160,
            color: AppColors.primaryGreen,
            alignment: Alignment.bottomCenter,
            padding: const EdgeInsets.only(bottom: 20),
            child: const Text(
              'Login',
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          const SizedBox(height: 40),

          // App main branding title
          const Text(
            'Ethio Market',
            style: TextStyle(
              color: AppColors.primaryGreen,
              fontSize: 36,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 40),

          // Main form container holding inputs and buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              children: [
                // Email input field container
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.inputBackground,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.red.withOpacity(0.1),
                    ),
                  ),
                  child: const TextField(
                    decoration: InputDecoration(
                      hintText: 'Email',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 16),

                // Password input field container
                Container(
                  decoration: BoxDecoration(
                    color: AppColors.inputBackground,
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: Colors.red.withOpacity(0.1),
                    ),
                  ),
                  child: const TextField(
                    obscureText: true,
                    decoration: InputDecoration(
                      hintText: 'Password',
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16,
                        vertical: 16,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                const SizedBox(height: 40),

                // Action login button
                SizedBox(
                  width: double.infinity,
                  height: 55,
                  child: ElevatedButton(
                    onPressed: () {
                      // Navigate directly to HomeScreen on click
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const Home(),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.primaryGreen,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20),

                // Bottom registration text navigation link
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Don't have account? ",
                      style: TextStyle(color: Colors.grey),
                    ),
                    GestureDetector(
                      onTap: () {
                        // Handle navigation to registration here
                      },
                      child: const Text(
                        'Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black54,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}