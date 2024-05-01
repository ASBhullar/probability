//
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:probability/learn_category.dart';
// import 'package:probability/play_category.dart';
// import 'package:probability/play_category.dart';
// import 'home_page.dart';
// import 'package:probability/wheel_example.dart';
// import 'dart:io';
// import 'dart:math';
//
// class wheel_example extends StatelessWidget {
//   const wheel_example({Key? key});
//
//   @override
//   @override
//   Widget build(BuildContext context) {
//     final Size screenSize = MediaQuery.of(context).size;
//     return Container(
//       width: screenSize.width,
//       height: screenSize.height,
//       clipBehavior: Clip.hardEdge,
//       decoration: const BoxDecoration(
//         gradient: LinearGradient(
//           colors: [Color(0xFF9361C0), Color(0xFFFCAEFA)],
//           stops: [0.1, 0.9],
//           transform: GradientRotation(90 * pi / 180),
//           // colour of background
//         ),
//       ),
//       child: SizedBox(
//         child: Stack(
//           children: [
//             Positioned(
//               left: screenSize.width * 0.029,
//               top: screenSize.height * 0.027,
//               child: Container(
//                 width: screenSize.width * 0.09,
//                 height: screenSize.height * 0.051,
//                 clipBehavior: Clip.hardEdge,
//                 decoration: const BoxDecoration(),
//                 child: Stack(
//                   clipBehavior: Clip.none,
//                   children: [
//                     Positioned(
//                       left: screenSize.width * 0.012,
//                       top: screenSize.height * 0.007,
//                       child: GestureDetector(
//                         onTap: () {
//                           // Add your navigation logic here
//                           // For example, navigate to a new page
//                           Navigator.push(
//                             context,
//                             MaterialPageRoute(builder: (context) => Homepage()),
//                           );
//                         },
//                         child: Container(
//                           width: screenSize.width * 0.051,
//                           height: screenSize.height * 0.044,
//                           decoration: BoxDecoration(
//                             image: DecorationImage(
//                               image: AssetImage(
//                                   "assets/images/firebaseImages/homeba81.png"),
//                               fit: BoxFit.contain,
//                             ),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//             //PREVI
//             Positioned(
//               left: screenSize.width * 0,
//               top: screenSize.height * 0.94,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => LearnCategories()),
//                   );
//                 },
//                 child: Container(
//                   width: screenSize.width * 0.1,
//                   height: screenSize.height * 0.045,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/firebaseImages/backbeaf5.png'),
//                       fit: BoxFit.contain,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             //NEXT
//             Positioned(
//               left: screenSize.width * 0.9,
//               top: screenSize.height * 0.94,
//               child: GestureDetector(
//                 onTap: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => wheel_example()),
//                   );
//                 },
//                 child: Container(
//                   width: screenSize.width * 0.08,
//                   height: screenSize.height * 0.045,
//                   decoration: BoxDecoration(
//                     image: DecorationImage(
//                       image: AssetImage('assets/images/firebaseImages/home804.png'),
//                       fit: BoxFit.scaleDown,
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: screenSize.width*0.002,
//               top: screenSize.height*0.055,
//               child: SizedBox(
//                 width: screenSize.width*0.910,
//                 child: Text(
//                   'SPINNING WHEEL',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.getFont(
//                     'Calistoga',
//                     color: Colors.black,
//                     fontSize: screenSize.width*0.064*0.8,
//                     letterSpacing: screenSize.width*0.012,
//                     // fontWeight: FontWeight.w800,
//                   ),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               left: screenSize.width * 0.77,
//               top: screenSize.height * 0.01,
//               child: Container(
//                 width: screenSize.width * 0.2,
//                 height: screenSize.height * 0.15,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/wheelblur.png'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ),
//             //dice gif
//             //mainpic
//             Positioned(
//               left: screenSize.width*0.325,
//               top: screenSize.height*0.3,
//               child: Image.network(
//                 'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FnpsHWJMQeMQ31iFisae4%2F9f28bdb99f0a1d03bcad474b6ee3089a5bebd730WHEEL%20GIF%201.png?alt=media&token=5b258422-7350-4c17-9a75-d5b5647d1e79',
//                 width: screenSize.width*0.4,
//                 height: screenSize.height*0.35,
//                 fit: BoxFit.cover,
//               ),
//             ),
//
//
//             //start of the group
//             Positioned(
//               left: screenSize.width * 0.84,
//               top: screenSize.height * 0.62,
//               child: SizedBox(
//                 width: screenSize.width * 0.13,
//                 height: screenSize.height * 0.7,
//                 child: Text(
//                   '2',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: screenSize.width*0.060,
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.bold,
//
//
//                   ),
//                 ),
//               ),
//             ),
//
//             Positioned(
//               left: screenSize.width * 0.84,
//               top: screenSize.height * 0.8,
//               child: SizedBox(
//                 width: screenSize.width * 0.13,
//                 height: screenSize.height * 0.7,
//                 child: Text(
//                   '8',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: screenSize.width*0.060,
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: screenSize.width * 0.84,
//               top: screenSize.height * 0.7,
//               child: SizedBox(
//                 width: screenSize.width * 0.2,
//                 height: screenSize.height * 0.7,
//                 child: Text(
//                   '-',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: screenSize.width*0.060,
//                     fontFamily: 'Roboto',
//                     fontWeight: FontWeight.bold,
//                     height: 0,
//                     letterSpacing: 48,
//                   ),
//                 ),
//               ),
//             ),
//
//
//             Positioned(
//               left: screenSize.width * 0.05,
//               top: screenSize.height * 0.67,
//               child: SizedBox(
//                 width: screenSize.width * 0.7,
//                 height: screenSize.height * 0.13,
//                 child: Text(
//                   '=',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     color: Colors.white,
//                     fontSize: screenSize.width*0.128,
//                     fontFamily: 'Luckiest Guy',
//                     fontWeight: FontWeight.w400,
//                     letterSpacing: screenSize.width*1.28,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: screenSize.width * -0.05,
//               top: screenSize.height * 0.7,
//               child: SizedBox(
//                 width: screenSize.width*0.7 ,
//                 height: screenSize.height * 0.1,
//                 child: Text(
//                   'FAVORABLE OUTCOMES',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.getFont(
//                     'Calistoga',
//                     color: Colors.white,
//                     fontSize: screenSize.width*0.037*0.8,
//                     letterSpacing: screenSize.width*0.012,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//               ),
//             ),
//
//
//             Positioned(
//               left: screenSize.width * 0.02,
//               top: screenSize.height * 0.87,
//               child: SizedBox(
//                 width: screenSize.width * 0.5,
//                 height: screenSize.height * 0.19,
//                 child: Text(
//                   'TOTAL OUTCOMES',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.getFont(
//                     'Calistoga',
//                     color: Colors.white,
//                     fontSize:screenSize.width*0.040*0.8,
//                     letterSpacing: screenSize.width*0.012,
//                     fontWeight: FontWeight.w800,
//                   ),
//                 ),
//               ),
//             ),
//             //alldice
//             Positioned(
//               left: screenSize.width * 0.09,
//               top: screenSize.height * 0.73,
//               child: Container(
//                 width: screenSize.width * 0.2,
//                 height: screenSize.height * 0.15,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/wheelblur.png'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ),
//             // dice 6
//             Positioned(
//               left: screenSize.width * 0.08,
//               top: screenSize.height * 0.6,
//               child: Container(
//                 width: screenSize.width * 0.12,
//                 height: screenSize.height * 0.1,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/download red.png'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: screenSize.width * 0.25,
//               top: screenSize.height * 0.61,
//               child: Container(
//                 width: screenSize.width * 0.09,
//                 height: screenSize.height * 0.08,
//                 decoration: BoxDecoration(
//                   image: DecorationImage(
//                     image: AssetImage('assets/images/blue blur.png'),
//                     fit: BoxFit.fill,
//                   ),
//                 ),
//               ),
//             ),
//
//
//
//
//
//
//
//             //the huge box
//             Positioned(
//               left: screenSize.width * 0.01,
//               top: screenSize.height * 0.59,
//               child: Container(
//                 width: screenSize.width * 0.97,
//                 height: screenSize.height * 0.35,
//                 decoration: ShapeDecoration(
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(width: 3, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             //the monopoly box
//             Positioned(
//               left: screenSize.width * 0.02,
//               top: screenSize.height * 0.18,
//               child: Container(
//                 width: screenSize.width*0.97,
//                 height: screenSize.height * 0.15,
//                 decoration: ShapeDecoration(
//                   shape: RoundedRectangleBorder(
//                     side: BorderSide(width: 3, color: Colors.white),
//                   ),
//                 ),
//               ),
//             ),
//             Positioned(
//               left: screenSize.width*0.0,
//               top:screenSize.height*0.22,
//               child: SizedBox(
//                 width: screenSize.width,
//                 height: screenSize.height*0.119,
//                 child: Text(
//                   'WHAT IS THE PROBABILITY OF GETTING RED AND BLUE?',
//                   textAlign: TextAlign.center,
//                   style: GoogleFonts.getFont(
//                     'Calistoga',
//                     color: Colors.white,
//                     fontSize: screenSize.width*0.036*0.8,
//                     letterSpacing:screenSize.width *0.012,
//                   ),
//                 ),
//               ),
//             ),
//
//           ],
//         ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/dice22.dart';
import 'package:probability/dice_example.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/wheel2.dart';
import 'package:probability/wheel_example2.dart';
import 'home_page.dart';
import 'package:probability/wheel_example.dart';
import 'dart:math';
import 'package:probability/dice2.dart';

class wheel_example extends StatelessWidget {
  const wheel_example({Key? key});

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
                            MaterialPageRoute(builder: (context) => const Homepage()),
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
                    MaterialPageRoute(builder: (context) =>const LearnCategories()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.1,
                  height: screenSize.height * 0.045,
                  decoration:const BoxDecoration(
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
                    MaterialPageRoute(builder: (context) => wheel_example2()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.08,
                  height: screenSize.height * 0.045,
                  decoration:const BoxDecoration(
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
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/boyjumpspinning.png'),
                    fit: BoxFit.fill,
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
                decoration:const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/wheelblur.png'),
                    fit: BoxFit.fill,
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
                    MaterialPageRoute(builder: (context) => wheel2()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.95,
                  height: screenSize.height * 0.7,
                  decoration: ShapeDecoration(
                    shape: RoundedRectangleBorder(
                      side:const BorderSide(width: 3, color: Colors.white),
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
                      MaterialPageRoute(builder: (context) => wheel2()),
                    );
                  },
                  child: Text(
                    'WHAT IS THE PROBABILITY OF GETTING RED OR BLUE WHEN YOU SPIN THE WHEEL?',
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

