import 'dart:developer';

import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {
          // log
          // ignore: avoid_print
          log('login button tapped');
        },
        child: Container(
          width: double.infinity,
          height: 50,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(20)),
          child: const Center(
              child: Text(
            'Login',
            style: TextStyle(color: Colors.white),
          )),
        ));
  }
}
