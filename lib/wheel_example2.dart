
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/dice22.dart';
import 'package:probability/dice_example.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/wheel2.dart';
import 'package:probability/wheel22.dart';
import 'home_page.dart';
import 'package:probability/wheel_example.dart';
import 'dart:math';
import 'package:probability/dice2.dart';

class wheel_example2 extends StatelessWidget {
  const wheel_example2({Key? key});

  @override
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      body:Container(
      width: screenSize.width,
      height: screenSize.height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFF9361C0), Color(0xFFFCAEFA)],
          stops: [0.1,0.9],
          // transform: GradientRotation(90 * pi / 180),
          // colour of background
        ),
      ),
      child: SizedBox(
        child: Stack(
          children: [
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
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) =>const Homepage()),
                          );
                        },
                        child: Container(
                          width: screenSize.width * 0.051,
                          height: screenSize.height * 0.044,
                          decoration:const BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage(
                                  "assets/images/rhomeiconblurr.png"),
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
              left: screenSize.width * 0,
              top: screenSize.height * 0.94,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const wheel_example()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.1,
                  height: screenSize.height * 0.045,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/firebaseImages/backbeaf5.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            //NEXT
            Positioned(
              left: screenSize.width * 0.9,
              top: screenSize.height * 0.94,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const wheel_example2()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.08,
                  height: screenSize.height * 0.045,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/firebaseImages/home804.png'),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.05,
              top: screenSize.height * 0.25,
              child: Container(
                width: screenSize.width * 0.25,
                height: screenSize.height * 0.22,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/boyjumpspinning.png'),
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.53,
              top: screenSize.height * 0.63,
              child: Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/wheelblur.png'),
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            //group
            //the huge box
            Positioned(
              left: screenSize.width * 0.02,
              top: screenSize.height * 0.2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wheel22()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.95,
                  height: screenSize.height * 0.7,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 3, color: Colors.white),
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width*0.02,
              top:screenSize.height*0.48,
              child: SizedBox(
                width: screenSize.width*0.95,
                height: screenSize.height*0.2,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => wheel22()),
                    );
                  },
                  child: Text(
                    'WHAT IS THE PROBABILITY OF GETTING RED  WHEN YOU SPIN 2 WHEELS?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Calistoga',
                      color: Colors.white,
                      fontSize: screenSize.width*0.036*0.8,
                      letterSpacing:screenSize.width *0.008,
                    ),
                  ),
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
