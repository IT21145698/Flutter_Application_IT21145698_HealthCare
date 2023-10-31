import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/SplashScreen2.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 219, 232, 237),
      body: Dismissible(
        key: UniqueKey(),
        direction: DismissDirection.endToStart,
        onDismissed: (_) {
          // swipe function
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) => const SplashScreen2(), //swipe to right
            ),
          );
        },
        child: Center(
          child: Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                ),
                height: MediaQuery.of(context).size.height *0.5, // to change the size of the logo
                child: Image.asset(
                  'assets/splash_image.png',
              
                ),
              ),
              Container(
                padding: const EdgeInsets.only(
                    top: 45, bottom: 8.5, left: 20, right: 20),
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 241, 237, 237),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black12,
                      blurRadius: 10,
                    ),
                  ],
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    const Text(
                      "Welcome to Health Care",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(
                        height: 40), // Add some spacing in between two text
                    const Text(
                      "Health Care is a platform where Location \nPatient can get connected with medical unit\ndental unit and the counselling unit in \nthe premises.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Color.fromARGB(230, 80, 81, 88),
                          fontSize: 14,
                          fontFamily: 'RedHatDisplay',
                          height: 1.5),
                    ),
                    const SizedBox(
                        height: 45), // Add spacing between text and circles
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 70, 183, 151),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 160, 236, 188),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 160, 236, 188),
                        ),
                        SizedBox(width: 8),
                        CircleAvatar(
                          radius: 8,
                          backgroundColor: Color.fromARGB(255, 160, 236, 188),
                        ),
                      ],
                    ),
                    Align(
                      alignment:
                          Alignment.bottomRight, // to float right the content
                      child: Padding(
                        padding: const EdgeInsets.only(top: 53, right: 2),
                        child: TextButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const SplashScreen2(),
                              ),
                            );
                          }, //add the function to the button
                          child: const Text(
                            "Skip for Now",
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromARGB(230, 80, 81, 88),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
