import 'package:flutter/material.dart';
import 'input-page.dart';

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
        backgroundColor: const Color(0xFF0A0211),
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: const Color(0xFF0A0211),
        ),
        scaffoldBackgroundColor: const Color(0xFF0A0211),
      ),
      title: 'BMI Calculator',
      home: const InputPage(),
    );
  }
}
