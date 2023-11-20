import 'package:flutter/material.dart';
import 'package:login_lotto/layout.dart';
import 'package:login_lotto/lottery_app/lotto.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Lotto(),
    );
  }
}
