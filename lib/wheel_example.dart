import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/play_category.dart';
import 'home_page.dart';
import 'package:probability/learn_category.dart';

import 'dart:io';

class wheel_example extends StatelessWidget {
  const wheel_example({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    return Container(
      width: screenSize.width,
      height: screenSize.height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color(0xFF7745E2),
            Color(0x007745E2)
          ], // colour of background
        ),
      ),
      child: Stack(
        children: [
          //home image
          Positioned(
            left: screenSize.width * 0.029,
            top: screenSize.height * 0.027,
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
                    image: FileImage(File(
                        "assets/images/firebaseImages/uploads_images_VLycwtx8L8la6K4YYSH8_8e41733af163909d6944dac1c628ba81.png")),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          //PREVI
          Positioned(
            left: screenSize.width * 0.029,
            top: screenSize.height * 0.94,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LearnCategories()),
                );
              },
              child: Container(
                width: screenSize.width * 0.061,
                height: screenSize.height * 0.043,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(File(
                        "assets/images/firebaseImages/uploads_images_VLycwtx8L8la6K4YYSH8_7f9a6946b79a5f10106b07e7024beaf5.png")),
                    fit: BoxFit.contain,
                  ),
                ),
              ),
            ),
          ),
          //NEXT
          Positioned(
            left: screenSize.width * 0.935,
            top: screenSize.height * 0.94,
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
                    image: FileImage(File(
                        "assets/images/firebaseImages/uploads_images_VLycwtx8L8la6K4YYSH8_baae1378b31042b9a1c6751db15bf804.png")),
                    fit: BoxFit.scaleDown,
                  ),
                ),
              ),
            ),
          ),
          //TITLE
          Positioned(
            left: screenSize.width * 0.08,
            top: screenSize.height * 0.02,
            child: SizedBox(
              width: screenSize.width * 0.9,
              height: screenSize.height * 0.3,
              child: Text(
                'SPINNING WHEEL',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black.withOpacity(0.8),
                  fontSize: 64,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w800,
                  height: 0,
                  letterSpacing: 6.40,
                ),
              ),
            ),
          ),
          //image of wheel
          Positioned(
            left: screenSize.width * 0.03,
            top: screenSize.height * 0.15,
            child: Container(
              width: screenSize.width * 0.4,
              height: screenSize.height * 0.35,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: FileImage(File("images/dice gif.gif")),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          // 2 images
          Positioned(
            left: screenSize.width * 0.03,
            top: screenSize.height * 0.55,
            child: Container(
              width: screenSize.width * 0.96,
              height: screenSize.height * 0.54,
              child: Stack(
                children: [
                  Positioned(
                    left: screenSize.width * 0.0,
                    top: screenSize.height * 0,
                    child: Container(
                      width: screenSize.width * 0.2,
                      height: screenSize.height * 0.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(File(
                              "images/WhatsApp Image 2024-03-13 at 00.44.03_4f2b2670.jpg")),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width * 0.25,
                    top: screenSize.height * 0,
                    child: Container(
                      width: screenSize.width * 0.2,
                      height: screenSize.height * 0.1,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(File(
                              "images/WhatsApp Image 2024-03-13 at 00.44.03_45e829dc.jpg")),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0.0,
                    top: screenSize.height * 0.12,
                    child: SizedBox(
                      width: screenSize.width * 0.57,
                      height: screenSize.height * 0.3,
                      child: Text(
                        'FAVORABLE OUTCOMES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 3.20,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width * 0.08,
                    top: screenSize.height * 0.4,
                    child: SizedBox(
                      width: screenSize.width * 0.48,
                      height: screenSize.height * 0.78,
                      child: Text(
                        'TOTAL OUTCOMES',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 3.60,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width * 0.87,
                    top: screenSize.height * 0.08,
                    child: SizedBox(
                      width: screenSize.width * 0.2,
                      height: screenSize.height * 0.6,
                      child: Text(
                        '-',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 228,
                          fontFamily: 'Luckiest Guy',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 102.40,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width * 0.85,
                    top: screenSize.height * 0.291,
                    child: SizedBox(
                      width: screenSize.width * 0.127,
                      height: screenSize.height * 0.110,
                      child: Text(
                        '8',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 94,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 75.20,
                        ),
                      ),
                    ),
                  ),
                  //complete wheel picture
                  Positioned(
                    left: screenSize.width * 0.17,
                    top: screenSize.height * 0.18,
                    child: Container(
                      width: screenSize.width * 0.2,
                      height: screenSize.height * 0.2,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: FileImage(File(
                              "images/WhatsApp Image 2024-03-13 at 00.44.04_26bbdd5f.jpg")),
                          fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: screenSize.width * 0.83,
                    top: screenSize.height * 0.05,
                    child: SizedBox(
                      width: screenSize.width * 0.05,
                      height: screenSize.height * 0.15,
                      child: Text(
                        '2',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 94,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.w400,
                          height: 0,
                          letterSpacing: 75.20,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.5,
            top: screenSize.height * 0.25,
            child: SizedBox(
              width: screenSize.width * 0.5,
              height: screenSize.height * 0.35,
              child: Text(
                'WHAT IS THE PROBABILITY OF GETTING BLUE AND RED',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w700,
                  height: 0,
                  letterSpacing: 4,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.5,
            top: screenSize.height * 0.15,
            child: Container(
              width: screenSize.width * 0.5,
              height: screenSize.height * 0.35,
              decoration: ShapeDecoration(
                shape: RoundedRectangleBorder(
                  side: BorderSide(width: 3, color: Colors.white),
                ),
              ),
            ),
          ),
          Positioned(
            left: 30,
            top: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 13, vertical: 10),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
