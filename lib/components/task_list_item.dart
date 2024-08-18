import 'package:flutter/material.dart';

class TaskListItem extends StatelessWidget {
  const TaskListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(30),
        margin: EdgeInsets.only(top: 20),
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.surface,
            // border: Border.all(width: 0),
            boxShadow: [
              BoxShadow(
                color: Theme.of(context).colorScheme.tertiary.withOpacity(0.2),
                blurRadius: 2,
              )
            ],
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Text(
                "Mon 17 Jan, 2022",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.tertiary,
                  fontFamily: "Sofia",
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Project UI",
                style: TextStyle(
                  color: Colors.black,
                  fontFamily: "Sofia",
                  fontSize: 20,
                ),
              ),
            ]),
          ],
        ));
  }
}
