import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/learn_category.dart';
import 'package:probability/play_category.dart';

class dice_example extends StatelessWidget {
  const dice_example({Key? key});
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
  theme: ThemeData.dark().copyWith(
  scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
  ),
  home: Scaffold(
  body: ListView(children: [
  Frame1(),
  ]),
  ),
  );
  }
  }

  class Frame1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
  return Column(
  children: [
  Container(
  width: 1024,
  height: 1366,
  clipBehavior: Clip.antiAlias,
  decoration: BoxDecoration(
  gradient: LinearGradient(
  begin: Alignment(0.00, -1.00),
  end: Alignment(0, 1),
  colors: [Color(0xFF13882D), Color(0x82CC2FA3)],
  ),
  ),
  child: Stack(
  children: [
  Positioned(
  left: 72,
  top: 74,
  child: SizedBox(
  width: 896,
  child: Text(
  'DICE  ',
  textAlign: TextAlign.center,
  style: TextStyle(
  color: Colors.black.withOpacity(0.20000000298023224),
  fontSize: 64,
  fontFamily: 'Roboto',
  fontWeight: FontWeight.w800,
  height: 0,
  letterSpacing: 6.40,
  ),
  ),
  ),
  ),
  Positioned(
  left: -119,
  top: 166,
  child: Container(
  width: 579,
  height: 478,
  decoration: BoxDecoration(
  image: DecorationImage(
  image: NetworkImage("https://via.placeholder.com/579x478"),
  fit: BoxFit.fill,
  ),
  ),
  ),
  ),
  Positioned(
  left: 88,
  top: 818,
  child: Container(
  width: 1000,
  height: 319,
  child: Stack(
  children: [
  Positioned(
  left: 741,
  top: 0,
  child: SizedBox(
  width: 140,
  height: 126,
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
  left: 752,
  top: 209,
  child: SizedBox(
  width: 133.32,
  height: 109.93,
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
  left: 0,
  top: 267.09,
  child: SizedBox(
  width: 473.25,
  height: 51.91,
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
  left: 624,
  top: 154,
  child: SizedBox(
  width: 344,
  height: 58,
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
  left: 656,
  top: 154,
  child: SizedBox(
  width: 344,
  height: 58,
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
  left: 0,
  top: 70.89,
  child: SizedBox(
  width: 524.46,
  height: 110.70,
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
  Positioned(
  left: 13.24,
  top: 186.93,
  child: Container(
  width: 409.68,
  height: 49.62,
  decoration: BoxDecoration(
  image: DecorationImage(
  image: NetworkImage("https://via.placeholder.com/410x50"),
  fit: BoxFit.fill,
  ),
  ),
  ),
  ),
  Positioned(
  left: 177.47,
  top: 6,
  child: Container(
  width: 81.30,
  height: 72.52,
  decoration: BoxDecoration(
  image: DecorationImage(
  image: NetworkImage("https://via.placeholder.com/81x73"),
  fit: BoxFit.fill,
  ),
  ),
  ),
  ),
  Positioned(
  left: 428,
  top: 168,
  child: SizedBox(
  width: 343,
  height: 39,
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
  left: 32,
  top: 785,
  child: Container(
  width: 968,
  height: 385,
  decoration: ShapeDecoration(
  shape: RoundedRectangleBorder(
  side: BorderSide(width: 3, color: Colors.white),
  ),
  ),
  ),
  ),
  Positioned(
  left: 1088,
  top: 612,
  child: Container(
  width: 1026,
  height: 671,
  decoration: ShapeDecoration(
  shape: RoundedRectangleBorder(
  side: BorderSide(width: 3, color: Colors.white),
  ),
  ),
  ),
  ),
  Positioned(
  left: 492,
  top: 244,
  child: Container(
  width: 508,
  height: 319,
  decoration: ShapeDecoration(
  shape: RoundedRectangleBorder(
  side: BorderSide(width: 3, color: Colors.white),
  ),
  ),
  ),
  ),
  Positioned(
  left: 1507,
  top: 244,
  child: Container(
  width: 525,
  height: 319,
  decoration: ShapeDecoration(
  shape: RoundedRectangleBorder(
  side: BorderSide(width: 3, color: Colors.white),
  ),
  ),
  ),
  ),
  Positioned(
  left: 512,
  top: 287,
  child: SizedBox(
  width: 488,
  height: 233,
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
  ),
  ],
  );
  }
  }