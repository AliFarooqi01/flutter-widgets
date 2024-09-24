import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: const Color.fromARGB(255, 0, 0, 0),
        height: 200,
        width: 100, // Specify a color here
        child: Text(
          "Ali",
          style: TextStyle(color: const Color.fromARGB(255, 255, 255, 255)),
        ),
      ),
    );
  }
}
