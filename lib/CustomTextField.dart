import 'package:flutter/material.dart';

class Customtextfield extends StatelessWidget {
  final bool ispass;

  final String text;
  final Icon icon;
  final TextEditingController controller;

  const Customtextfield({
    super.key,
    this.ispass = false,
    required this.text,
    required this.icon,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      
        obscureText: ispass,
        cursorColor: Colors.lightGreen,
        decoration: InputDecoration(
            labelText: text,
            //label text font size increass
            labelStyle: const TextStyle(fontSize: 15),

            // hint text is basically i click a input field is hide hint text like show input field name is email
            // when i click the text field  is hide
            // hintText: text,

            // suffixIcon: Icon(
            //   Icons.email,
            //   color: Colors.lightGreen,
            // ) ,
            //prefix text is like value default set like email
            // prefixText: "Email",
            // sufix icon show right site in text field
            // suffixIcon: icon,
            // prefix icon show left site in text field
            prefixIcon: icon,
            suffixIconColor: Colors.blueAccent,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
                borderSide: BorderSide(color: Colors.grey, width: 2)),
            focusedBorder: const OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue, width: 2),
              borderRadius: BorderRadius.all(
                Radius.circular(12),
              ),
            ),
            errorBorder: const OutlineInputBorder(
                borderSide: BorderSide(color: Colors.red, width: 2),
                borderRadius: BorderRadius.all(Radius.circular(12)))));
  }
}
