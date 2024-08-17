import 'package:flutter/material.dart';

class SocialBar extends StatelessWidget {
  final Icon icon;
  final String text;
  const SocialBar({super.key, required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(25),
      margin: const EdgeInsets.symmetric(horizontal: 9),
      decoration: BoxDecoration(
          border: Border.all(
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15)),
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 50,
          ),
          Text(
            text,
            style: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontWeight: FontWeight.bold,
              fontSize: 19,
              fontFamily: "Sofia",
            ),
          ),
        ],
      ),
    );
  }
}
