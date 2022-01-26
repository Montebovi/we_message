import 'package:flutter/material.dart';

class InputText extends StatelessWidget {
  InputText(
      {required this.title,
      required this.obscureText,
      required this.onTextChanged});

  final String title;
  final bool obscureText;
  final Function onTextChanged;
  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: TextInputType.emailAddress,
      textAlign: TextAlign.center,
      onChanged: (value) {
        onTextChanged(value);
      },
      obscureText: obscureText,
      style: TextStyle(fontSize: 20, color: Colors.black),
      decoration: InputDecoration(
        fillColor: Colors.teal[100],
        alignLabelWithHint: true,
        filled: true,
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.black, width: 3.0),
          borderRadius: BorderRadius.circular(10.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(width: 2, color: Colors.black),
          borderRadius: BorderRadius.circular(15.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black, width: 1.0),
          borderRadius: BorderRadius.circular(15.0),
        ),
        // hintText: 'Inserire $title',
        labelText: title,
        labelStyle: TextStyle(color: Colors.black, fontSize: 15.0),
      ),
    );
  }
}
