import 'package:flutter/material.dart';

class PwdInputText extends StatefulWidget {
  PwdInputText({required this.title, required this.onTextChanged});
  final String title;
  final Function onTextChanged;

  @override
  _PwdInputTextState createState() => _PwdInputTextState();
}

class _PwdInputTextState extends State<PwdInputText> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    String title = widget.title;
    Function onTextChanged = widget.onTextChanged;
    widget.onTextChanged;
    return TextField(
      keyboardType: TextInputType.visiblePassword,
      textAlign: TextAlign.center,
      onChanged: (value) {
        onTextChanged(value);
      },
      obscureText: isObscure,
      style: TextStyle(fontSize: 20, color: Colors.black),
      decoration: InputDecoration(
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

        suffixIcon: IconButton(
          icon: Icon(
            isObscure ? Icons.visibility : Icons.visibility_off,
            color: Colors.black,
          ),
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
        ),
      ),
    );
  }
}
