import 'package:ethio_market_app/screens/login.dart';
import 'package:flutter/material.dart';
//import 'screens/login_screen.dart';

void main() {
  // Entry point of the Flutter application
  runApp(const EthioMarketApp());
}

class EthioMarketApp extends StatelessWidget {
  const EthioMarketApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ethio Market',
      debugShowCheckedModeBanner: false,
      // Setting up the global application theme colors
      theme: ThemeData(
        primaryColor: const Color(0xFF4D7227),
        scaffoldBackgroundColor: Colors.white,
      ),
      // App starts on the Login Screen
      home: const Login(),
    );
  }
}
