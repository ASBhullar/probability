import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/dice_example.dart';
import 'package:probability/dice_example2.dart';
import 'package:probability/likely3.dart';
import 'package:probability/likely5.dart';
import 'package:probability/wheel_example.dart';
import 'home_page.dart';
import 'package:collection/collection.dart';
import 'dart:math';

class likely4 extends StatefulWidget {
  const likely4({Key? key}) : super(key: key);

  @override
  _likely4 createState() => _likely4();

}

class _likely4 extends State<likely4> {
  List<bool> isTappedList = [false, false, false,false, false, false,false];// Track tapped state for the image
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      // Show the dialog when the widget is initialized
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text(
              'TAP TO LEARN',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Color(0xFF000181),
                letterSpacing:10
              ),
            ),

            // content: Text('Learn more about this feature.'),

          );
        },
      );
    });
  }
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
            colors: [Color(0xFF53CCEC), Color(0xFF000181)],
            stops: [1, 0],

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
              Positioned(
                left: screenSize.width * 0.9,
                top: screenSize.height * 0.94,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => likely5()),
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
              //PREVI
              Positioned(
                left: screenSize.width * 0,
                top: screenSize.height * 0.94,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => likely3()),
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

              /////MAIN CODE
              Positioned(
                left: screenSize.width * 0.1,
                top: screenSize.height * 0.02,
                child :Container(
                  width: screenSize.width * 0.83,
                  height: screenSize.height * 0.2,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF7D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.1,
                top: screenSize.height * 0.065,
                child: SizedBox(
                  width: screenSize.width * 0.82,
                  height: screenSize.height * 0.2,
                  child: Text(
                    'HOW LIKELY IS IT TO PICK A APPLE?',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.getFont(
                      'Calistoga',
                      color: const Color(0xFF000181),
                      fontSize: screenSize.width*0.04*0.8,
                      letterSpacing: screenSize.width*0.012,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.03,
                top: screenSize.height * 0.25,
                child :Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF7D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: screenSize.width * 0.03,
                top: screenSize.height * 0.25,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[1] = !isTappedList[1];
                    });
                  },
                  child: Center(
                    child: isTappedList[1]
                        ? Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CERTAIN',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFF689F39),
                              fontSize: screenSize.width * 0.04 * 0.8,
                              letterSpacing: screenSize.width * 0.012,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Only apples are in the jar!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFC5E37E),
                              fontSize: screenSize.width * 0.034 * 0.8,
                              letterSpacing: screenSize.width * 0.005,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/3applejar.png'),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.35,
                top: screenSize.height * 0.25,
                child :Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF7D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.35,
                top: screenSize.height * 0.25,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[2] = !isTappedList[2];
                    });
                  },
                  child: Center(
                    child: isTappedList[2]
                        ? Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'LIKELY',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFF689F39),
                              fontSize: screenSize.width * 0.04 * 0.8,
                              letterSpacing: screenSize.width * 0.012,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'There are more apples then banana!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFC5E37E),
                              fontSize: screenSize.width * 0.034 * 0.8,
                              letterSpacing: screenSize.width * 0.005,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/3app1bajar.png'),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.68,
                top: screenSize.height * 0.25,
                child :Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF7D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.68,
                top: screenSize.height * 0.25,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[3] = !isTappedList[3];
                    });
                  },
                  child: Center(
                    child: isTappedList[3]
                        ? Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'IMPOSSIBLE',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFFF2828),
                              fontSize: screenSize.width * 0.037 * 0.8,
                              letterSpacing: screenSize.width * 0.012,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'There are no apples!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFFF2828),
                              fontSize: screenSize.width * 0.034 * 0.8,
                              letterSpacing: screenSize.width * 0.005,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/2bananajar.png'),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.03,
                top: screenSize.height * 0.6,
                child :Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF7D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.03,
                top: screenSize.height * 0.6,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[4] = !isTappedList[4];
                    });
                  },
                  child: Center(
                    child: isTappedList[4]
                        ? Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CERTAIN',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFF689F39),
                              fontSize: screenSize.width * 0.04 * 0.8,
                              letterSpacing: screenSize.width * 0.012,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Only apples are in the jar!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFC5E37E),
                              fontSize: screenSize.width * 0.034 * 0.8,
                              letterSpacing: screenSize.width * 0.005,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/2applejar.png'),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: screenSize.width * 0.35,
                top: screenSize.height * 0.6,
                child :Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF7D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.35,
                top: screenSize.height * 0.6,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[5] = !isTappedList[5];
                    });
                  },
                  child: Center(
                    child: isTappedList[5]
                        ? Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'IMPOSSIBLE',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFFF2828),
                              fontSize: screenSize.width * 0.037 * 0.8,
                              letterSpacing: screenSize.width * 0.012,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'There are no apples!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFFF2828),
                              fontSize: screenSize.width * 0.034 * 0.8,
                              letterSpacing: screenSize.width * 0.005,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/emptyjar.png'),
                          // fit: BoxFit.fill,
                        ),
                      ),
                    ),
                  ),
                ),
              ),

              Positioned(
                left: screenSize.width * 0.68,
                top: screenSize.height * 0.6,
                child :Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.3,
                  decoration: ShapeDecoration(
                    color: Color(0xFFFFF7D9),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(50),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: screenSize.width * 0.68,
                top: screenSize.height * 0.6,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      isTappedList[0] = !isTappedList[0];
                    });
                  },
                  child: Center(
                    child: isTappedList[0]
                        ? Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      alignment: Alignment.center,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'CERTAIN',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFF689F39),
                              fontSize: screenSize.width * 0.04 * 0.8,
                              letterSpacing: screenSize.width * 0.012,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            'Only apples are in the jar!',
                            textAlign: TextAlign.center,
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              color: const Color(0xFFC5E37E),
                              fontSize: screenSize.width * 0.034 * 0.8,
                              letterSpacing: screenSize.width * 0.005,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    )
                        : Container(
                      width: screenSize.width * 0.3,
                      height: screenSize.height * 0.3,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/images/oneapplejar.png'),
                          // fit: BoxFit.fill,
                        ),
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
