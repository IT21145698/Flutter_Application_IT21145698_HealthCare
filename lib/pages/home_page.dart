import 'package:flutter/material.dart';

import 'package:flutter_application_17/pages/appointment.dart';
import 'package:flutter_application_17/pages/feedbacks.dart';
import 'package:flutter_application_17/pages/home_page1.dart';
import 'package:flutter_application_17/pages/records.dart';
import 'package:flutter_application_17/pages/chatbot.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int myIndex = 0;
  List<Widget> widgetList = [
    /*
    Center(
        child: Text('Home',
            style: TextStyle(
              fontSize: 20,
            ))),
    const Center(
        child: Text('Appointment',
            style: TextStyle(
              fontSize: 20,
            ))),
    const Center(
        child: Text('Records',
            style: TextStyle(
              fontSize: 20,
            ))),
    const Center(
        child: Text('Feedbacks',
            style: TextStyle(
              fontSize: 20,
            ))),*/
    const HomePage1(),
    const Appointment(),
    const MyContainerApp(),
    const FeedbackPage(),
    const ChatGPTApp(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: IndexedStack(
        index: myIndex,
        children: widgetList,
      ),
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          textTheme: Theme.of(context).textTheme.copyWith(
                bodySmall: const TextStyle(
                    fontFamily: 'RedHatDisplay'), // Set the font family
              ),
        ),
        child: BottomNavigationBar(
          elevation: 0.0,
          backgroundColor: const Color.fromARGB(255, 255, 255, 255),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: const Color.fromARGB(255, 28, 107, 164),
          onTap: (index) {
            setState(() {
              myIndex = index;
            });
          },
          currentIndex: myIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.schedule, // Using a built-in icon for consistency
              ),
              label: 'Appointment',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.description, // Using a built-in icon for consistency
              ),
              label: 'Records',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.feedback, // Using a built-in icon for consistency
              ),
              label: 'Feedbacks',
            )
          ],
        ),
      ),
    );
  }
}
