import 'package:flutter/material.dart';
import 'package:taskalator/components/app_text_header.dart';
import 'package:taskalator/components/task_list_item.dart';
import 'package:taskalator/pages/app/create_taske_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(25),
          margin: const EdgeInsets.only(top: 30),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppTextHeader(text: "Create and check"),
              AppTextHeader(text: "Daily tasks"),
              Column(
                children: [TaskListItem(), TaskListItem(), TaskListItem()],
              )
            ],
          ),
        ),
      ),
    );
  }
}
