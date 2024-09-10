import 'package:flutter/material.dart';
import 'package:flutter_application_2/HomePage.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gerar QR CODE Pix',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 73, 255, 17)),
        useMaterial3: true,
      ),
      home: const homePage(),
    );
  }
}


