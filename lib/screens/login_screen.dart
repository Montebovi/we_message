import 'package:flutter/material.dart';
import 'package:we_message/components/password_field.dart';
import 'package:we_message/components/rounded_button.dart';
import 'package:we_message/components/text_field.dart';

class LoginScreen extends StatefulWidget {
  static String id = 'Login_Screen';
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  late String email = '';
  late String password = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal[200],
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
            InputText(
              title: 'Enter your email',
              obscureText: false,
              onTextChanged: (value) {
                email = value;
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            PwdInputText(
              title: 'Enter your Password',
              onTextChanged: (value) {
                password = value;
              },
            ),
            SizedBox(
              height: 24.0,
            ),
            RoundedButton(
                colour: Colors.lightBlueAccent,
                title: 'Log In',
                onPressed: () {
                  print(email);
                  print(password);
                }),
          ],
        ),
      ),
    );
  }
}
