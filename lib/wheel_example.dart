import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/play_category.dart';
import 'home_page.dart';
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
            colors: [Color(0xFF7745E2), Color(0x007745E2)],  // colour of background
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
                  child: Image.network(
                    'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FVLycwtx8L8la6K4YYSH8%2F8e41733af163909d6944dac1c628ba81.png',
                    width: screenSize.width * 0.051,
                    height: screenSize.height * 0.044,
                    fit: BoxFit.contain,
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
                      image: NetworkImage("https://via.placeholder.com/500x500"),
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
                  height: screenSize.height *0.54,
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
                              image: NetworkImage("https://via.placeholder.com/204x111"),
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
                              image: NetworkImage("https://via.placeholder.com/218x198"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: screenSize.width * 0,
                        top: screenSize.height * 0.12,
                        child: SizedBox(
                          width: screenSize.width *0.7,
                          height: screenSize.height * 0.18 ,
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
                        left: screenSize.width*0.5,
                        top: screenSize.height *0.45,
                        child: SizedBox(
                          width: screenSize.width *0.48,
                          height: screenSize.height *0.78,
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
                        left: 710,
                        top: 211,
                        child: SizedBox(
                          width: 214.65,
                          height: 67.31,
                          child: Text(
                            '-',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 128,
                              fontFamily: 'Luckiest Guy',
                              fontWeight: FontWeight.w400,
                              height: 0,
                              letterSpacing: 102.40,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 753.22,
                        top: 291.37,
                        child: SizedBox(
                          width: 127.63,
                          height: 110.70,
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
                      Positioned(
                        left: screenSize.width*0.7,
                        top: screenSize.height*0.4,
                        child: Container(
                          width: screenSize.width*0.6,
                          height: screenSize.height * 0.1,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: NetworkImage("https://via.placeholder.com/155x96"),
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 753.12,
                        top: 48.71,
                        child: SizedBox(
                          width: 127.42,
                          height: 142.59,
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
                left: screenSize.width*0.5,
                top: screenSize.height * 0.15,
                child: Container(
                  width: screenSize.width*0.5,
                  height: screenSize.height*0.35,
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
                    children: [

                    ],
                  ),
                ),
              ),
            ],
        ),
    );
  }
}

