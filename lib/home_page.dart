import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/play_category.dart';
import 'package:probability/profilepage.dart'; // Import the ProfilePage class
import 'dart:io';

class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    // Get the screen size
    final screenSize = MediaQuery.of(context).size;

    // Calculate proportional heights for different sections
    // Adjust these if you have a specific design in mind
    final topSectionHeight = screenSize.height * 0.20;
    final middleSectionHeight = screenSize.height * 0.25;
    final bottomSectionHeight = screenSize.height * 0.45;
    final formulaeHeight = screenSize.height * 0.10;

    return Scaffold(
      body: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(height: 20),
                buildTopSection(screenSize, topSectionHeight),
                buildMiddleSection(screenSize, middleSectionHeight),
                buildFormulaeSection(screenSize, formulaeHeight),
                buildBottomSection(screenSize, bottomSectionHeight, context),
              ],
            ),
          ),
          ProfileAvatar(), // Display profile avatar
        ],
      ),
    );
  }

  Widget buildTopSection(Size screenSize, double height) {
    return Container(
      height: height,
      width: screenSize.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
        ),
      ),
      child: Center(
        child: Text(
          'WHAT IS PROBABILITY',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: screenSize.width * 0.06, // 6% of screen width
            fontWeight: FontWeight.bold,
            letterSpacing: 6.4,
          ),
        ),
      ),
    );
  }

  Widget buildMiddleSection(Size screenSize, double height) {
    return Container(
      height: height,
      width: screenSize.width, // Set the width to be 80% of the screen width
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
        ), // Replace with your desired color
      ),
      padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
      child: Container(
        width: screenSize.width * 0.8,
        decoration: BoxDecoration(
          gradient: const LinearGradient(
            colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
          ), // Replace with your desired color
          border: Border.all(
            color: Colors.white, // Replace with your desired border color
            width: 5, // Replace with your desired border width
          ),
          borderRadius:
              BorderRadius.circular(12), // Optional, for rounded corners
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              'CHANCE OF SOMETHING HAPPENING',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: screenSize.width * 0.03 * 0.8, // 4% of screen width
                fontWeight: FontWeight.bold,
                letterSpacing: 3,
              ),
            ),
            SizedBox(
                height:
                    20), // Fixed space for simplicity, make it responsive if needed
            Text(
              'EXAMPLE: How likely would you pick a chocolate at the supermarket--LIKELY',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: screenSize.width * 0.02 * 0.8, // 3% of screen width
                letterSpacing: 2,
              ),
            ),
            SizedBox(
                height:
                    20), // Fixed space for simplicity, make it responsive if needed
            Text(
              'EXAMPLE: How likely would you pick a Vegetable at the supermarket ---NOT LIKELY',
              textAlign: TextAlign.center,
              style: GoogleFonts.roboto(
                color: Colors.white,
                fontSize: screenSize.width * 0.02 * 0.8, // 3% of screen width
                letterSpacing: 2,
              ),
            ),
            // ... Add more widgets as needed ...
          ],
        ),
      ),
    );
  }

  Widget buildFormulaeSection(Size screenSize, double height) {
    return Container(
      height: height, // Adjust the height as needed
      width: screenSize.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
        ),
      ),
      child: Center(
        child: Container(
          // This inner container is 80% of screen width as specified
          width: screenSize.width * 0.8,
          child: Row(
            mainAxisAlignment: MainAxisAlignment
                .spaceBetween, // Space out the row children equally
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text(
                'FORMULAE',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: screenSize.width *
                      0.03 *
                      0.8, // Based on width for better scaling
                ),
              ),
              Expanded(
                // Using Expanded for the divider and text to ensure it takes the needed space
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'FAVORABLE OUTCOME',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width *
                            0.02 *
                            0.8, // Based on width for better scaling
                      ),
                    ),
                    Divider(
                      color: Colors.white,
                      thickness: 2,
                      indent: screenSize.width *
                          0.1, // Use a percentage of the screen width for indent
                      endIndent: screenSize.width * 0.1, // and endIndent
                    ),
                    Text(
                      'TOTAL OUTCOME',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width *
                            0.02 *
                            0.8, // Based on width for better scaling
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

  Widget buildBottomSection(
      Size screenSize, double height, BuildContext context) {
    return Container(
      height: height,
      width: screenSize.width,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Top row with images
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                width: screenSize.width * 0.2,
                height: screenSize.height * 0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(
                        File("assets/images/firebaseImages/dices2Image.png")),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
              Container(
                width: screenSize.width * 0.2,
                height: screenSize.height * 0.1,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(
                        File("assets/images/firebaseImages/imageOfBalls.png")),
                    fit: BoxFit.fitWidth,
                  ),
                ),
              ),
            ],
          ),
          // Spacing between the rows
          SizedBox(height: 20),
          // Bottom row with buttons and images
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => LearnCategories()),
                      );
                    },
                    child: const Text(
                      'LEARN',
                      style: TextStyle(
                        fontSize: 24, // Adjust the fontSize as needed
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(0xFF4182FF), // Adjust the color as needed
                      fixedSize: Size(screenSize.width * 0.25,
                          50), // Adjust the size as needed
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.2,
                    height: screenSize.height * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(
                            File("assets/images/firebaseImages/wheel.png")),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PLayCategories()),
                      );
                    },
                    child: const Text(
                      'SOLVE',
                      style: TextStyle(
                        fontSize: 24, // Adjust the fontSize as needed
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor:
                          Color(0xFF4182FF), // Adjust the color as needed
                      fixedSize: Size(screenSize.width * 0.25,
                          50), // Adjust the size as needed
                    ),
                  ),
                  Container(
                    width: screenSize.width * 0.2,
                    height: screenSize.height * 0.1,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: FileImage(File(
                            "assets/images/firebaseImages/headAndTails.png")),
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class ProfileAvatar extends StatefulWidget {
  @override
  _ProfileAvatarState createState() => _ProfileAvatarState();
}

class _ProfileAvatarState extends State<ProfileAvatar> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 20,
      right: 20,
      child: GestureDetector(
        onTap: () {
          // Navigate to the ProfilePage when user clicks on the image
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
        child: CircleAvatar(
          radius: 30,
          backgroundImage: AssetImage('assets/images/avatar.png'),
        ),
      ),
    );
  }
}
