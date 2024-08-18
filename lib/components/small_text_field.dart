import 'package:flutter/material.dart';

class SmallTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final bool obscureText;

  const SmallTextField({
    super.key,
    required this.controller,
    required this.hintText,
    required this.obscureText,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: SizedBox(
        width: 70,
        child: TextField(
          textAlign: TextAlign.center,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.all(25),
            hintText: hintText,
            hintStyle: TextStyle(
              color: Theme.of(context).colorScheme.tertiary,
              fontFamily: "Sofia",
              fontSize: 17,
            ),
            filled: true,
            fillColor: Theme.of(context).colorScheme.inverseSurface,
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Theme.of(context).colorScheme.inversePrimary,
              ),
              borderRadius: const BorderRadius.all(Radius.circular(15)),
            ),
          ),
        ),
      ),
    );
  }
}
