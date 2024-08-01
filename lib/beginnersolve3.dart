import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/beginnersolve2.dart';
import 'package:probability/dice_example.dart';
import 'package:probability/dice_example2.dart';
import 'package:probability/wheel_example.dart';
import 'home_page.dart';
import 'package:collection/collection.dart';
import 'package:confetti/confetti.dart';
import 'dart:math';

class Beginnersolve3 extends StatefulWidget {
  const Beginnersolve3({Key? key}) : super(key: key);

  @override
  _BeginnersolveState3 createState() => _BeginnersolveState3();
}

class _BeginnersolveState3 extends State<Beginnersolve3> {
  late ConfettiController _confettiController;
  int currentQuestionIndex = 0;
  int score = 0;
  String selectedOption = '';
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
  void showExplanationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFFbaebff),
        title: Text(
          'EXPLANATION',
          style: GoogleFonts.getFont(
            'Calistoga',
            fontSize: 20,
            fontWeight: FontWeight.bold,

          ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              '1) There are 7 apples in the jar so more likely to pick.',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
              ),
            ),
            Text(
              '2) There is only 1 banana in the jar so less likely to pick.',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
              ),
            ),
            Text(
              '3) There are 0 oranges in the jar so it is impossible to pick.',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
              ),
            ),
            Text(
              '4) There are 4 mangoes in the jar so less likely to pick.',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
              ),
            ),
            Text(
              '5) There are 7 apples in the jar so more likely to pick.',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close dialog
            },
            child: Text(
              'OK',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }


  final List<Map<String, dynamic>> questions = [
    {
      'question': 'HOW LIKELY ARE YOU TO PICK A APPLE?',
      'options': ['LIKELY', 'UNLIKELY', 'CERTAIN', 'IMPOSSIBLE'],
      'correctAnswer': 'LIKELY',
    },
    {
      'question': 'HOW LIKELY ARE YOU TO PICK A BANANA?',
      'options': ['LIKELY', 'UNLIKELY', 'CERTAIN', 'IMPOSSIBLE'],
      'correctAnswer': 'UNLIKELY',
    },
    {
      'question': 'HOW LIKELY ARE YOU TO PICK A ORANGE?',
      'options': ['LIKELY', 'UNLIKELY', 'CERTAIN', 'IMPOSSIBLE'],
      'correctAnswer': 'IMPOSSIBLE',
    },
    {
      'question': 'HOW LIKELY ARE YOU TO PICK A MANGO?',
      'options': ['LIKELY', 'UNLIKELY', 'CERTAIN', 'IMPOSSIBLE'],
      'correctAnswer': 'UNLIKELY',
    },
    {
      'question': 'HOW LIKELY ARE YOU TO PICK 2 APPLES?',
      'options': ['LIKELY', 'UNLIKELY', 'CERTAIN', 'IMPOSSIBLE'],
      'correctAnswer': 'LIKELY',
    },
  ];

  void submitAnswer() {
    if (selectedOption == questions[currentQuestionIndex]['correctAnswer']) {
      score++;
    }

    if (currentQuestionIndex < questions.length - 1) {
      setState(() {
        currentQuestionIndex++;
        selectedOption = '';
      });
    } else {
      String feedbackMessage;
      TextStyle feedbackStyle;

      if (score >= 4) {
        feedbackMessage = 'CONGRATULATIONS!';
        feedbackStyle = GoogleFonts.getFont(
          'Calistoga',
          color: Colors.green,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        );

          setState(() {
            _showConfetti = true;

          });
          _confettiController.play();

      } else if (score >= 2) {
        feedbackMessage = 'BETTER LUCK NEXT TIME';
        feedbackStyle = GoogleFonts.getFont(
          'Calistoga',
          color: Colors.blueAccent,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        );
      } else {
        feedbackMessage = 'KEEP TRYING!';
        feedbackStyle = GoogleFonts.getFont(
          'Calistoga',
          color: Colors.red,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        );
      }

      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          backgroundColor: Colors.white, // Set your desired background color here
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
        ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                'YOUR SCORE IS $score OUT OF ${questions.length}.',
                style: GoogleFonts.getFont(
                  'Calistoga',
                  fontSize: 16,
                  color:  Color(0xFFc09cfa),
                ),
              ),
              SizedBox(height: 10),
              Text(
                feedbackMessage,
                style: feedbackStyle,
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                showExplanationDialog(context);
                },
              child: Text(
                'EXPLANATION',
                style: GoogleFonts.getFont(
                  'Calistoga',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                   color:   Color(0xFFc09cfa),
                ),
              ),
            ),
            TextButton(
              onPressed: () {
                setState(() {
                  currentQuestionIndex = 0;
                  score = 0;
                  selectedOption = '';
                  Navigator.pop(context);
                });
              },
              child: Text(
                'RESTART',
                style: GoogleFonts.getFont(
                  'Calistoga',
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color:  Color(0xFFc09cfa),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;
    final currentQuestion = questions[currentQuestionIndex];
    return Scaffold(
        body: Container(
        width: screenSize.width,
        height: screenSize.height,
        clipBehavior: Clip.hardEdge,
        decoration: const BoxDecoration(
        gradient: LinearGradient(
        colors: [Color(0xFFbaebff), Color(0xFFc09cfa)],
    stops: [0.2, 0.9],
          transform: GradientRotation(90 * pi / 180),
    // transform: GradientRotation(90 * pi / 180),
    // colour of background
    ),
    ),

    child: SizedBox(
    child: Stack(
    children: [
     Positioned(
         left:screenSize.width*0.35,
         top:screenSize.height*0.02,

         child:SizedBox(
           child: Text(
             'QUIZ',
             style: GoogleFonts.getFont(
               'Calistoga',
               fontSize: screenSize.width * 0.09* 0.8,
               letterSpacing: screenSize.width * 0.012,
               fontWeight: FontWeight.bold,
               color: Colors.white,
             ),
           ),
         ),
     ) ,
      Align(
        alignment: Alignment.topRight,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'SCORE: $score',
            style: GoogleFonts.getFont(
              'Calistoga',
              fontSize: screenSize.width*0.05*0.8,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              letterSpacing: screenSize.width * 0.005,
            ),
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
    MaterialPageRoute(builder: (context) =>Homepage()),
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
    MaterialPageRoute(builder: (context) => Homepage()),
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
          left:screenSize.width*0.26,
          top:screenSize.height*0.17,

          child:Container(
            width: screenSize.width * 0.45,
            height: screenSize.height * 0.45,
            decoration:BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/bigjar.png'),
              )
            )
          )
    ),
      Positioned(
        left: screenSize.width * 0.02,
        top: screenSize.height * 0.65,
        child: SizedBox(
          width: screenSize.width,
          height: screenSize.height * 0.3,
          child: Text(
            currentQuestion['question'],
            textAlign: TextAlign.center,
            style: GoogleFonts.getFont(
              'Calistoga',
              color: Colors.white,
              fontSize: screenSize.width * 0.04 * 0.8,
              letterSpacing: screenSize.width * 0.012,
              fontWeight: FontWeight.normal,
            ),
          ),
        ),
      ),
      Positioned(
        left: screenSize.width * 0.05,
        top: screenSize.height * 0.82,
        child: SizedBox(
          width: screenSize.width * 0.9,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: currentQuestion['options'].map<Widget>((option) {
              return ElevatedButton(
                onPressed: () {
                  setState(() {
                    selectedOption = option;
                  });
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor : selectedOption == option
                      ? Color(0xFFCB94FC)
                      : Colors.white
                ),
                child: Text(
                  option,
                  style: GoogleFonts.getFont(
                    'Calistoga',
                    fontSize: screenSize.width * 0.03,
                    letterSpacing: screenSize.width*0.002,
                  ),
                ),
              );
            }).toList(),
          ),
        ),
      ),
      Positioned(
        left: screenSize.width * 0.35,
        top: screenSize.height * 0.91,
        child: SizedBox(
          width: screenSize.width * 0.3,
          height: screenSize.height * 0.08,
          child: ElevatedButton(
            onPressed: selectedOption.isEmpty
                ? null
                : () {
              submitAnswer();
            },
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(50),
              ),
            ),
            child: Center(
            child: Text(
              'SUBMIT',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: screenSize.width * 0.045 * 0.8,
                letterSpacing: screenSize.width * 0.012,
                fontWeight: FontWeight.bold,
                color: Color(0xFF9361C0),
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