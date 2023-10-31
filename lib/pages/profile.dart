import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/notification.dart';
import 'package:flutter_application_17/pages/signin.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            expandedHeight: 70.0,
            elevation: 0.0,
            pinned: true,
            backgroundColor: const Color.fromARGB(255, 250, 252, 252),
            leading: Container(
              margin: const EdgeInsets.only(top: 20.0), // Add margin top
              child: IconButton(
                icon: const Icon(Icons.arrow_back,
                    color: Colors.black), // Set color to black
                onPressed: () {
                  // Handle back button press
                  Navigator.pop(context);
                },
              ),
            ),
            title: Container(
              margin: const EdgeInsets.only(top: 30.0), // Add margin top
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Profile',
                    style: TextStyle(
                        color: Colors.black, // Set color to black
                        fontSize: 26,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            actions: [
              Container(
                margin: const EdgeInsets.only(
                    top: 20.0, right: 10.0), // Add margin top and right
                child: IconButton(
                  icon: const Icon(Icons.notifications_on,
                      color: Colors.black), // Set color to black
                  onPressed: () {
                    // Handle bell icon press
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NotificationPage(),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (BuildContext context, int index) {
                if (index == 0) {
                  // Profile picture and name
                  return Column(
                    children: [
                      const SizedBox(height: 8.0),
                      Container(
                        margin: const EdgeInsets.only(
                            bottom: 10.0), // Add margin bottom
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: const Color.fromARGB(
                                255, 0, 83, 122), // Border color
                            width: 2.0, // Border width
                          ),
                        ),
                        child: const CircleAvatar(
                          radius: 50.0,
                          backgroundImage:
                              AssetImage('assets/profile_picture.jpg'),
                        ),
                      ),
                      const SizedBox(height: 10.0),
                      const Text(
                        'Udiptha Kavinda',
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RedHatDisplay'),
                      ),
                      const SizedBox(height: 24.0), // Add more space here
                    ],
                  );
                } else if (index == 1) {
                  // History
                  return ListTile(
                    leading: const Icon(
                      Icons.history,
                      color: Color.fromARGB(
                          255, 25, 142, 182), // Change icon color to blue
                    ),
                    title: const Text(
                      'History',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle history icon press
                    },
                  );
                } else if (index == 2) {
                  // Personal Details
                  return ListTile(
                    leading: const Icon(
                      Icons.person,
                      color: Color.fromARGB(
                          255, 25, 142, 182), // Change icon color to blue
                    ),
                    title: const Text(
                      'Personal Details',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle personal details icon press
                    },
                  );
                } else if (index == 3) {
                  // Location
                  return ListTile(
                    leading: const Icon(
                      Icons.location_on,
                      color: Color.fromARGB(
                          255, 25, 142, 182), // Change icon color to blue
                    ),
                    title: const Text(
                      'Location',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle location icon press
                    },
                  );
                } else if (index == 4) {
                  // Payment Method
                  return ListTile(
                    leading: const Icon(
                      Icons.payment,
                      color: Color.fromARGB(
                          255, 25, 142, 182), // Change icon color to blue
                    ),
                    title: const Text(
                      'Payment Method',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle payment method icon press
                    },
                  );
                } else if (index == 5) {
                  // Setting
                  return ListTile(
                    leading: const Icon(
                      Icons.settings,
                      color: Color.fromARGB(
                          255, 25, 142, 182), // Change icon color to blue
                    ),
                    title: const Text(
                      'Settings',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle setting icon press
                    },
                  );
                } else if (index == 6) {
                  // Help
                  return ListTile(
                    leading: const Icon(
                      Icons.help,
                      color: Color.fromARGB(
                          255, 25, 142, 182), // Change icon color to blue
                    ),
                    title: const Text(
                      'Help',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    trailing: const Icon(Icons.arrow_forward),
                    onTap: () {
                      // Handle help icon press
                    },
                  );
                } else if (index == 7) {
                  // Logout
                  return ListTile(
                    leading: const Icon(
                      Icons.exit_to_app,
                      color: Color.fromARGB(
                          255, 25, 142, 182), // Change icon color to blue
                    ),
                    title: const Text(
                      'Logout',
                      style: TextStyle(
                          fontFamily: 'RedHatDisplay',
                          fontSize: 18,
                          fontWeight: FontWeight.bold),
                    ),
                    onTap: () {
                      // Handle logout icon press
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInPage(),
                        ),
                      );
                    },
                  );
                } else {
                  // Empty item without text
                  return const SizedBox.shrink();
                }
              },
              childCount: 8, // Adjust the count as needed (7 visible items)
            ),
          ),
        ],
      ),
    );
  }
}
