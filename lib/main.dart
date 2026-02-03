import 'package:auth_arkanzak/auth/presentation/login_presentation.dart';
import 'package:auth_arkanzak/auth/presentation/signup_presentation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPresentation(),
    );
  }
}
