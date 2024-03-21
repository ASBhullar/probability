import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:probability/home_page.dart';
class ColorSelectSolve extends StatefulWidget {
  const ColorSelectSolve({Key? key}) : super(key: key);

  @override
  _ColorSelectSolveState createState() => _ColorSelectSolveState();
}

class _ColorSelectSolveState extends State<ColorSelectSolve> {
  String _selectedOption = '';
  String _correctOption = '1/4';

  void _handleOptionChange(String value) {
    setState(() {
      _selectedOption = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          stops: [0.0, 1.0],
          colors: [
            Color(0xFF2B63D1),
            Color(0xFF2E749B),
          ],
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            'COLOR SELECT PROBABILITY',
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontWeight: FontWeight.bold,
              fontSize: 32,
            ),
            textAlign: TextAlign.center,
          ),
          centerTitle: true,
        ),
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset('assets/images/thinking2.gif', width: 550), // New GIF image on the left
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Image.asset('assets/images/color.gif', fit: BoxFit.cover),
                  SizedBox(height: 50),
                  _buildQuestionCard(),
                  SizedBox(height: 50),
                  _buildOptionRows(),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          // Handle answer
                          String message = _selectedOption == _correctOption
                              ? 'Correct Answer!'
                              : 'Wrong Answer!';
                          showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                title: Text('Result'),
                                content: Text(message),
                                actions: <Widget>[
                                  TextButton(
                                    child: Text('OK'),
                                    onPressed: () {
                                      Navigator.of(context).pop();
                                    },
                                  ),
                                ],
                              );
                            },
                          );
                        },
                        child: Text(
                          'ANSWER',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.orangeAccent,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18),
                        ),
                      ),
                      ElevatedButton(
                      onPressed: () {
                      // Handle hint
                      showDialog(
                      context: context,
                      builder: (BuildContext context) {
                      return AlertDialog(
                      title: Text('Hint'),
                      content: Text('Count total number of colors and count the number of colors to be selected!'),
                      actions: <Widget>[
                      TextButton(
                      child: Text('OK'),
                      onPressed: () {
                      Navigator.of(context).pop();
                      },
                      ),
                      ],
                      );
                      },
                      );
                      },
                      child: Text(
                      'HINT',
                      style: TextStyle(
                      color: Colors.white, // Text color
                      ),
                      ),
                      style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.deepPurple,
                      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                      textStyle: TextStyle(fontSize: 18),
                      ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          // Handle next
                        },
                        child: Text(
                          'NEXT',
                          style: TextStyle(
                            color: Colors.white, // Text color
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.redAccent,
                          padding: EdgeInsets.symmetric(
                              horizontal: 30, vertical: 15),
                          textStyle: TextStyle(fontSize: 18),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              top: 16.0,
              right: 16.0,
              child: OutlinedButton(
                child: Text('haz clic en mí para español',
                    style: TextStyle(color: Colors.white)),
                onPressed: () {
                  // Handle translation to Spanish
                },
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    ],
    ),
    ),
    );
  }

  Widget _buildQuestionCard() {
    return Container(
      padding: const EdgeInsets.all(16.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text(
        'What is the probability of selecting green color from the circle?',
        style: GoogleFonts.openSans(
          fontSize: 18.0,
          color: Colors.white,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Widget _buildOptionRows() {
    var options = ['1/4', '2/4', '3/4', '4/4'];
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildOption(options[0]),
            SizedBox(width: 4),
            _buildOption(options[1]),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildOption(options[2]),
            SizedBox(width: 4),
            _buildOption(options[3]),
          ],
        ),
      ],
    );
  }

  Widget _buildOption(String option) {
    return Container(
      width: 200,
      padding: EdgeInsets.symmetric(horizontal: 1.0, vertical: 1.0),
      margin: EdgeInsets.symmetric(vertical: 2.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.white, width: 2.0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Center(
        child: ListTile(
          contentPadding: EdgeInsets.symmetric(horizontal: 2.0),
          title: Text(
            option,
            style: GoogleFonts.openSans(
              color: Colors.white,
              fontSize: 18.0,
            ),
            textAlign: TextAlign.center,
          ),
          leading: Radio<String>(
            value: option,
            groupValue: _selectedOption,
            onChanged: (value) {
              if (value != null) {
                _handleOptionChange(value);
              }
            },
            activeColor: Colors.white,
          ),
        ),
      ),
    );
  }

  void main() {
    runApp(MaterialApp(
      home: ColorSelectSolve(),
      theme: ThemeData(
        textTheme: GoogleFonts.openSansTextTheme(),
      ),
      routes: {
        '/': (context) => ColorSelectSolve(),
        '/home': (context) => Homepage(),
      },
    ));
  }
}