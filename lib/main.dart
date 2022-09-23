import 'package:challenge_four/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(  ChallengeFour());
}

class ChallengeFour extends StatelessWidget {
  const ChallengeFour({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ecommerce Ui',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:   HomeScreen(),
    );
  }
}

