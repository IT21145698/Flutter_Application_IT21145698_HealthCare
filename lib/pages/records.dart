import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/home_page.dart';

class MyContainerApp extends StatelessWidget {
  const MyContainerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.only(left: 2, right: 10),
        child: Column(
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  },
                ),
                const SizedBox(
                  height: 110,
                  width: 10,
                ),
                const Text(
                  'All Records',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'RedHatDisplay',
                  ),
                ),
              ],
            ),
            const SizedBox(height: 0),
            Container(
              width: 327,
              height: 100,
              decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 244, 240, 240),
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                      color: const Color.fromARGB(255, 255, 255, 255),
                      width: 2)),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 255,
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 5, left: 35, right: 10),
                        color: const Color.fromARGB(255, 244, 240, 240),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reason : Flu',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Allegis and reaction : No  ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Appointment time : 2.30pm ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 126, 174, 191),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('16 Jul')),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xffaed2f0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('New')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 9),
            Container(
              width: 327,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 240, 240),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromARGB(255, 254, 254, 254), width: 2),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 255,
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 5, left: 35, right: 10),
                        color: const Color.fromARGB(255, 244, 240, 240),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reason : Headache',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Allegis and reaction : No  ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Appointment time : 1.30pm ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 126, 174, 191),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('10 Jul')),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xffaed2f0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('6 days')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Container(
              width: 327,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 240, 240),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255), width: 2),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 255,
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 5, left: 35, right: 10),
                        color: const Color.fromARGB(255, 244, 240, 240),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reason : stomach ache',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Allegis and reaction : No  ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Appointment time : 9.30am ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 72,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 126, 174, 191),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('29 Jun')),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xffaed2f0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('12 days')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Container(
              width: 327,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 240, 240),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255), width: 2),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 255,
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 5, left: 35, right: 10),
                        color: const Color.fromARGB(255, 244, 240, 240),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reason : Flu',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Allegis and reaction : No  ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Appointment time : 10.30am ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 126, 174, 191),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('15 Jun')),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xffaed2f0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('20 days')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 13),
            Container(
              width: 327,
              height: 100,
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 244, 240, 240),
                borderRadius: BorderRadius.circular(10),
                border: Border.all(
                    color: const Color.fromARGB(255, 255, 255, 255), width: 2),
              ),
              child: Stack(
                alignment: Alignment.topRight,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        width: 255,
                        padding: const EdgeInsets.only(
                            top: 15, bottom: 5, left: 35, right: 10),
                        color: const Color.fromARGB(255, 244, 240, 240),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Reason : Gastric',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Allegis and reaction : No  ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                            Text(
                              'Appointment time : 2.30pm ',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 1),
                    ],
                  ),
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 50,
                          decoration: const BoxDecoration(
                            color: Color.fromARGB(255, 126, 174, 191),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('10 Jun')),
                        ),
                      ),
                      const SizedBox(height: 5),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                          width: 70,
                          height: 40,
                          decoration: const BoxDecoration(
                            color: Color(0xffaed2f0),
                            borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomLeft: Radius.circular(10),
                              bottomRight: Radius.circular(10),
                            ),
                          ),
                          child: const Center(child: Text('29 days')),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
