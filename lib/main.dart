import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:rescheck/pages/forgot_password.dart';
import 'package:rescheck/pages/home.dart';
import 'package:rescheck/pages/signin.dart';
import 'package:rescheck/pages/signup.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Res-Check',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Home(),
      routes: {
        '/signup': (context) => Signup(),
        '/signin': (context) => Signin(),
        '/forgot_password': (context) => ForgotPassword(),
        '/home': (context) => Home(),
      },
    );
  }
}
