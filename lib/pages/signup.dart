import 'package:flutter/material.dart';
import 'package:flutter_application_17/pages/home_page.dart';
import 'package:flutter_application_17/pages/signin.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  _SignUpPageState createState() => _SignUpPageState(); //creating a state
}

class _SignUpPageState extends State<SignUpPage> {
  bool _rememberMe = false; //setting default values to false
  bool _isPasswordVisible = false;
  final TextEditingController _fullnameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _mobilenumberController = TextEditingController();

  @override
  void dispose() {
    //getting user inputs
    _fullnameController.dispose();
    _passwordController.dispose();
    _emailController.dispose();
    _mobilenumberController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        //scroll widget
        child: Padding(
          padding: const EdgeInsets.all(16.0), //padding to body
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: const EdgeInsets.only(
                    top: 25.0), //  padding to the top of the picture
                child: Row(
                  children: [
                    Container(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        'assets/splash_image.png',
                        width: 150, // Set the width of the image
                      ),
                    ),
                    const SizedBox(width: 15),
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(height: 20),
                        Text(
                          'Let\'s get started',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Create a New Account',
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 15),
              const Text(
                ' Full Name',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RedHatDisplay'),
              ),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 133, 133, 133)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _fullnameController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: InputBorder.none,
                      hintText: 'Enter your Full Name',
                      hintStyle: TextStyle(fontFamily: 'RedHatDisplay')),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                ' Password',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RedHatDisplay'),
              ),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 133, 133, 133)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _passwordController,
                  obscureText: !_isPasswordVisible,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(12),
                    border: InputBorder.none,
                    hintText: 'Enter your password',
                    hintStyle: const TextStyle(fontFamily: 'RedHatDisplay'),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _isPasswordVisible
                            ? Icons.visibility
                            : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          _isPasswordVisible = !_isPasswordVisible;
                        });
                      },
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                ' Email',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RedHatDisplay'),
              ),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 133, 133, 133)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: InputBorder.none,
                      hintText: 'Enter your email',
                      hintStyle: TextStyle(fontFamily: 'RedHatDisplay')),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                ' Mobile Number',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'RedHatDisplay'),
              ),
              const SizedBox(height: 4),
              Container(
                decoration: BoxDecoration(
                  border: Border.all(
                      color: const Color.fromARGB(255, 133, 133, 133)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: TextField(
                  controller: _mobilenumberController,
                  decoration: const InputDecoration(
                      contentPadding: EdgeInsets.all(12),
                      border: InputBorder.none,
                      hintText: 'Enter your Phone Number',
                      hintStyle: TextStyle(fontFamily: 'RedHatDisplay')),
                ),
              ),
              const SizedBox(height: 14),
              Row(
                children: [
                  Checkbox(
                    value: _rememberMe,
                    onChanged: (value) {
                      setState(() {
                        _rememberMe = value!;
                      });
                    },
                    checkColor: const Color.fromARGB(
                        255, 255, 255, 255), // Color of the tick
                    activeColor: const Color.fromARGB(
                        255, 25, 142, 182), // Checkbox background color
                  ),
                  const SizedBox(
                    width: 1,
                  ),
                  const Text(
                    'I agree with the Terms of Service & \nPrivacy Policy',
                    style: TextStyle(fontFamily: 'RedHatDisplay', fontSize: 14),
                  ),
                  const Spacer(),
                ],
              ),
              const SizedBox(height: 4),
              ElevatedButton(
                onPressed: () {
                  // Perform sign-up logic
                  String fullname = _fullnameController.text;
                  String password = _passwordController.text;
                  String email = _emailController.text;
                  String mobilenumber = _mobilenumberController.text;

                  if (fullname.isEmpty ||
                      password.isEmpty ||
                      email.isEmpty ||
                      mobilenumber.isEmpty) {
                    // Show an error message inform the user that fields are empty.
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('Empty Fields'),
                          content: const Text('Please fill all the fields.'),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: const Text('OK'),
                            ),
                          ],
                        );
                      },
                    );
                  } else {
                    print(
                        'Full name: $fullname, Password: $password, Email: $email, Mobile number: $mobilenumber');
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const HomePage(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(
                      255, 25, 142, 182), // Change this color to blue
                ),
                child: const Text(
                  'Sign Up',
                  style: TextStyle(
                      fontFamily: 'RedHatDisplay',
                      fontWeight: FontWeight.bold,
                      fontSize: 18),
                ),
              ),
              const SizedBox(height: 6), // Adjusted the spacing
              Column(
                children: [
                  const Text(
                    "Already have an account?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'RedHatDisplay',
                        fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 0.0,
                    ),
                    child: TextButton(
                      onPressed: () {
                        // sign-in logic
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const SignInPage(),
                          ),
                        );
                      },
                      child: const Text(
                        'SIGN IN',
                        style: TextStyle(
                            color: Color.fromARGB(255, 28, 107, 165),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'RedHatDisplay'),
                      ),
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
