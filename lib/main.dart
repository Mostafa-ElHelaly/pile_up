import 'package:flutter/material.dart';
import 'package:pile_up/screens/login.dart';

void main() {
  runApp(const PileUp());
}

class PileUp extends StatefulWidget {
  const PileUp({super.key});

  @override
  State<PileUp> createState() => _PileUpState();
}

class _PileUpState extends State<PileUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: login(),
    );
  }
}
