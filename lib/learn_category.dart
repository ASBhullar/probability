import 'package:flutter/material.dart';
import 'package:probability/home_page.dart';
import 'package:probability/wheel_example.dart';

import 'dice_example.dart';

class LearnCategories extends StatelessWidget {
  const LearnCategories({Key? key});

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return Container(
      width: screenSize.width,
      height: screenSize.height,
      clipBehavior: Clip.hardEdge,
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Color(0xFFA08910), Color(0x6047DEE7)],
        ),
      ),
      child: SizedBox(
        width: double.infinity,
        child: Stack(
          clipBehavior: Clip.none,
          children: [
            Positioned(
              left: screenSize.width * 0.143,
              top: screenSize.height * 0.214,
              child: SizedBox(
                width: screenSize.width * 0.724,
                height: screenSize.height * 0.072,
                child: Text(
                  'CHOOSE A CATEGORY TO LEARN!',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: screenSize.width * 0.048 * 0.724,
                    fontWeight: FontWeight.w800,
                    letterSpacing: screenSize.width * 0.005,
                    fontFamily: 'Roboto',
                  ),
                ),
              ),
            ),
            //home button
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
                          // Add your navigation logic here
                          // For example, navigate to a new page
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
                    )

                  ],
                ),
              ),
            ),
            //PREVI
            Positioned(
              left: screenSize.width * 0.029,
              top: screenSize.height * 0.923,
              child:GestureDetector(
                  onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => Homepage()),
    );
    },
              child: Image.network(
                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FVLycwtx8L8la6K4YYSH8%2F7f9a6946b79a5f10106b07e7024beaf5.png',
                width: screenSize.width * 0.061,
                height: screenSize.height * 0.043,
                fit: BoxFit.contain,
              ),
      ),
            ),
            //NEXT
            Positioned(
              left: screenSize.width * 0.921,
              top: screenSize.height * 0.923,
              child:GestureDetector (
                onTap: () {
    Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => wheel_example()),
    );
    },

              child: Image.network(
                'https://storage.googleapis.com/codeless-dev.appspot.com/uploads%2Fimages%2FVLycwtx8L8la6K4YYSH8%2Fbaae1378b31042b9a1c6751db15bf804.png',
                width: screenSize.width * 0.061,
                height: screenSize.height * 0.046,
                fit: BoxFit.scaleDown,
              ),
            ),
            ),
            //wheel
             Positioned(
              left: screenSize.width * 0.119,
              top: screenSize.height * 0.394,
              child:
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => wheel_example()),
                  );
                },
                child:
                Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FVLycwtx8L8la6K4YYSH8%2Fbc6a8b33461c1f15a34e3a03a34ed7d5470d118fwheel%20b.png?alt=media&token=355a551e-e558-41fa-b200-42bf8d1132e0',
                width: screenSize.width * 0.250,
                height: screenSize.height * 0.250,
                fit: BoxFit.scaleDown,
              ),
              ),
            ),
            Positioned(
              left: screenSize.width * 0.663,
              top: screenSize.height * 0.433,
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FVLycwtx8L8la6K4YYSH8%2Ffd88a8ac45408c734505345100218c41742b25daballs%20blurr%201.png?alt=media&token=8886e469-4661-443b-b888-73867428d994',
                width: screenSize.width * 0.250,
                height: screenSize.height * 0.250,
                fit: BoxFit.scaleDown,
              ),
            ),
            Positioned(
              left: screenSize.width * 0.119,
              top: screenSize.height * 0.669,
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FVLycwtx8L8la6K4YYSH8%2Fea4ccdc8b18ef59430ab534e835eb2bf6293b247head%20and%20tails%20%20blur.png?alt=media&token=7f9f6269-2f54-4f6d-acf5-becf11f47d09',
                width: screenSize.width * 0.250,
                height: screenSize.height * 0.250,
                fit: BoxFit.scaleDown,
              ),
            ),
            //DICE
            Positioned(
              left: screenSize.width * 0.654,
              top: screenSize.height * 0.669,
              child:
                GestureDetector(
                onTap: () {
                 Navigator.push(
                     context,
                     MaterialPageRoute(builder: (context) => dice_example()),
                 );
               },
              child: Image.network(
                'https://firebasestorage.googleapis.com/v0/b/codeless-app.appspot.com/o/projects%2FVLycwtx8L8la6K4YYSH8%2F4b1eef2377258f507f56a630b90796174f92cdafRectangle%206.png?alt=media&token=28539c76-8a66-4237-8952-433c5a385c58',
                width: screenSize.width * 0.250,
                height: screenSize.height * 0.250,
                fit: BoxFit.scaleDown,
              ),
            ),
            ),
            Positioned(
              left: screenSize.width * 0.06,
              top: screenSize.height * 0.174,
              child: Container(
                width: screenSize.width * 0.861,
                height: screenSize.height * 0.143,
                clipBehavior: Clip.hardEdge,
                decoration: BoxDecoration(
                  border: Border.all(
                    width: screenSize.width * 0.003,
                    color: Colors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
