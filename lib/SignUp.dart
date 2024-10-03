import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:project/CustomButton.dart';
import 'package:project/CustomTextField.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passController = TextEditingController();
    final TextEditingController confirmPassController = TextEditingController();
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
                child: Text('Sign Up', style: TextStyle(fontSize: 24)),
              ),
              const SizedBox(height: 20),
              Customtextfield(
                  text: "Enter Your  Name",
                  icon: const Icon(Icons.person),
                  controller: nameController),
              const SizedBox(height: 20),
              Customtextfield(
                  text: "Enter Your Email",
                  icon: const Icon(Icons.email),
                  controller: emailController),
              const SizedBox(height: 20),
              Customtextfield(
                ispass: true,
                text: "Enter Your Password",
                icon: const Icon(Icons.lock),
                controller: passController,
              ),
              // button submit
              const SizedBox(height: 20),
              Customtextfield(
                ispass: true,
                text: "Enter Confirm Password",
                icon: const Icon(Icons.lock),
                controller: confirmPassController,
              ),
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
                text: "Sign Up",
                onPressed: () {
                  log(nameController.text.trim());
                  log(emailController.text.trim());
                  log(passController.text.trim());
                },
              ),
              const SizedBox(height: 20),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                const Text('Already have an account? '),
                TextButton(child: const Text("Sign in"), onPressed: () {})
              ])
            ],
          ),
        ),
      ),
    ));
  }
}
