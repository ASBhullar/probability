import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/beginnersolve3.dart';
import 'package:probability/dice_example.dart';
import 'package:probability/dice_example2.dart';
import 'package:probability/likely5.dart';
import 'package:probability/wheel_example.dart';
import 'home_page.dart';
import 'package:collection/collection.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';

class Beginnersolve2 extends StatefulWidget {
  const Beginnersolve2({Key? key}) : super(key: key);

  @override
  _BeginnersolveState2 createState() => _BeginnersolveState2();
}

class _BeginnersolveState2 extends State<Beginnersolve2> {
  late ConfettiController _confettiController;
  List<int> selectedImages = [];
  List<int> correctAnswers = [ 2, 6];
  bool _showConfetti = false;
  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: Duration(seconds: 3));
  }
  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }
  bool checkSelectedImages() {
    // Sort both lists to ensure order doesn't affect correctness
    selectedImages.sort();
    correctAnswers.sort();
    // Compare selected images with correct answers
    return ListEquality().equals(selectedImages, correctAnswers);
  }
  // void showResultDialog(bool isCorrect) {
  //   showDialog(
  //     context: context,
  //     builder: (BuildContext context) {
  //       return AlertDialog(
  //         title: Text(isCorrect ? 'Correct!' : 'Wrong!'),
  //         content: Text(isCorrect ? 'You got it right!' : 'Try again!'),
  //         actions: [
  //           TextButton(
  //             onPressed: () {
  //               Navigator.of(context).pop(); // Close dialog
  //             },
  //             child: Text('OK'),
  //           ),
  //         ],
  //       );
  //     },
  //   );
  // }
  void showResultSnackBar(BuildContext context, bool isCorrect) {
    if (isCorrect) {
      setState(() {
        _showConfetti = true;

      });
      _confettiController.play();
    }
    final snackBar = SnackBar(

      content: Text(
        isCorrect ? 'CORRECT!' : 'INCORRECT!',
        textAlign: TextAlign.center,
        style: GoogleFonts.getFont(
          'Calistoga',
          fontSize: 50,
          letterSpacing:8,
          fontWeight: FontWeight.normal, // Make it bold
          color: isCorrect ? Colors.green : Colors.red, // Green for correct, red for incorrect
        ),
      ),
      duration: Duration(seconds: 2),
      // margin: EdgeInsets.only(left: 50, top: 50),
      backgroundColor: Colors.transparent,
      elevation: 0,
      behavior: SnackBarBehavior.floating,
      margin: EdgeInsets.symmetric(horizontal: 0.0, vertical: 290.0),
    );
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
    // margin: EdgeInsets.only(left: left, top: top);
  }
  void _showPopup( isCorrect) {
  String popupText = isCorrect ? 'Correct!' : 'Incorrect';
  Color popupColor = isCorrect ? Colors.green : Colors.red;

  showDialog(
  context: context,
  barrierDismissible: false,
  builder: (BuildContext context) {
  Future.delayed(Duration(seconds: 1), () {
  Navigator.of(context).pop();
  });

  return WillPopScope(
  onWillPop: () async => false,
  child: AlertDialog(
  backgroundColor: Colors.transparent,
  elevation: 0.0,
  content: Container(
  decoration: BoxDecoration(
  color: popupColor,
  borderRadius: BorderRadius.circular(8.0),
  ),
  padding: EdgeInsets.all(16.0),
  child: Text(
  popupText,
  style: TextStyle(
  color: Colors.white,
  fontSize: 24.0,
  fontWeight: FontWeight.bold,
  ),
  ),
  ),
  ),
  );
  },
  );
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
                left: screenSize.width * 0.93,
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
                        child: Tooltip(
                          message: 'Tap for explanation',
                          textStyle: GoogleFonts.getFont(
                            'Calistoga',
                            fontSize: 16,
                            color: Colors.white,
                          ),
                          decoration: BoxDecoration(
                            color: Colors.black87,
                            borderRadius: BorderRadius.circular(8),
                          ),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => likely5()),
                              );
                            },
                            child: Container(
                              width: screenSize.width * 0.051,
                              height: screenSize.height * 0.044,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                      "assets/images/hint.png"),
                                  fit: BoxFit.contain,
                                ),
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
                      MaterialPageRoute(builder: (context) => dice_example2()),
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
                      MaterialPageRoute(builder: (context) => Beginnersolve2()),
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
              Positioned(
                left: screenSize.width * 0.9,
                top: screenSize.height * 0.94,
                child: GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Beginnersolve3()),
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
                    'CHOOSE THE JARS THAT IS MOST LIKELY TO PICK A MANGO',
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
                      // Toggle selection state
                      if (selectedImages.contains(1)) {
                        selectedImages.remove(1);
                      } else {
                        selectedImages.add(1);
                      }
                    });
                  },
                  child: Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1a1b1m.png'),
                        // fit: BoxFit.fill,
                      ),
                      // Change border color based on selection state
                      border: Border.all(
                        color: selectedImages.contains(1)
                            ? Colors.blue
                            : Colors.transparent,
                        width: 8.0,
                      ),
                      borderRadius: BorderRadius.circular(50),

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
                      // Toggle selection state
                      if (selectedImages.contains(2)) {
                        selectedImages.remove(2);
                      } else {
                        selectedImages.add(2);
                      }
                    });
                  },
                  child: Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/1mango.png'),
                        // fit: BoxFit.fill,
                      ),
                      // Change border color based on selection state
                      border: Border.all(
                        color: selectedImages.contains(2)
                            ? Colors.blue
                            : Colors.transparent,
                        width: 8.0,
                      ),
                      borderRadius: BorderRadius.circular(50),
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
                      // Toggle selection state
                      if (selectedImages.contains(3)) {
                        selectedImages.remove(3);
                      } else {
                        selectedImages.add(3);
                      }
                    });
                  },
                  child: Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/2bananajar.png'),
                        // fit: BoxFit.fill,
                      ),
                      // Change border color based on selection state
                      border: Border.all(
                        color: selectedImages.contains(3)
                            ? Colors.blue
                            : Colors.transparent,
                        width: 8.0,
                      ),
                      borderRadius: BorderRadius.circular(50),
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
                      // Toggle selection state
                      if (selectedImages.contains(4)) {
                        selectedImages.remove(4);
                      } else {
                        selectedImages.add(4);
                      }
                    });
                  },
                  child: Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/2apple1mango.png'),
                        // fit: BoxFit.fill,
                      ),
                      // Change border color based on selection state
                      border: Border.all(
                        color: selectedImages.contains(4)
                            ? Colors.blue
                            : Colors.transparent,
                        width: 8.0,
                      ),
                      borderRadius: BorderRadius.circular(50),
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
                      // Toggle selection state
                      if (selectedImages.contains(5)) {
                        selectedImages.remove(5);
                      } else {
                        selectedImages.add(5);
                      }
                    });
                  },
                  child: Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/emptyjar.png'),
                        // fit: BoxFit.fill,
                      ),
                      // Change border color based on selection state
                      border: Border.all(
                        color: selectedImages.contains(5)
                            ? Colors.blue
                            : Colors.transparent,
                        width: 8.0,
                      ),
                      borderRadius: BorderRadius.circular(50),
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
                      // Toggle selection state
                      if (selectedImages.contains(6)) {
                        selectedImages.remove(6);
                      } else {
                        selectedImages.add(6);
                      }
                    });
                  },
                  child: Container(
                    width: screenSize.width * 0.3,
                    height: screenSize.height * 0.3,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('assets/images/2mango.png'),
                        // fit: BoxFit.fill,
                      ),
                      // Change border color based on selection state
                      border: Border.all(
                        color: selectedImages.contains(6)
                            ? Colors.blue
                            : Colors.transparent,
                        width: 8.0,
                      ),
                      borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ),
              Positioned(
                left: screenSize.width * 0.35,
                top: screenSize.height * 0.92,
                child :Container(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.07,
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
                top: screenSize.height * 0.91,
                child: SizedBox(
                  width: screenSize.width * 0.3,
                  height: screenSize.height * 0.08,
                  child: GestureDetector(
                    onTap: () {
                      bool isCorrect = checkSelectedImages(); // Check selected images
                      // _showPopup( isCorrect);// Show dialog with result
                      showResultSnackBar(context, isCorrect);
                    },
                    // child: Container(
                    //   width: screenSize.width * 0.3,
                    //   height: screenSize.height * 0.07,
                    //   decoration: ShapeDecoration(
                    //     color: Color(0xFFFFF7D9),
                    //     shape: RoundedRectangleBorder(
                    //       borderRadius: BorderRadius.circular(50),
                    //     ),
                    //   ),// Example border radius
                    //   ),
                      child: Center(
                        child: Text(
                          'SUBMIT',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.getFont(
                            'Calistoga',
                            color: const Color(0xFF000181),
                            fontSize: screenSize.width * 0.05 * 0.8,
                            letterSpacing: screenSize.width * 0.012,
                            fontWeight: FontWeight.normal,
                          ),
                        ),
                    ),
                  ),
                ),
              ),

            if (_showConfetti)
      Positioned.fill(
      child: Align(
      alignment: Alignment.center,
      child: ConfettiWidget(
      confettiController: _confettiController,
      blastDirectionality: BlastDirectionality.explosive,
      emissionFrequency: 0.05,
      numberOfParticles: 30,
      gravity: 0.3,
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
