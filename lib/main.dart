import 'package:flutter/material.dart';
import 'package:spedah_login/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          appBarTheme: const AppBarTheme(
        surfaceTintColor: Colors.white,
      )),
      home:  const WelcomeScreen(),
    );
  }
}
