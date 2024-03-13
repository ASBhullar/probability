import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/play_category.dart';
import 'package:probability/play_category.dart';
import 'home_page.dart';
import 'package:probability/wheel_example.dart';


class dice_example extends StatelessWidget {
  const dice_example({Key? key});

  @override
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
      //PREVI
      Positioned(
        left: screenSize.width * 0.029,
        top: screenSize.height * 0.94,
        child:GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => LearnCategories()),
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
        left: screenSize.width * 0.935,
        top: screenSize.height * 0.94,
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
  Positioned(
  left: screenSize.width*0.04 ,
  top: screenSize.height*0.02,
  child: SizedBox(
  width: 896,
  child: Text(
  'DICE',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.black.withOpacity(0.8),
  fontSize: 64,
   fontFamily: 'Roboto',
  // fontWeight: FontWeight.w800,
  // letterSpacing: 6.40,
  ),
  ),
  ),
  ),
  //dice gif
  Positioned(
  left: screenSize.width*0.04 ,
  top: screenSize.height*0.1,
  child: Container(
  width: screenSize.width *0.45,
  height: screenSize.height* 0.4,
  decoration: BoxDecoration(
  image: DecorationImage(
  image: NetworkImage("https://via.placeholder.com/579x478"),
  fit: BoxFit.fill,
  ),
  ),
  ),
  ),
  Positioned(
  left: screenSize.width*0.05,
  top: screenSize.height*0.59,
  child: Container(
  width: screenSize.width*70,
  height: screenSize.height*29,
  child: Stack(
  children: [
  Positioned(
  left: screenSize.width*0.2,
  top: 0,
  child: SizedBox(
  width: screenSize.width*1.38,
  height: screenSize.height * 0.5,
  child: Text(
  '1',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 60,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  height: 0,
  letterSpacing: 48,
  ),
  ),
  ),
  ),
  Positioned(
  left: screenSize.width*0.84,
  top: screenSize.height*0.25,
  child: SizedBox(
  width: screenSize.width*0.13,
  height:screenSize.height*0.19,
  child: Text(
  '6',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 60,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  height: 0,
  letterSpacing: 48,
  ),
  ),
  ),
  ),
  Positioned(
    left: screenSize.width*0.02,
    top: screenSize.height*0.27,
    child: SizedBox(
      width: screenSize.width*0.5,
      height:screenSize.height*0.19,
  child: Text(
  'TOTAL OUTCOMES',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  height: 0,
  letterSpacing: 6,
  ),
  ),
  ),
  ),
  Positioned(
    left: screenSize.width*0.8,
    top: screenSize.height*0.1,
    child: SizedBox(
      width: screenSize.width*0.13,
      height:screenSize.height*0.19,
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
    left: screenSize.width*0.02,
    top: screenSize.height*0.1,
    child: SizedBox(
      width: screenSize.width*0.5,
      height:screenSize.height*0.19,
  child: Text(
  'FAVORABLE OUTCOMES',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 30,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w400,
  height: 0,
  letterSpacing: 6,
  ),
  ),
  ),
  ),
  // all dice pics
  Positioned(
  left: screenSize.width*0.02,
    top: screenSize.height*0.15,
  child: Container(
    width: screenSize.width*0.7,
    height:screenSize.height*0.1,
  decoration: BoxDecoration(
  image: DecorationImage(
  image: NetworkImage("https://via.placeholder.com/410x50"),
  fit: BoxFit.fill,
  ),
  ),
  ),
  ),
  // dice 6
  Positioned(
    left: screenSize.width*0.2,
    top: screenSize.height*0.0,
    child: Container(
      width: screenSize.width*0.1,
      height:screenSize.height*0.1,
  decoration: BoxDecoration(
  image: DecorationImage(
  image: NetworkImage("https://via.placeholder.com/81x73"),
  fit: BoxFit.fill,
  ),
  ),
  ),
  ),
  Positioned(
    left: screenSize.width*0.35,
    top: screenSize.height*0.05,
    child: SizedBox(
      width: screenSize.width*0.7,
      height:screenSize.height*0.1,
  child: Text(
  '=',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.white,
  fontSize: 128,
  fontFamily: 'Luckiest Guy',
  fontWeight: FontWeight.w400,
  height: 0,
  letterSpacing: 1.28,
  ),
  ),
  ),
  ),
  ],
  ),
  ),
  ),
  Positioned(
  left:screenSize.width*0.04,
  top: screenSize.height*0.53,
  child: Container(
  width: screenSize.width*0.96,
  height: screenSize.height*0.4,
  decoration: ShapeDecoration(
  shape: RoundedRectangleBorder(
  side: BorderSide(width: 3, color: Colors.white),
  ),
  ),
  ),
  ),
  Positioned(
  left: screenSize.width*0.5,
  top: screenSize.height*0.1,
  child: Container(
  width: screenSize.width*0.5,
  height: screenSize.height*0.4,
  decoration: ShapeDecoration(
  shape: RoundedRectangleBorder(
  side: BorderSide(width: 3, color: Colors.white),
  ),
  ),
  ),
  ),
  Positioned(
  left: screenSize.width*0.55,
  top: screenSize.height*0.2,
  child: SizedBox(
  width: screenSize.width*0.4,
  height: screenSize.height*0.2,
  child: Text(
  'IF YOU ARE PLAYING MONOPOLY AND A SIX MAKES YOU WIN, HOW LIKELY ARE YOU TO GET A SIX?',
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
  left: 32,
  top: 4,
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