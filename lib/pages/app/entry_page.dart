import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:taskalator/pages/app/create_taske_page.dart';
import 'package:taskalator/pages/app/home_page.dart';
import 'package:taskalator/pages/app/task_list_page.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  int selectedPage = 0;

  final _pageOptions = [
    const HomePage(),
    const CreateTaskePage(),
    const TaskListPage(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body: _pageOptions[selectedPage],
      bottomNavigationBar: Container(
        height: 70,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.1),
              blurRadius: 1,
              spreadRadius: 1)
        ] // Set the background color to white
            ),
        child: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.house,
                size: 25,
                color: selectedPage == 0
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.tertiary,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.plus,
                size: 25,
                color: selectedPage == 1
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.tertiary,
              ),
              label: "",
            ),
            BottomNavigationBarItem(
              icon: FaIcon(
                FontAwesomeIcons.list,
                size: 25,
                color: selectedPage == 2
                    ? Theme.of(context).colorScheme.primary
                    : Theme.of(context).colorScheme.tertiary,
              ),
              label: "",
            ),
          ],
          selectedItemColor: Theme.of(context).colorScheme.primary,
          unselectedItemColor: Theme.of(context).colorScheme.tertiary,
          elevation: 0, // Set to 0 since we use Container for elevation
          currentIndex: selectedPage,

          backgroundColor: Theme.of(context)
              .colorScheme
              .surface, // Transparent to use Container's color
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ),
      ),
    );
  }
}
