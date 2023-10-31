import 'package:flutter/material.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Padding(
          padding: EdgeInsets.only(
            top: 35.0,
            left: 20.0, // Adjust left padding
          ),
          child: Text(
            'Notifications',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Color.fromARGB(255, 25, 142, 182),
            ),
          ),
        ),
        leading: Padding(
          // Add padding to the back icon
          padding: const EdgeInsets.only(
            top: 27.0,
            left: 20.0,
          ), // Adjust top and left padding
          child: IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black, // Set the color to black
            ),
            onPressed: () {
              Navigator.pop(context); // Navigate back to the previous screen
            },
          ),
        ),
        backgroundColor:
            Colors.transparent, // Set appbar background to transparent
        elevation: 0, // Remove app bar shadow
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(23.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                  height:
                      20.0), //putting all the text and the pictures in a container
              buildNotificationItem(
                'assets/notification1.png',
                '3 Schedules!',
                'Check your schedule Today',
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification2.png',
                'Medicine',
                'Check your Medicine details',
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification3.png',
                'Records Update',
                'Check your Medicine Records',
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification4.png',
                'Feedbacks Update',
                'Check your feedback',
              ),
              const SizedBox(height: 20.0),
              buildNotificationItem(
                'assets/notification5.png',
                'Doctor Update',
                'Check your doctor details',
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildNotificationItem(
    // calling the text,titles,subtitles and pictures
    String imagePath,
    String title,
    String subtitle,
  ) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey, width: 1.0), //border set to grey
        color: const Color.fromARGB(255, 255, 255, 255),
        borderRadius: BorderRadius.circular(20),
      ),
      height: 90.0,
      child: Row(
        children: [
          const SizedBox(width: 15.0),
          Image.asset(
            imagePath,
            width: 55.0,
            height: 53.0,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 30.0),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RedHatDisplay',
                    color: Colors.black,
                    fontSize: 17,
                  ),
                ),
                Text(
                  subtitle,
                  style: const TextStyle(
                    fontSize: 14.0,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
