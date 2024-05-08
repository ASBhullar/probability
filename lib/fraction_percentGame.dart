import 'package:flutter/material.dart';
import 'package:confetti/confetti.dart';

class FractionGame extends StatefulWidget {
  @override
  _FractionGameState createState() => _FractionGameState();
}

class _FractionGameState extends State<FractionGame> {
  late ConfettiController _confettiController;
  List<List<int>> _fractions = [
    [1, 2],   // 1/2
    [1, 10],  // 1/10
    [3, 4],   // 3/4
    [1, 4],   // 1/4
    [4, 10],  // 4/10
  ];
  int _currentFractionIndex = 0;
  int _attempts = 0;
  bool _showConfetti = false;
  bool _isCorrect = false;
  bool _showExplanation = false; // Added to control when to show the correct explanation
  String _userInput = '';
  String _fractionExplanation = '';
  int _score = 0;
  bool _submitButtonEnabled = false; // Added to control button enabled/disabled state

  @override
  void initState() {
    super.initState();
    _confettiController = ConfettiController(duration: Duration(seconds: 2));
    _generateFractionExplanation();
  }

  @override
  void dispose() {
    _confettiController.dispose();
    super.dispose();
  }

  void _generateFractionExplanation() {
    int numerator = _fractions[_currentFractionIndex][0];
    int denominator = _fractions[_currentFractionIndex][1];
    double probability = numerator / denominator;
    int percentage = (probability * 100).toInt();

    _fractionExplanation =
    '${numerator}/${denominator} * 100 = ${percentage}%';
  }

  void _checkAnswer() {
    if (_userInput.isEmpty) return;

    int numerator = _fractions[_currentFractionIndex][0];
    int denominator = _fractions[_currentFractionIndex][1];
    double correctPercentage = (numerator / denominator) * 100;
    double userPercentage = double.tryParse(_userInput) ?? 0;

    // Define a threshold for comparison
    double threshold = 0.01; // You can adjust this threshold as needed

    if ((userPercentage - correctPercentage).abs() <= threshold) {
      setState(() {
        _isCorrect = true;
        _showConfetti = true;
        _confettiController.play();
        _score += 10; // Increase score by 10 for a correct answer
        _submitButtonEnabled = false; // Disable submit button
      });
    } else {
      setState(() {
        _isCorrect = false;
        _attempts++;
        if (_attempts >= 3) {
          _showExplanation = true;
          _attempts = 3; // Limit attempts to 3 for a particular question
        }
      });
    }
  }

  void _nextFraction() {
    setState(() {
      _currentFractionIndex = (_currentFractionIndex + 1) % _fractions.length;
      _userInput = '';
      _showConfetti = false;
      _isCorrect = false;
      _showExplanation = false;
      _attempts = 0; // Reset attempts for the next question
      _generateFractionExplanation();
      _submitButtonEnabled = false; // Disable submit button for the next question
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Express Probability with Percentage',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
            letterSpacing: 1.5,
            color:Colors.white,
          ),
        ),
        backgroundColor: Color(0xFF78290F), // Background color for app bar
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Score: $_score',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color:Colors.white,

              ),
            ),
          ),
        ],
      ),
      body: Container(
        color: Colors.white70, // Background color for the page
        child: SingleChildScrollView(
          padding: EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'QUESTION ${_currentFractionIndex + 1}',
                style: TextStyle(
                  fontSize: 30.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF78290F),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              Text(
                'The probability of occurrence of an event is ${_fractions[_currentFractionIndex][0]}/${_fractions[_currentFractionIndex][1]}. There is a _____% chance that the event will happen. Calculate the probability in %.',
                style: TextStyle(
                  fontSize: 24.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 30.0),
              TextField(
                keyboardType: TextInputType.number,
                onChanged: (value) {
                  setState(() {
                    _userInput = value;
                    _submitButtonEnabled =
                        value.isNotEmpty; // Enable submit button if value is not empty
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Enter the %',
                  border: OutlineInputBorder(),
                ),
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold), // Bolder text for input
              ),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed:
                _submitButtonEnabled ? _checkAnswer : null, // Only enable if the input is not empty
                child: Text(
                  'SUBMIT',
                  style: TextStyle(fontSize: 24.0, color: Colors.white), // Button text color
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return states.contains(MaterialState.disabled)
                            ? Colors.grey // Disabled button color
                            : Color(0xFF78290F); // Enabled button color
                      }),
                ),
              ),
              SizedBox(height: 30.0),
              Visibility(
                visible: _showConfetti,
                child: ConfettiWidget(
                  confettiController: _confettiController,
                  blastDirectionality: BlastDirectionality.explosive,
                  shouldLoop: false,
                ),
              ),
              SizedBox(height: 30.0),
              _isCorrect || _showExplanation || (_attempts >= 3)
                  ? Card(
                color: Colors.lightBlueAccent,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    _fractionExplanation,
                    style: TextStyle(fontSize: 20.0),
                    textAlign: TextAlign.center,
                  ),
                ),
              )
                  : SizedBox(),
              SizedBox(height: 30.0),
              _isCorrect
                  ? Text(
                'Correct Answer!',
                style: TextStyle(
                  color: Colors.green,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              )
                  : _attempts > 0
                  ? Text(
                'Attempts left: ${3 - _attempts}',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ),
              )
                  : SizedBox(),
              SizedBox(height: 30.0),
              ElevatedButton(
                onPressed: _nextFraction,
                child: Text(
                  'NEXT',
                  style: TextStyle(fontSize: 24.0, color: Colors.white), // Button text color
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                        return states.contains(MaterialState.disabled)
                            ? Colors.grey // Disabled button color
                            : Color(0xFF78290F); // Enabled button color
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
