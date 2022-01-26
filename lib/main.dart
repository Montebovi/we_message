import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:we_message/screens/welcome_screen.dart';
import 'package:we_message/screens/login_screen.dart';
import 'package:we_message/screens/registration_screen.dart';
import 'package:we_message/screens/chat_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: const FirebaseOptions(
      apiKey: 'AIzaSyAxWQapz3LnNAitvLqk6sqe0Q2-OCgEh4g',
      appId: "1:375639503933:web:a96de6939a4a19b695e654",
      messagingSenderId: "375639503933",
      projectId: "we-message-5be2a",
      storageBucket: "we-message-5be2a.appspot.com",
    ),
  );
  runApp(FlashChat());
}

class FlashChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        textTheme: TextTheme(
          bodyText1: TextStyle(color: Colors.black54),
        ),
      ),
      home: WelcomeScreen(),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        ChatScreen.id: (context) => ChatScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
      },
    );
  }
}
