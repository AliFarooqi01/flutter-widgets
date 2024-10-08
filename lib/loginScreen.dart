import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project/CustomButton.dart';
import 'package:project/CustomTextField.dart';

class Loginscreen extends StatelessWidget {
  const Loginscreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();

    return Scaffold(
        body: SingleChildScrollView(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 30),
                child: Text('Login', style: TextStyle(fontSize: 24)),
              ),
              const SizedBox(height: 20),
              Customtextfield(
                  text: "Email",
                  icon: const Icon(Icons.email),
                  controller: emailController),
              const SizedBox(height: 20),
              Customtextfield(
                ispass: true,
                text: "Password",
                icon: const Icon(Icons.lock),
                controller: passController,
              ),
              // button submit
              const SizedBox(height: 20),
              // button name is submit
              // ElevatedButton(
              //   onPressed: () {},
              //   child: const Text('Login'),
              // ),
              // MaterialButton(
              //   onPressed: (){},
              //   child:  const Text("Sign in"),
              // )
              Custombutton(
                text: "Sign in",
                onPressed: () {
                  log(emailController.text.trim());
                  log(passController.text.trim());
                },
              ),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text("Don't have an account?"),
                TextButton(child: const Text("Sign up"), onPressed: () {})
              ])
            ],
          ),
        ),
      ),
    ));
  }
}
