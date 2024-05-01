import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/dice_example.dart';
import 'package:probability/dice_example2.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/play_category.dart';
import 'package:probability/play_category.dart';
import 'home_page.dart';
import 'package:probability/wheel_example.dart';
import 'dart:io';
import 'dart:math';

class dice22 extends StatelessWidget {
  const dice22({Key? key});

  @override
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
          colors: [Color(0xFF80B9EE), Color(0xFF000181)],
          stops: [1.5,0.0],
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
                            MaterialPageRoute(builder: (context) => Homepage()),
                          );
                        },
                        child: Container(
                          width: screenSize.width * 0.051,
                          height: screenSize.height * 0.044,
                          decoration: BoxDecoration(
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
                    MaterialPageRoute(builder: (context) => dice_example2()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.1,
                  height: screenSize.height * 0.045,
                  decoration: BoxDecoration(
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
                    MaterialPageRoute(builder: (context) => wheel_example()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.08,
                  height: screenSize.height * 0.045,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/firebaseImages/home804.png'),
                      fit: BoxFit.scaleDown,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.02,
              top: screenSize.height * 0.2,
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
            Positioned(
              left: screenSize.width * 0.02,
              top: screenSize.height * 0.1,
              child: Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/officialdicegif.gif'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.6,
              top: screenSize.height * 0.8,
              child: Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/allblurkids.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            //start of the group
            Positioned(
              left: screenSize.width * 0.8,
              top: screenSize.height * 0.35,
              child: SizedBox(
                width: screenSize.width * 0.13,
                height: screenSize.height * 0.7,
                child: Text(
                  '2',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width*0.1,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,


                  ),
                ),
              ),
            ),

            Positioned(
              left: screenSize.width * 0.8,
              top: screenSize.height * 0.65,
              child: SizedBox(
                width: screenSize.width * 0.13,
                height: screenSize.height * 0.7,
                child: Text(
                  '6',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width*0.1,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.8,
              top: screenSize.height * 0.45,
              child: SizedBox(
                width: screenSize.width * 0.2,
                height: screenSize.height * 0.7,
                child: Text(
                  '-',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width*0.2,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.bold,
                    height: 0,
                    letterSpacing: screenSize.width*0.048,
                  ),
                ),
              ),
            ),


            Positioned(
              left: screenSize.width * 0.05,
              top: screenSize.height * 0.5,
              child: SizedBox(
                width: screenSize.width * 0.7,
                height: screenSize.height * 0.2,
                child: Text(
                  '=',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width*0.128,
                    fontFamily: 'Luckiest Guy',
                    fontWeight: FontWeight.w400,
                    letterSpacing: screenSize.width*1.28,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * -0.03,
              top: screenSize.height * 0.5,
              child: SizedBox(
                width: screenSize.width*0.7 ,
                height: screenSize.height * 0.1,
                child: Text(
                  'FAVORABLE OUTCOMES',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Calistoga',
                    color: Colors.white,
                    fontSize: screenSize.width*0.037*0.8,
                    letterSpacing: screenSize.width*0.012,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),


            Positioned(
              left: screenSize.width * 0.04,
              top: screenSize.height * 0.7,
              child: SizedBox(
                width: screenSize.width * 0.5,
                height: screenSize.height * 0.19,
                child: Text(
                  'TOTAL OUTCOMES',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.getFont(
                    'Calistoga',
                    color: Colors.white,
                    fontSize:screenSize.width*0.040*0.8,
                    letterSpacing: screenSize.width*0.012,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
            //alldice
            Positioned(
              left: screenSize.width * 0.035,
              top: screenSize.height * 0.6,
              child: Container(
                width: screenSize.width * 0.6,
                height: screenSize.height * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/alldice.png'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            // dice 6
            Positioned(
              left: screenSize.width * 0.2,
              top: screenSize.height * 0.38,
              child: Container(
                width: screenSize.width * 0.08,
                height: screenSize.height * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/6DICE.jpg'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.4,
              top: screenSize.height * 0.38,
              child: Container(
                width: screenSize.width * 0.08,
                height: screenSize.height * 0.08,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/4blur.png'),
                    fit: BoxFit.fill,
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
