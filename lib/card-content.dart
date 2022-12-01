import 'package:flutter/material.dart';

class CardContent extends StatelessWidget {
  const CardContent({Key? key, required this.iconName, required this.textTitle})
      : super(key: key);
  final String textTitle;
  final IconData iconName;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconName,
          size: 80.0,
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          textTitle,
          style: const TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: 18.0,
          ),
        ),
      ],
    );
  }
}
