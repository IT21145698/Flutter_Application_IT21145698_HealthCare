import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/home_page.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?> onChanged;
  final Color activeColor;
  final Color checkColor;
  final double size; // Added size property

  const CustomRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    this.activeColor = Colors.blue,
    this.checkColor = Colors.white,
    this.size = 23.0, // Default size
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        onChanged(value);
      },
      child: Container(
        width: size, // Set size
        height: size, // Set size
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: groupValue == value ? activeColor : Colors.transparent,
          border: Border.all(color: activeColor),
        ),
        child: Center(
          child: groupValue == value
              ? Icon(
                  Icons.check,
                  size: size / 2.0, // Adjust the check icon size
                  color: checkColor,
                )
              : null,
        ),
      ),
    );
  }
}

class FeedbackPage extends StatefulWidget {
  const FeedbackPage({Key? key}) : super(key: key);

  @override
  _FeedbackPageState createState() => _FeedbackPageState();
}

class _FeedbackPageState extends State<FeedbackPage> {
  bool? _recommend = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(200.0),
        child: AppBar(
          elevation: 0,
          backgroundColor: const Color.fromARGB(255, 80, 148, 173),
          automaticallyImplyLeading: false,
          title: Row(
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          const HomePage(), // redirecting to a page when the onPressed function is clicked
                    ),
                  );
                },
              ),
              const SizedBox(
                height: 110,
                width: 60,
              ),
              const Text(
                'Feedbacks',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontFamily: 'RedHatDisplay',
                ),
              ),
            ],
          ),
          flexibleSpace: Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 15.0),
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: const Color.fromARGB(
                        255, 0, 83, 122), // Set the border color
                    width: 2.0, // Set the border width
                  ),
                ),
                child: ClipOval(
                  child: Image.asset(
                    'assets/doctor1.jpg',
                    width: 120.0,
                    height: 120.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: const Color.fromARGB(
                255, 255, 255, 255), // Set the border color
            width: 0.0, // Set the border width
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(16.0),
                color: const Color.fromARGB(255, 252, 252, 252),
                child: const Text(
                  'How was your experience with  ',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontFamily: 'RedHatDisplay',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const SizedBox(
                  height: 1.0), // Adjust the height to control spacing
              Align(
                alignment: Alignment.center,
                child: Column(
                  children: [
                    const Text(
                      'DR.T.WIJESINGHE',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 53, 162, 205),
                      ),
                    ),
                    RatingBar.builder(
                      initialRating: 4, // Change this to set the initial rating
                      minRating: 0, // change this to set minimum rating
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemSize: 25.0,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 6.0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Color.fromARGB(255, 255, 168, 115),
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                        // Handle rating updates here
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 20.0,
                          top: 20.0), // Adjust the padding as needed
                      child: Align(
                        alignment: Alignment.centerLeft, // Align to the left
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              '   Write a comment',
                              style: TextStyle(
                                fontSize: 16.0,
                                fontFamily: 'RedHatDisplay',
                                fontWeight: FontWeight.bold,
                                color: Color.fromARGB(255, 94, 94, 97),
                              ),
                            ),
                            const SizedBox(
                                height:
                                    20.0), // Add space between the texts and comment box
                            Container(
                              margin:
                                  const EdgeInsets.only(left: 2.0, right: 15),
                              padding: const EdgeInsets.all(
                                25.0,
                              ), // Increase padding for a larger comment box
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: const Color.fromARGB(255, 80, 148,
                                        173)), // Set the border color to blue
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Enter your comment',
                                  hintStyle: TextStyle(
                                      fontFamily: 'RedHatDisplay',
                                      fontWeight: FontWeight.bold),
                                  border: InputBorder.none,
                                ),
                                maxLines:
                                    null, // Remove this line to limit the number of lines
                                maxLength:
                                    600, // Set the maximum character limit
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                        height:
                            0.0), // Add space between the text and comment box
                    Container(
                      margin: const EdgeInsets.only(
                          top: 16.0), // Add margin at the top
                      child: const Align(
                        alignment: Alignment.centerLeft,
                        child: Padding(
                          padding: EdgeInsets.only(
                            left: 30.0,
                            top: 5.0,
                            bottom: 5.0,
                          ), // Increase top spacing
                          child: Text(
                            'Would you recommend DR.Wijesinghe to your friend?',
                            style: TextStyle(
                              fontSize: 16.0,
                              fontFamily: 'RedHatDisplay',
                              color: Color.fromARGB(255, 94, 94, 97),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                        height:
                            6.0), // Add space between the text and radio buttons
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                            left: 70.0,
                          ),
                          child: CustomRadioButton<bool>(
                            value: true,
                            groupValue: _recommend,
                            onChanged: (value) {
                              setState(() {
                                _recommend = value;
                              });
                            },
                            activeColor: const Color.fromARGB(
                                255, 53, 162, 205), // Blue color
                            checkColor:
                                Colors.white, // White color for the check
                            size: 20, // Adjust the size of the radio buttons
                          ),
                        ),
                        const Text('  Yes'),
                        Padding(
                          padding: const EdgeInsets.only(left: 36.0),
                          child: CustomRadioButton<bool>(
                            value: false,
                            groupValue: _recommend,
                            onChanged: (value) {
                              setState(() {
                                _recommend = value;
                              });
                            },
                            activeColor: const Color.fromARGB(
                                255, 53, 162, 205), // Blue color
                            checkColor:
                                Colors.white, // White color for the check
                            size: 20.0, // Adjust the size of the radio buttons
                          ),
                        ),
                        const Text('  No'),
                      ],
                    ),
                    const SizedBox(height: 10.0),
                    SizedBox(
                      width: 323.0, // Set the width of the button
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const HomePage(), // redirecting to a page when the onPressed function is clicked
                            ),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: const Color.fromARGB(
                              255, 53, 162, 205), // Set the button color
                        ),
                        child: const Text(
                          'Give Feedback',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontFamily: 'RedHatDisplay',
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Set the text color
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
