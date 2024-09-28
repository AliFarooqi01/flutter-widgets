import 'dart:math';

import 'package:flutter/material.dart';
import 'package:project/CustomButton.dart';
import 'package:project/CustomTextField.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Login', style: TextStyle(fontSize: 24)),
          SizedBox(height: 20),
          Customtextfield(text: "Email", icon: Icon(Icons.email)),
          SizedBox(height: 20),
          Customtextfield(
              ispass: true, text: "Password", icon: Icon(Icons.lock)),
          // button submit
          SizedBox(height: 20),
          // button name is submit
          // ElevatedButton(
          //   onPressed: () {},
          //   child: const Text('Login'),
          // ),
          // MaterialButton(
          //   onPressed: (){},
          //   child:  const Text("Sign in"),
          // )
          Custombutton()
        ],
      ),
    ));
  }
}
