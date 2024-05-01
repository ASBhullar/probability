import 'package:flutter/material.dart';
import 'package:probability/coin_example.dart';
import 'package:probability/home_page.dart';
import 'package:probability/likely.dart';
import 'package:probability/wheel_example.dart';
import 'dart:io';
import 'dice_example.dart';

class LearnCategories extends StatelessWidget {
  const LearnCategories({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: Container(
      width: screenSize.width,
      height: screenSize.height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFA08910), Color(0x6047DEE7)],
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: screenSize.width * 0.143,
              top: screenSize.height * 0.214,
              child: SizedBox(
                width: screenSize.width * 0.724,
                height: screenSize.height * 0.072,
                child: Text(
                  'CHOOSE A CATEGORY TO LEARN!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width * 0.048 * 0.724,
                    fontWeight: FontWeight.w800,
                    letterSpacing: screenSize.width * 0.005,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            //home button
            Positioned(
              left: screenSize.width * 0.029,
              top: screenSize.height * 0.027,
              child: Container(
                width: screenSize.width * 0.09,
                height: screenSize.height * 0.051,
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      left: screenSize.width * 0.012,
                      top: screenSize.height * 0.007,
                      child: GestureDetector(
                        onTap: () {
                          // Add your navigation logic here
                          // For example, navigate to a new page
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Homepage()),
                          );
                        },
                        child: Container(
                          width: screenSize.width * 0.051,
                          height: screenSize.height * 0.044,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/firebaseImages/homeba81.png"),
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            //PREVI
            Positioned(
              left: screenSize.width * 0.029,
              top: screenSize.height * 0.923,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.061,
                  height: screenSize.height * 0.043,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/firebaseImages/backbeaf5.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            //NEXT
            Positioned(
              left: screenSize.width * 0.921,
              top: screenSize.height * 0.923,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wheel_example()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.061,
                  height: screenSize.height * 0.046,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/firebaseImages/home804.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
            //wheel
            Positioned(
              left: screenSize.width * 0.119,
              top: screenSize.height * 0.394,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wheel_example()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.250,
                  height: screenSize.height * 0.250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/firebaseImages/colorwheel.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.663,
              top: screenSize.height * 0.433,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => likely()),
                  );
                },
              child: Container(
                width: screenSize.width * 0.250,
                height: screenSize.height * 0.250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/firebaseImages/trainglecolorballs.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.119,
              top: screenSize.height * 0.669,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => coin_example()),
                  );
                },
              child: Container(
                width: screenSize.width * 0.250,
                height: screenSize.height * 0.250,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                        "assets/images/firebaseImages/headtails.png"),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
              ),
            ),
            //DICE
            Positioned(
              left: screenSize.width * 0.654,
              top: screenSize.height * 0.669,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dice_example()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.250,
                  height: screenSize.height * 0.250,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                          "assets/images/firebaseImages/dices2Image.png"),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.06,
              top: screenSize.height * 0.174,
              child: Container(
                width: screenSize.width * 0.861,
                height: screenSize.height * 0.143,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: screenSize.width * 0.003,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      ),
    );
  }
}
