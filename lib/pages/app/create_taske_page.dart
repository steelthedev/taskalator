import 'package:flutter/material.dart';

class CreateTaskePage extends StatefulWidget {
  const CreateTaskePage({super.key});

  @override
  State<CreateTaskePage> createState() => _CreateTaskePageState();
}

class _CreateTaskePageState extends State<CreateTaskePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Text(
          "I am create page",
          style: TextStyle(color: Theme.of(context).colorScheme.primary),
        ),
      ),
    );
  }
}
