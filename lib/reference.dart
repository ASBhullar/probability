import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:io';

class IPadPro1291 extends StatelessWidget {
  const IPadPro1291({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1024,
      height: 1366,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 1024,
                height: 1366,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(),
                  gradient: const LinearGradient(
                    colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
                  ),
                ),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: [
                    const Positioned(
                      left: -32,
                      top: 39,
                      child: SizedBox(
                        width: 1038,
                        height: 164,
                        child: Text(
                          'WHAT IS PROBABILITY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 64,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 6.4,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 122,
                      top: 731,
                      child: Container(
                        width: 298,
                        height: 243,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 141,
                      top: 745,
                      child: Container(
                        width: 266,
                        height: 229,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/firebaseImages/dices2Image.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 585,
                      top: 1084,
                      child: Container(
                        width: 298,
                        height: 243,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 125,
                      top: 1084,
                      child: Container(
                        width: 298,
                        height: 243,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 585,
                      top: 731,
                      child: Container(
                        width: 298,
                        height: 243,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          color: Color(0xFFD9D9D9),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 618,
                      top: 1102,
                      child: Container(
                        width: 225,
                        height: 225,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/firebaseImages/trainglecolorballs.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 623,
                      top: 743,
                      child: Container(
                        width: 228,
                        height: 224,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/firebaseImages/colorwheel.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 146,
                      top: 1101,
                      child: Container(
                        width: 255,
                        height: 200,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/firebaseImages/headAndTails.png"),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 584,
                      top: 989,
                      child: Container(
                        width: 305,
                        height: 81,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          color: Color(0xFF4182FF),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 612,
                      top: 973,
                      child: SizedBox(
                        width: 290,
                        height: 122,
                        child: Text(
                          'SOLVE',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF53EA1E),
                            fontSize: 60,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 6,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 249,
                      top: 513,
                      child: SizedBox(
                        width: 925,
                        height: 183,
                        child: Text(
                          'FAVORABLE OUTCOME',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 509,
                      top: 632,
                      child: Container(
                        width: 400,
                        height: 4,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/firebaseImages/horizontalWhiteLineThick.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 393,
                      top: 635,
                      child: SizedBox(
                        width: 656,
                        height: 83,
                        child: Text(
                          'TOTAL OUTCOME',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Luckiest Guy',
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 46,
                      top: 595,
                      child: SizedBox(
                        width: 387,
                        height: 101,
                        child: Text(
                          'FORMULAE    ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Luckiest Guy',
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 111,
                      top: 163,
                      child: Container(
                        width: 819,
                        height: 281,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(
                          color: Colors.transparent,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 70,
                      top: 180,
                      child: Container(
                        width: 839,
                        height: 367,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          border: Border.all(
                            width: 3,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 209,
                      top: 215,
                      child: Text(
                        'CHANCE OF SOMETHING HAPPENING',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 3,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 107,
                      top: 289,
                      child: SizedBox(
                        width: 728,
                        height: 92,
                        child: Text(
                          'EXAMPLE : How likely would you pick a chocolate at the supermarket--LIKELY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 121,
                      top: 409,
                      child: SizedBox(
                        width: 728,
                        height: 92,
                        child: Text(
                          'EXAMPLE : how likely would you not pick a Vegetable at the supermarket ---NOT LIKELY',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 30,
                            letterSpacing: 3,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 32,
                      top: 14,
                      child: Container(
                        width: 79,
                        height: 80,
                        clipBehavior: Clip.hardEdge,
                        decoration: const BoxDecoration(),
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 13,
                              top: 10,
                              child: Container(
                                width: 53,
                                height: 60,
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                    image: AssetImage(
                                        "assets/images/firebaseImages/homeba81.png"),
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 25,
                      top: 1294,
                      child: Container(
                        width: 62,
                        height: 59,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/firebaseImages/backbeaf5.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 961,
                      top: 1294,
                      child: Container(
                        width: 63,
                        height: 63,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                                "assets/images/firebaseImages/home804.png"),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 122,
                      top: 1000,
                      child: SizedBox(
                        width: 305,
                        height: 81,
                        child: Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 305,
                                height: 81,
                                clipBehavior: Clip.hardEdge,
                                decoration: const BoxDecoration(
                                  color: Color(0xFF4182FF),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 146,
                      top: 973,
                      child: SizedBox(
                        width: 290,
                        height: 122,
                        child: Text(
                          'LEARN',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Color(0xFF53EA1E),
                            fontSize: 60,
                            fontWeight: FontWeight.w800,
                            letterSpacing: 6,
                            fontFamily: 'Roboto',
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
