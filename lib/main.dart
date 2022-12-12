import 'package:flutter/material.dart';
import 'input_page.dart';

void main() {
  runApp(const BmiCalculator());
}

class BmiCalculator extends StatelessWidget {
  const BmiCalculator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color(0xFF0A0211),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF0A0211),
        ),
      ),
      title: 'BMI Calculator',
      home: const InputPage(),
    );
  }
}
