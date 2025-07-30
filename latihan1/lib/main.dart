import 'package:flutter/material.dart';
import 'package:latihan1/loginpage.dart';
import 'package:latihan1/registerpage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: const Loginpage(),
      routes: {
        '/register': (context) => const Registerpage(),
      },
    );
    
  }
}