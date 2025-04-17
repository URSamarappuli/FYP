import 'package:flutter/material.dart';
import 'package:fyp_project/screens/register_screen.dart';

class GetStartedScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        // Add SingleChildScrollView to prevent overflow
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Background Circles with size constraints
              SizedBox(
                width: double.infinity,
                height:
                    250, // Set the height for the Stack to avoid layout issues
                child: Stack(
                  children: [
                    Positioned(
                      top: -50,
                      left: -50,
                      child: CircleAvatar(
                        radius: 100,
                        backgroundColor: Colors.blue[100],
                      ),
                    ),
                    Positioned(
                      top: 50,
                      left: 100,
                      child: CircleAvatar(
                        radius: 80,
                        backgroundColor: Colors.blue[50],
                      ),
                    ),
                  ],
                ),
              ),
              Center(
                child: Container(
                  width: 250,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Colors.blue.shade900,
                      width: 1.8,
                    ),
                    image: const DecorationImage(
                      image: AssetImage('assets/hand.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),

              // Title Text
              Center(
                child: Text(
                  'Gets things with Sign Bridge',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue[900],
                  ),
                ),
              ),
              SizedBox(height: 20),

              // Description Text
              Padding(
                padding:
                    EdgeInsets.symmetric(horizontal: 20), // Add padding here
                child: Text(
                  'Lorem ipsum dolor sit amet consectetur. Eget sit nec et euismod. '
                  'Consequat urna quam felis interdum quisque. Malesuada adipiscing tristique ut eget sed.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.blue[600],
                  ),
                ),
              ),
              SizedBox(height: 35),

              // Get Started Button
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => RegisterScreen(
                          onPressed: () {},
                        ),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue, // Button background color
                    padding: EdgeInsets.symmetric(vertical: 15, horizontal: 50),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(fontSize: 18, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
