import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/dice_example2.dart';
import 'package:probability/learn_category.dart';
import 'home_page.dart';
import 'dart:math';
import 'package:probability/dice2.dart';


class dice_example extends StatelessWidget {
  const dice_example({Key? key});

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
          colors: [Color(0xFF80B9EE), Color(0xFF000181)],
            stops: [0.1, 0.9],
            transform: GradientRotation(90 * pi / 180),
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
                  MaterialPageRoute(builder: (context) => LearnCategories()),
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
        // Positioned(
        //   left: screenSize.width*0.01,
        //   top: screenSize.height*0.055,
        //   child: SizedBox(
        //     width: screenSize.width*0.910,
        //     child: Text(
        //       'DICE  ',
        //       textAlign: TextAlign.center,
        //       style: GoogleFonts.getFont(
        //         'Calistoga',
        //         color: Colors.black,
        //         fontSize: screenSize.width*0.064*0.8,
        //         letterSpacing: screenSize.width*0.012,
        //         // fontWeight: FontWeight.w800,
        //       ),
        //     ),
        //   ),
        // ),
          //girl
          Positioned(
            left: screenSize.width*0.05,
            top: screenSize.height*0.2,
            child: Image.network(
              'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FnpsHWJMQeMQ31iFisae4%2Fb142575b6dd3a42be613430a6c9517673117c0aagirldiceblur.png?alt=media&token=565759d5-b58a-4efd-a2d7-be46003cf555',
              width: screenSize.width*0.25,
              height: screenSize.height*0.3,
              // fit: BoxFit.cover,
            ),
          ),
      //group
      Positioned(
          left: screenSize.width*0.55,
          top: screenSize.height*0.65,
          child: Image.network(
            'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FnpsHWJMQeMQ31iFisae4%2F80e32afac70562556f157aceabaad3b024c2bf0fallkidsblr.png?alt=media&token=5462ce87-6644-446c-a25d-00f9a1903689',
            width: screenSize.width*0.3,
            height: screenSize.height*0.2,
            // fit: BoxFit.cover,
          ),
        ),




          //the huge box
          Positioned(
            left: screenSize.width * 0.02,
            top: screenSize.height * 0.2,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => dice2()),
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
                    MaterialPageRoute(builder: (context) => dice2()),
                  );
                },
              child: Text(
                'WHAT IS THE PROBABILITY OF GETTING 6, WHILE PLAYING MONOPOLY?',
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
