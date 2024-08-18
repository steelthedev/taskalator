import 'package:flutter/material.dart';

class AppTextHeader extends StatelessWidget {
  final String text;
  const AppTextHeader({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        color: Colors.black,
        fontSize: 32,
        fontFamily: "Sofia",
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
