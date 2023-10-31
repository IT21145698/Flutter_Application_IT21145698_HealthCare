import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/doctor_details.dart';
import 'package:flutter_application_17/pages/medicine_description.dart';
import 'package:flutter_application_17/pages/profile.dart';

import 'notification.dart';
//import 'chatbot.dart';

class HomePage1 extends StatelessWidget {
  const HomePage1({super.key});

  void _handleNotificationPress(BuildContext context) {
    // Handle notification button press
    Navigator.push(context,
        MaterialPageRoute(builder: (context) => const NotificationPage()));
  }

  void _handleProfileImagePress(BuildContext context) {
    // Handle profile image press
    Navigator.push(
        context, MaterialPageRoute(builder: (context) => const ProfilePage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set background color to white
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => _handleProfileImagePress(
                    context), // Call the onPressed function
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color.fromARGB(255, 25, 141, 182),
                          width: 2.0,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 40.0,
                        backgroundImage:
                            AssetImage('assets/profile_picture.jpg'),
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ), // Add space between picture and text
                    const Text(
                      'Udiptha ,',
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'RedHatDisplay',
                      ),
                    ),
                    const Spacer(), // Add spacer to push the icon to the right
                    IconButton(
                      icon: const Icon(Icons.notifications_on),
                      onPressed: () => _handleNotificationPress(
                          context), // Call the onPressed function
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 15.0,
              ),
              // Add spacing between profile and container
              Container(
                padding: const EdgeInsets.all(20.0),
                decoration: BoxDecoration(
                  color: const Color.fromARGB(255, 86, 165, 195),
                  borderRadius:
                      BorderRadius.circular(10.0), // Add border radius
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Medical Center',
                            style: TextStyle(
                              fontSize: 20.0,
                              fontWeight: FontWeight.bold,
                              fontFamily: 'RedHatDisplay',
                              color: Color.fromARGB(255, 0, 0, 0),
                            ),
                          ),
                          SizedBox(height: 8.0), // Add spacing
                          Text(
                            "Connecting Health and Knowledge: ",
                            style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontFamily: 'RedHatDisplay',
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Image.asset(
                      'assets/doctor2.png',
                      width: 80.0,
                      height: 110.0,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10.0), // Add spacing below container
              const Text(
                'Main Categories',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RedHatDisplay',
                ),
              ),
              const SizedBox(height: 6.0), // Add spacing
              Column(
                children: [
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 80, 148, 173),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(25)),
                    ),
                    height: 55.0,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/doctor3.png',
                          width: 64.0,
                          height: 55.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20.0),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DR. T. WIJESINGHE',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Medical Facility',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'RedHatDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height: 10.0), // Add spacing between containers
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 53, 121, 160),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(25)),
                    ),
                    height: 55.0,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/doctor4.png',
                          width: 64.0,
                          height: 55.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20.0),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DR D.T.N. ARIYAPALA',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Dental Facility',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'RedHatDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                      height: 10.0), // Add spacing between containers
                  Container(
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 56, 124, 133),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(25),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(25)),
                    ),
                    height: 55.0,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/doctor5.png',
                          width: 64.0,
                          height: 55.0,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 20.0),
                        const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'DR MANJULA KURUPPU',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                                color: Colors.white,
                                fontSize: 15,
                              ),
                            ),
                            Text(
                              'Counseling Facility',
                              style: TextStyle(
                                fontSize: 14.0,
                                fontFamily: 'RedHatDisplay',
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                  height:
                      10.0), // Add spacing before 'Other Details and Services' text
              const Text(
                'Other Details and Services',
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'RedHatDisplay',
                ),
              ),
              const SizedBox(
                height: 5.3,
              ),
              Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      // Handle Doctor Details container press
                      // You can navigate to a new page or perform any action you want
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const DoctorDetailsPage()),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 135.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 151, 217, 240),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        const Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Doctor details',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 40,
                          child: Image.asset(
                            'assets/doctor6.png', // Add your image path
                            width: 50,
                            height: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 20.0), // Add spacing between containers
                  GestureDetector(
                    onTap: () {
                      // Handle Medicine Description container press
                      // You can navigate to a new page or perform any action you want
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                const MedicineDescriptionPage()),
                      );
                    },
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Container(
                          width: 135.0,
                          height: 80.0,
                          decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 151, 217, 240),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ),
                        const Positioned.fill(
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: Text(
                              'Medicine description',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontFamily: 'RedHatDisplay',
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          top: 5,
                          right: 40,
                          child: Image.asset(
                            'assets/doctor7.png', // Add your image path
                            width: 50,
                            height: 55,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}


