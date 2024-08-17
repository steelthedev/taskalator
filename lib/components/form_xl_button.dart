import 'package:flutter/material.dart';

class FormLargeButton extends StatelessWidget {
  final void Function()? onTap;
  final String text;
  const FormLargeButton({super.key, required this.onTap, required this.text});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(25),
        margin: const EdgeInsets.symmetric(horizontal: 9),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.primary),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontFamily: "Sofia",
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Theme.of(context).colorScheme.surface,
            ),
          ),
        ),
      ),
    );
  }
}
