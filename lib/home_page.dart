// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:probability/learn_category.dart';
// import 'package:probability/play_category.dart';
// import 'package:probability/profilepage.dart'; // Import the ProfilePage class
// import 'dart:io';
//
// class Homepage extends StatelessWidget {
//   const Homepage({Key? key});
//
// //   @override
// //   Widget build(BuildContext context) {
// //     // Get the screen size
// //     final screenSize = MediaQuery.of(context).size;
// //
// //     // Calculate proportional heights for different sections
// //     // Adjust these if you have a specific design in mind
// //     final topSectionHeight = screenSize.height * 0.20;
// //     final middleSectionHeight = screenSize.height * 0.25;
// //     final bottomSectionHeight = screenSize.height * 0.45;
// //     final formulaeHeight = screenSize.height * 0.10;
// //
// //     return Scaffold(
// //       body: Stack(
// //         children: [
// //           SingleChildScrollView(
// //             child: Column(
// //               children: <Widget>[
// //                 SizedBox(height: 20),
// //                 buildTopSection(screenSize, topSectionHeight),
// //                 buildMiddleSection(screenSize, middleSectionHeight),
// //                 buildFormulaeSection(screenSize, formulaeHeight),
// //                 buildBottomSection(screenSize, bottomSectionHeight, context),
// //               ],
// //             ),
// //           ),
// //           ProfileAvatar(), // Display profile avatar
// //         ],
// //       ),
// //     );
// //   }
// //
// //   Widget buildTopSection(Size screenSize, double height) {
// //     return Container(
// //       height: height,
// //       width: screenSize.width,
// //       decoration: BoxDecoration(
// //         gradient: const LinearGradient(
// //           colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
// //         ),
// //       ),
// //       child: Center(
// //         child: Text(
// //           'WHAT IS PROBABILITY',
// //           textAlign: TextAlign.center,
// //           style: TextStyle(
// //             color: Colors.black,
// //             fontSize: screenSize.width * 0.06, // 6% of screen width
// //             fontWeight: FontWeight.bold,
// //             letterSpacing: 6.4,
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget buildMiddleSection(Size screenSize, double height) {
// //     return Container(
// //       height: height,
// //       width: screenSize.width, // Set the width to be 80% of the screen width
// //       decoration: BoxDecoration(
// //         gradient: const LinearGradient(
// //           colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
// //         ), // Replace with your desired color
// //       ),
// //       padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.05),
// //       child: Container(
// //         width: screenSize.width * 0.8,
// //         decoration: BoxDecoration(
// //           gradient: const LinearGradient(
// //             colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
// //           ), // Replace with your desired color
// //           border: Border.all(
// //             color: Colors.white, // Replace with your desired border color
// //             width: 5, // Replace with your desired border width
// //           ),
// //           borderRadius:
// //               BorderRadius.circular(12), // Optional, for rounded corners
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           crossAxisAlignment: CrossAxisAlignment.stretch,
// //           children: <Widget>[
// //             Text(
// //               'CHANCE OF SOMETHING HAPPENING',
// //               textAlign: TextAlign.center,
// //               style: GoogleFonts.roboto(
// //                 color: Colors.white,
// //                 fontSize: screenSize.width * 0.03 * 0.8, // 4% of screen width
// //                 fontWeight: FontWeight.bold,
// //                 letterSpacing: 3,
// //               ),
// //             ),
// //             SizedBox(
// //                 height:
// //                     20), // Fixed space for simplicity, make it responsive if needed
// //             Text(
// //               'EXAMPLE: How likely would you pick a chocolate at the supermarket--LIKELY',
// //               textAlign: TextAlign.center,
// //               style: GoogleFonts.roboto(
// //                 color: Colors.white,
// //                 fontSize: screenSize.width * 0.02 * 0.8, // 3% of screen width
// //                 letterSpacing: 2,
// //               ),
// //             ),
// //             SizedBox(
// //                 height:
// //                     20), // Fixed space for simplicity, make it responsive if needed
// //             Text(
// //               'EXAMPLE: How likely would you pick a Vegetable at the supermarket ---NOT LIKELY',
// //               textAlign: TextAlign.center,
// //               style: GoogleFonts.roboto(
// //                 color: Colors.white,
// //                 fontSize: screenSize.width * 0.02 * 0.8, // 3% of screen width
// //                 letterSpacing: 2,
// //               ),
// //             ),
// //             // ... Add more widgets as needed ...
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget buildFormulaeSection(Size screenSize, double height) {
// //     return Container(
// //       height: height, // Adjust the height as needed
// //       width: screenSize.width,
// //       decoration: BoxDecoration(
// //         gradient: const LinearGradient(
// //           colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
// //         ),
// //       ),
// //       child: Center(
// //         child: Container(
// //           // This inner container is 80% of screen width as specified
// //           width: screenSize.width * 0.8,
// //           child: Row(
// //             mainAxisAlignment: MainAxisAlignment
// //                 .spaceBetween, // Space out the row children equally
// //             crossAxisAlignment: CrossAxisAlignment.center,
// //             children: <Widget>[
// //               Text(
// //                 'FORMULAE',
// //                 style: TextStyle(
// //                   color: Colors.white,
// //                   fontWeight: FontWeight.bold,
// //                   fontSize: screenSize.width *
// //                       0.03 *
// //                       0.8, // Based on width for better scaling
// //                 ),
// //               ),
// //               Expanded(
// //                 // Using Expanded for the divider and text to ensure it takes the needed space
// //                 child: Column(
// //                   mainAxisAlignment: MainAxisAlignment.center,
// //                   children: <Widget>[
// //                     Text(
// //                       'FAVORABLE OUTCOME',
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: screenSize.width *
// //                             0.02 *
// //                             0.8, // Based on width for better scaling
// //                       ),
// //                     ),
// //                     Divider(
// //                       color: Colors.white,
// //                       thickness: 2,
// //                       indent: screenSize.width *
// //                           0.1, // Use a percentage of the screen width for indent
// //                       endIndent: screenSize.width * 0.1, // and endIndent
// //                     ),
// //                     Text(
// //                       'TOTAL OUTCOME',
// //                       style: TextStyle(
// //                         color: Colors.white,
// //                         fontSize: screenSize.width *
// //                             0.02 *
// //                             0.8, // Based on width for better scaling
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// //
// //   Widget buildBottomSection(
// //       Size screenSize, double height, BuildContext context) {
// //     return Container(
// //       height: height,
// //       width: screenSize.width,
// //       decoration: BoxDecoration(
// //         gradient: const LinearGradient(
// //           colors: [Color(0xFF2BD1C7), Color(0x47118CE5)],
// //         ),
// //       ),
// //       child: Column(
// //         mainAxisAlignment: MainAxisAlignment.center,
// //         children: [
// //           // Top row with images
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: <Widget>[
// //               Container(
// //                 width: screenSize.width * 0.2,
// //                 height: screenSize.height * 0.1,
// //                 decoration: BoxDecoration(
// //                   image: DecorationImage(
// //                     image: FileImage(
// //                         File("assets/images/firebaseImages/dices2Image.png")),
// //                     fit: BoxFit.fitWidth,
// //                   ),
// //                 ),
// //               ),
// //               Container(
// //                 width: screenSize.width * 0.2,
// //                 height: screenSize.height * 0.1,
// //                 decoration: BoxDecoration(
// //                   image: DecorationImage(
// //                     image: FileImage(
// //                         File("assets/images/firebaseImages/imageOfBalls.png")),
// //                     fit: BoxFit.fitWidth,
// //                   ),
// //                 ),
// //               ),
// //             ],
// //           ),
// //           // Spacing between the rows
// //           SizedBox(height: 20),
// //           // Bottom row with buttons and images
// //           Row(
// //             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
// //             children: <Widget>[
// //               Column(
// //                 children: <Widget>[
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => LearnCategories()),
// //                       );
// //                     },
// //                     child: const Text(
// //                       'LEARN',
// //                       style: TextStyle(
// //                         fontSize: 24, // Adjust the fontSize as needed
// //                       ),
// //                     ),
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor:
// //                           Color(0xFF4182FF), // Adjust the color as needed
// //                       fixedSize: Size(screenSize.width * 0.25,
// //                           50), // Adjust the size as needed
// //                     ),
// //                   ),
// //                   Container(
// //                     width: screenSize.width * 0.2,
// //                     height: screenSize.height * 0.1,
// //                     decoration: BoxDecoration(
// //                       image: DecorationImage(
// //                         image: FileImage(
// //                             File("assets/images/firebaseImages/wheel.png")),
// //                         fit: BoxFit.fitWidth,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //               Column(
// //                 children: <Widget>[
// //                   ElevatedButton(
// //                     onPressed: () {
// //                       Navigator.push(
// //                         context,
// //                         MaterialPageRoute(
// //                             builder: (context) => PLayCategories()),
// //                       );
// //                     },
// //                     child: const Text(
// //                       'SOLVE',
// //                       style: TextStyle(
// //                         fontSize: 24, // Adjust the fontSize as needed
// //                       ),
// //                     ),
// //                     style: ElevatedButton.styleFrom(
// //                       backgroundColor:
// //                           Color(0xFF4182FF), // Adjust the color as needed
// //                       fixedSize: Size(screenSize.width * 0.25,
// //                           50), // Adjust the size as needed
// //                     ),
// //                   ),
// //                   Container(
// //                     width: screenSize.width * 0.2,
// //                     height: screenSize.height * 0.1,
// //                     decoration: BoxDecoration(
// //                       image: DecorationImage(
// //                         image: FileImage(File(
// //                             "assets/images/firebaseImages/headAndTails.png")),
// //                         fit: BoxFit.fitWidth,
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ],
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }
// //
// // class ProfileAvatar extends StatefulWidget {
// //   @override
// //   _ProfileAvatarState createState() => _ProfileAvatarState();
// // }
// //
// // class _ProfileAvatarState extends State<ProfileAvatar> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Positioned(
// //       top: 20,
// //       right: 20,
// //       child: GestureDetector(
// //         onTap: () {
// //           // Navigate to the ProfilePage when user clicks on the image
// //           Navigator.push(
// //             context,
// //             MaterialPageRoute(builder: (context) => ProfilePage()),
// //           );
// //         },
// //         child: CircleAvatar(
// //           radius: 30,
// //           backgroundImage: AssetImage('assets/images/avatar.png'),
// //         ),
// //       ),
// //     );
// //   }
// // }
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 1024,
//       height: 1366,
//       clipBehavior: Clip.hardEdge,
//       decoration: BoxDecoration(
//         border: Border.all(),
//         gradient: const LinearGradient(
//           colors: [Color(0xFF53CCEC), Color(0xFF000181)],
//           stops: [0.67, 0.96],
//         ),
//       ),
//       child: Stack(
//         clipBehavior: Clip.none,
//         children: [
//           Positioned(
//             left: -4,
//             top: 56,
//             child: SizedBox(
//               width: 1038,
//               child: Text(
//                 'LET’S LEARN PROBABILITY',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.getFont(
//                   'Signika',
//                   color: const Color(0xFF1974D3),
//                   fontSize: 64,
//                   fontWeight: FontWeight.bold,
//                   letterSpacing: 6.4,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 274,
//             top: 854,
//             child: SizedBox(
//               width: 925,
//               height: 183,
//               child: Text(
//                 'FAVORABLE OUTCOME',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.getFont(
//                   'Calistoga',
//                   color: const Color(0xFF000181),
//                   fontSize: 30,
//                   letterSpacing: 3,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 534,
//             top: 1001,
//             child: Image.network(
//               'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FnpsHWJMQeMQ31iFisae4%2F7db092c70113da2a1e937969d5c5b1d1.png',
//               width: 400,
//               height: 4,
//               fit: BoxFit.contain,
//             ),
//           ),
//           Positioned(
//             left: 426,
//             top: 1014,
//             child: SizedBox(
//               width: 656,
//               height: 83,
//               child: Text(
//                 'TOTAL OUTCOME',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.getFont(
//                   'Calistoga',
//                   color: const Color(0xFF000181),
//                   fontSize: 30,
//                   letterSpacing: 3,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 59,
//             top: 955,
//             child: SizedBox(
//               width: 387,
//               height: 101,
//               child: Text(
//                 'FORMULAE    ',
//                 textAlign: TextAlign.center,
//                 style: GoogleFonts.getFont(
//                   'Calistoga',
//                   color: const Color(0xFF000181),
//                   fontSize: 30,
//                   letterSpacing: 3,
//                 ),
//               ),
//             ),
//           ),
//           Positioned(
//             left: 111,
//             top: 163,
//             child: Container(
//               width: 819,
//               height: 281,
//               clipBehavior: Clip.hardEdge,
//               decoration: const BoxDecoration(
//                 color: Colors.transparent,
//               ),
//             ),
//           ),
//           Positioned(
//             left: 135,
//             top: 213,
//             child: Text(
//               'IT’S THE CHANCE OF SOMETHING HAPPENING ',
//               textAlign: TextAlign.center,
//               style: GoogleFonts.getFont(
//                 'Calistoga',
//                 color: Colors.white,
//                 fontSize: 30,
//                 letterSpacing: 3,
//               ),
//             ),
//           ),
//           Positioned(
//             left: 25,
//             top: 1294,
//             child: Image.network(
//               'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FnpsHWJMQeMQ31iFisae4%2F144d82cb96558d882cc637d48bf0b498.png',
//               width: 62,
//               height: 59,
//               fit: BoxFit.contain,
//             ),
//           ),
//           Positioned(
//             left: 961,
//             top: 1294,
//             child: Image.network(
//               'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FnpsHWJMQeMQ31iFisae4%2Fbaae1378b31042b9a1c6751db15bf804.png',
//               width: 63,
//               height: 63,
//               fit: BoxFit.contain,
//             ),
//           ),
//           Positioned(
//             left: 122,
//             top: 1134,
//             child: SizedBox(
//               width: 305,
//               height: 81,
//               child: Stack(
//                 clipBehavior: Clip.none,
//                 children: [
//                   Positioned(
//                     left: 0,
//                     top: 0,
//                     child: Container(
//                       width: 305,
//                       height: 81,
//                       clipBehavior: Clip.hardEdge,
//                       decoration: const BoxDecoration(
//                         color: Color(0xFF53CCEC),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//           Positioned(
//             left: 586,
//             top: 1134,
//             child: Container(
//               width: 305,
//               height: 81,
//               clipBehavior: Clip.hardEdge,
//               decoration: const BoxDecoration(
//                 color: Color(0xFF53CCEC),
//               ),
//             ),
//           ),
//           const Positioned(
//             left: 135,
//             top: 1113,
//             child: SizedBox(
//               width: 290,
//               height: 122,
//               child: Text(
//                 'LEARN',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0xFFFFE6B6),
//                   fontSize: 60,
//                   fontWeight: FontWeight.w800,
//                   letterSpacing: 6,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           ),
//           const Positioned(
//             left: 585,
//             top: 1113,
//             child: SizedBox(
//               width: 299,
//               height: 122,
//               child: Text(
//                 'SOLVE',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   color: Color(0xFFFFE6B6),
//                   fontSize: 60,
//                   fontWeight: FontWeight.w800,
//                   letterSpacing: 6,
//                   fontFamily: 'Roboto',
//                 ),
//               ),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }
// class ProfileAvatar extends StatefulWidget {
//   @override
//   _ProfileAvatarState createState() => _ProfileAvatarState();
// }
//
// class _ProfileAvatarState extends State<ProfileAvatar> {
//   @override
//   Widget build(BuildContext context) {
//     return Positioned(
//       top: 20,
//       right: 20,
//       child: GestureDetector(
//         onTap: () {
//           // Navigate to the ProfilePage when user clicks on the image
//           Navigator.push(
//             context,
//             MaterialPageRoute(builder: (context) => ProfilePage()),
//           );
//         },
//         child: CircleAvatar(
//           radius: 30,
//           backgroundImage: AssetImage('assets/images/avatar.png'),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/likely.dart';
import 'package:probability/play_category.dart';
import 'package:probability/profilepage.dart'; // Import the ProfilePage class
import 'package:probability/learn_percentages.dart';

