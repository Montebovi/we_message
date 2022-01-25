import 'package:flutter/material.dart';
import 'package:we_message/components/rounded_button.dart';
import 'package:we_message/components/text_field.dart';

class RegistrationScreen extends StatefulWidget {
  static String id = 'Registration_Screen';
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Hero(
              tag: 'logo',
              child: Container(
                height: 200.0,
                child: Image.asset('images/logo1.png'),
              ),
            ),
            SizedBox(
              height: 48.0,
            ),
            InputText(title: 'Enter your email', obscureText: false),
            SizedBox(
              height: 8.0,
            ),
            InputText(title: 'Enter your password', obscureText: true),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                colour: Colors.blueAccent, title: 'Register', onPressed: () {})
          ],
        ),
      ),
    );
  }
}
