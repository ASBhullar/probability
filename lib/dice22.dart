import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/dice_example2.dart';
import 'home_page.dart';

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
              left: screenSize.width * 0.02,
              top: screenSize.height * 0.2,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => dice_example2()),
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
              left: screenSize.width * 0.02,
              top: screenSize.height * 0.1,
              child: Container(
                width: screenSize.width * 0.3,
                height: screenSize.height * 0.2,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/officialdicegif.gif'),
                    // fit: BoxFit.fill,
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
                    // fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.05,  // Adjust the horizontal position
              top: screenSize.height * 0.35,
              // Adjust the vertical position
              child:Row(
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.min,  // This makes the Row take up only as much space as needed
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        children:[
                      Container(
                        width: screenSize.width * 0.15,
                        height: screenSize.height * 0.15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/6DICE.jpg'),
                            // fit: BoxFit.fill,
                          ),
                        ),
                      ),
                           Container(
                              width: screenSize.width * 0.08,
                              height: screenSize.height * 0.15,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage('assets/images/4blur.png'),
                                  // fit: BoxFit.fill,
                                ),
                              ),
                            ),
              ],
                          ),


                      SizedBox(width: screenSize.width * 0.35),
                      Text(
                        'FAVORABLE OUTCOMES',
                        textAlign: TextAlign.center,
                        style: GoogleFonts.getFont(
                          'Calistoga',
                          color: Colors.white,
                          fontSize: screenSize.width * 0.037 * 0.8,
                          letterSpacing: screenSize.width * 0.012,
                          fontWeight: FontWeight.normal,
                        ),
                      ),

                      SizedBox(width: screenSize.width * 0.05),  // Add some spacing between the items if needed
                      Container(
                        width: screenSize.width * 0.45,
                        height: screenSize.height * 0.15,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/images/alldice.png'),
                            // fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.05),
                      Text(
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
                    ],
                  ),
                  SizedBox(width: screenSize.width * 0.02),
                  Text(
                    '=',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenSize.width * 0.1,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.bold,
                      height: 1,
                      letterSpacing: 48,
                    ),
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,  // This makes the Row take up only as much space as needed
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [Text(
                      '2',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: screenSize.width*0.08,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                      Text(
                        '-',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width*0.08,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(width: screenSize.width * 0.35),  // Add some spacing between the items if needed
                      Text(
                        '6',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: screenSize.width*0.08,
                          fontFamily: 'Roboto',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),



          ],
        ),
      ),
      ),
    );
  }
}
