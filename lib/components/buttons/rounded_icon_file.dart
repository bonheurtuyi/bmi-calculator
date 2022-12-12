import 'package:flutter/material.dart';

class RoundedIconButton extends StatelessWidget {
  const RoundedIconButton(
      {Key? key, required this.icon, required this.onPressed})
      : super(key: key);
  final IconData icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 56.0, height: 56.0),
      fillColor: const Color(0xFF4C4F5E),
      shape: const CircleBorder(),
      elevation: 6.0,
      child: Icon(icon),
    );
  }
}