import 'dart:io';
import 'dart:math';


class Homepage extends StatelessWidget {
  const Homepage({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery
        .of(context)
        .size;

    return Scaffold(
      body: Container(
      width: screenSize.width,
      height: screenSize.height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        // gradient: LinearGradient(
        //   colors: [Color(0xFF53CCEC), Color(0xFF000181)],
        //   stops: [0.56, 0.9],
        //   transform: GradientRotation(90 * pi / 180),
        color: const Color(0xFFFFE6B6),
      ),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            left: screenSize.width *0.0,
            top: screenSize.height * 0.056,
            child: SizedBox(
              width: screenSize.width,
              child: Text(
                'LET’S LEARN PROBABILITY',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Signika',
                  color: const Color(0xFF1974D3),
                  fontSize: screenSize.width * 0.05 * 0.8,
                  fontWeight: FontWeight.w800,
                  letterSpacing: screenSize.width *0.012,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.05,
            top: screenSize.height * 0.18,
            child: Text(
              'IT’S IS THE MEASURE OF THE LIKELIHOOD OF AN EVENT TO HAPPEN',
              textAlign: TextAlign.center,
              style: GoogleFonts.getFont(
                'Calistoga',
                color:  Color(0xFF11B5D1),
                fontSize: screenSize.width * 0.03 * 0.8,
                letterSpacing: screenSize.width * 0.002,
                fontWeight: FontWeight.w800,
              ),
            ),
          ),
          Positioned(
            left: screenSize.width * 0.08,
            top: screenSize.height * 0.17,
            child: Container(
              width: screenSize.width * 0.8,
              height: screenSize.height * 0.43,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Probability-Line.png'),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenSize.width*0.280,
            top: screenSize.height* 0.63,
            child: SizedBox(
              width:screenSize.width*0.925,
              height: screenSize.height*0.183,
              child: Text(
                'FAVORABLE OUTCOME',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Calistoga',
                  color: const Color(0xFF000181),
                  fontSize: screenSize.width*0.037*0.8,
                  letterSpacing: screenSize.width*0.012,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenSize.width*0.4,
            top: screenSize.height*0.73,
            child: SizedBox(
              width: screenSize.width*0.656,
              height: screenSize.height*0.083,
              child: Text(
                'TOTAL OUTCOME',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Calistoga',
                  color: const Color(0xFF000181),
                  fontSize:screenSize.width*0.040*0.8,
                  letterSpacing: screenSize.width*0.012,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),

          Positioned(
            left:screenSize.width*0.059,
            top: screenSize.height*0.68,
            child: SizedBox(
              width: screenSize.width*0.387,
              height: screenSize.height*0.101,
              child: Text(
                'FORMULAE',
                textAlign: TextAlign.center,
                style: GoogleFonts.getFont(
                  'Calistoga',
                  color: const Color(0xFF000181),
                  fontSize:screenSize.width*0.050*0.8,
                  letterSpacing: screenSize.width*0.012,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          Positioned(
            left: screenSize.width*0.534,
            top: screenSize.height*0.5,
            child: Image.network(
              'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FnpsHWJMQeMQ31iFisae4%2F7db092c70113da2a1e937969d5c5b1d1.png',
              width: screenSize.width*0.4,
              height: screenSize.height*0.4,
              fit: BoxFit.contain,
            ),
          ),

          Positioned(
            left: screenSize.width*0.06,
            top: screenSize.height*0.84,
            child: SizedBox(
              width: screenSize.width*0.305,
              height: screenSize.height*0.081,
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Positioned(
                    left: screenSize.width*0,
                    top: screenSize.height*0,
                child: SizedBox(
                  width: screenSize.width*0.3,
                  height: screenSize.height*0.09,
                  child: GestureDetector(
                    onTap: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: Text("Learn Options"),
                            content: Text("Choose a learning category"),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => likely()),
                                  );
                                },
                                child: Text("Beginner"),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) => LearnCategories()),
                                  );
                                },
                                child: Text("Advanced"),
                              ),

                            ],
                          );
                        },
                      );
                      // Navigator.push(
                      //   context,
                      //   MaterialPageRoute(builder: (context) => LearnCategories()),
                      // );
                    },
                    child: Container(
                      width: screenSize.width*0.305,
                      height: screenSize.height*0.081,
                      clipBehavior: Clip.hardEdge,
                      decoration: ShapeDecoration(
                        color: Color(0xFF53CCEC),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                    ),
                  ),
                )
                  ),
                   Positioned(
                    left: screenSize.width *0.01,
                    top: screenSize.height *0.0,
                    child: SizedBox(
                      width: screenSize.width*0.3,
                      height: screenSize.height*0.09,
                      child: GestureDetector(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text("Learn Options", style: TextStyle(fontSize: 24.0,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,),),
                                content: Text("Choose a learning category", style: TextStyle(fontSize: 20.0,
                                  color: Colors.purple,
                                  fontWeight: FontWeight.bold,),),
                                actions: [
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => likely()),
                                      );
                                    },
                                    child: Text("Beginner", style: TextStyle(fontSize: 18.0,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,),),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LearnFractionToPercentage()),
                                      );
                                    },
                                    child: Text("Intermediate", style: TextStyle(fontSize: 18.0,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,),),
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(builder: (context) => LearnCategories()),
                                      );
                                    },
                                    child: Text("Advanced", style: TextStyle(fontSize: 18.0,
                                      color: Colors.purple,
                                      fontWeight: FontWeight.bold,),),
                                  ),
                                ],
                              );
                            },
                          );
                   // Navigator.push(
                   // context,
                   // MaterialPageRoute(builder: (context) => LearnCategories()),
                   // );
                   },
                        child: Text(
                        'LEARN',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xFFFFE6B6),
                          fontSize: screenSize.width*0.060*0.8,
                          fontWeight: FontWeight.w800,
                          letterSpacing: screenSize.width*0.012,
                          fontFamily: 'Roboto',
                        ),
                      ),
                    ),
                  )
                   ),
                ],
              ),
            ),
          ),
          Positioned(
            left: screenSize.width*0.586,
            top: screenSize.height*0.84,
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PLayCategories()),
                );
              },
            child: Container(
              width: screenSize.width*0.305,
              height: screenSize.height*0.081,
              clipBehavior: Clip.hardEdge,
              decoration: ShapeDecoration(
                color: Color(0xFF53CCEC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
            ),
          ),
          ),

          Positioned(
            left: screenSize.width *0.6,
            top: screenSize.height *0.84,
            child: SizedBox(
              width: screenSize.width*0.290,
              height: screenSize.height*0.17,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PLayCategories()),
                  );
                },
              child: Text(
                'SOLVE',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFFFE6B6),
                  fontSize: screenSize.width*0.055*0.8,
                  fontWeight: FontWeight.w800,
                  letterSpacing: screenSize.width*0.012,
                  fontFamily: 'Roboto',
                ),
              ),
            ),
          )
          ),
        ],
      ),
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
      top: 2,
      right: 2,
      child: GestureDetector(
        onTap: () {
          // Navigate to the ProfilePage when user clicks on the image
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => ProfilePage()),
          );
        },
        child: CircleAvatar(
          radius: 10,
          backgroundImage: AssetImage('assets/images/avatar.png'),
        ),
      ),
    );
  }
}

