import 'package:flutter/material.dart';
import 'fraction_percentGame.dart';

class LearnFractionToPercentage extends StatefulWidget {
  @override
  _LearnFractionToPercentageState createState() =>
      _LearnFractionToPercentageState();
}

class _LearnFractionToPercentageState extends State<LearnFractionToPercentage> {
  TextEditingController numeratorController = TextEditingController();
  TextEditingController denominatorController = TextEditingController();
  String percentage = '';
  String errorMessage = '';
  String calculationExplanation = '';
  bool showCalculation = false;
  bool isFlipped = false;
  List<String> likelihoodOptions = [
    "Impossible",
    "Less Likely",
    "Equal Chance",
    "More Likely",
    "Certain"
  ];
  String selectedLikelihood = '';
  String result = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Using Percentages % for Probability',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color(0xFF003049),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              child: _buildProbabilityScaleSection(),
            ),
            SizedBox(height: 20.0),
            Container(
              width: MediaQuery.of(context).size.width,
              child: _buildInterpretingFractionsSection(),
            ),
            SizedBox(height: 20.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Container(
                    child: _buildUserInputSection(),
                  ),
                ),
                SizedBox(width: 20.0),
                Expanded(
                  child: Visibility(
                    visible: showCalculation,
                    child: Container(
                      child: _buildCalculationResultSection(),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 20.0),
            Container(
              width: MediaQuery.of(context).size.width,
              child: _buildIdentifyLikelihoodSection(),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Navigate to the next page here
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FractionGame()),
          );
        },

        child: Icon(Icons.arrow_forward,color: Colors.white),

        backgroundColor: Color(0xFF003049),
      ),
      backgroundColor: Color(0xFFF4EAD3),
    );
  }

  Widget _buildProbabilityScaleSection() {
    return Card(
      elevation: 3.0,
      color:Color(0xFFFFE194),
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Build your probability intuition with Percentages %',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
                color: Color(0xFF003049),
              ),
            ),
            SizedBox(height: 10.0),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildProbabilityCard(
                    title: '0%',
                    description: 'Impossible',
                    icon: Icons.close,
                  ),
                  _buildProbabilityCard(
                    title: 'Between 0% & 50%',
                    description: 'Less Likely',
                    icon: Icons.sentiment_dissatisfied,
                  ),
                  _buildProbabilityCard(
                    title: 'Equal to 50%',
                    description: 'Equal Chance',
                    icon: Icons.radio_button_unchecked,
                  ),
                  _buildProbabilityCard(
                    title: 'Less than 100%',
                    description: 'More Likely',
                    icon: Icons.sentiment_satisfied,
                  ),
                  _buildProbabilityCard(
                    title: '100%',
                    description: 'Certain',
                    icon: Icons.check,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildProbabilityCard({
    required String title,
    required String description,
    required IconData icon,
  }) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 30.0,
            color: Colors.blue,
          ),
          SizedBox(height: 10.0),
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF003049),
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Color(0xFF003049),
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }

  Widget _buildInterpretingFractionsSection() {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              setState(() {
                isFlipped = !isFlipped;
              });
            },
            child: Card(
              elevation: 3.0,
              color: Color(0xFF003049), // Background color for flip card
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      isFlipped
                          ? 'Percentage = (Numerator / Denominator) * 100 \n i.e Multiply the Probability Fraction by 100 '
                          : 'View FORMULA!',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildUserInputSection() {
    return Align(
      alignment: Alignment.center,
      child: Card(
        elevation: 3.0,
        color:Color(0xFFFFE194),
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Insert a Probability Fraction',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003049),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Insert Total Favorable Outcomes (Numerator)',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF003049),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: numeratorController,
                    keyboardType: TextInputType.number,
                    onChanged: (_) => setState(() => showCalculation = false),
                  ),
                  SizedBox(height: 20.0),
                  Text(
                    'Insert Total Possible Outcomes (Denominator):',
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Color(0xFF003049),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10.0),
                  TextField(
                    controller: denominatorController,
                    keyboardType: TextInputType.number,
                    onChanged: (_) => setState(() => showCalculation = false),
                  ),
                  SizedBox(height: 20.0),
                  Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Color(0xFF003049), // Background color for button
                      borderRadius: BorderRadius.circular(8.0), // Rounded corners for button
                    ),
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          errorMessage = _validateFraction();
                          if (errorMessage.isEmpty) {
                            calculationExplanation = _getCalculationExplanation();
                            percentage = _calculatePercentage();
                            showCalculation = true;
                          } else {
                            calculationExplanation = '';
                            percentage = '';
                          }
                        });
                      },
                      child: Text(
                        'View % chance',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 10.0),
                  Visibility(
                    visible: errorMessage.isNotEmpty,
                    child: Text(
                      errorMessage,
                      style: TextStyle(fontSize: 16.0, color: Colors.red),
                    ),
                  ),
                  SizedBox(height: 20.0),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCalculationResultSection() {
    return Card(
      color:Color(0xFF003049),
      elevation: 3.0,
      margin: EdgeInsets.all(10.0),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Visibility(
          visible: showCalculation && calculationExplanation.isNotEmpty,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Calculation Explanation',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color:  Colors.white,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                calculationExplanation,
                style: TextStyle(
                  fontSize: 20.0,
                  color:  Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
              Text(
                'Percentage:',
                style: TextStyle(
                  fontSize: 20.0,
                  color:  Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                percentage + "\n\nThere is a " + percentage + " chance!!",
                style: TextStyle(
                  fontSize: 25.0,
                  color:  Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20.0),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildIdentifyLikelihoodSection() {
    return Container(
      width: double.infinity,

      child: Card(
        elevation: 3.0,
        color:Color(0xFFFFE194),
        margin: EdgeInsets.all(10.0),
        child: Padding(
          padding: const EdgeInsets.all(15.0),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Based on the calculated %, how likely is the occurrence of the event?',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF003049),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 10.0),
              ToggleButtons(
                children: likelihoodOptions
                    .map(
                      (option) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 14.0),
                    child: Text(
                      option,
                      style: TextStyle(
                        color: Color(0xFF003049),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                )
                    .toList(),
                isSelected: likelihoodOptions
                    .map((_) => selectedLikelihood == _)
                    .toList(),
                onPressed: (index) {
                  setState(() {
                    selectedLikelihood = likelihoodOptions[index];
                    result = _checkAnswer();
                  });
                },
              ),
              SizedBox(height: 20.0),
              Visibility(
                visible: result.isNotEmpty,
                child: Text(
                  result,
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: result.startsWith('Correct') ? Colors.green : Colors.red,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _validateFraction() {
    String numerator = numeratorController.text.trim();
    String denominator = denominatorController.text.trim();
    if (numerator.isEmpty || denominator.isEmpty) {
      return 'Please enter both numerator and denominator';
    }
    int denominatorValue = int.tryParse(denominator) ?? 0;
    if (denominatorValue == 0) {
      return 'Denominator cannot be zero';
    }
    return '';
  }

  String _getCalculationExplanation() {
    int numeratorValue = int.tryParse(numeratorController.text.trim()) ?? 0;
    int denominatorValue = int.tryParse(denominatorController.text.trim()) ?? 0;
    double result = (numeratorValue / denominatorValue) * 100;
    return '$numeratorValue / $denominatorValue * 100 = ${result.toStringAsFixed(2)}%';
  }

  String _calculatePercentage() {
    int numeratorValue = int.tryParse(numeratorController.text.trim()) ?? 0;
    int denominatorValue = int.tryParse(denominatorController.text.trim()) ?? 0;
    double result = (numeratorValue / denominatorValue) * 100;
    return result.toStringAsFixed(2) + '%';
  }

  String _checkAnswer() {
    if (selectedLikelihood.isEmpty) {
      return '';
    }
    double calculatedPercentage = double.tryParse(percentage.replaceFirst('%', '')) ?? 0.0;
    if (calculatedPercentage == 0 && selectedLikelihood == 'Impossible') {
      return 'Correct Answer';
    } else if (calculatedPercentage > 0 && calculatedPercentage < 50 && selectedLikelihood == 'Less Likely') {
      return 'Correct Answer';
    } else if (calculatedPercentage == 50 && selectedLikelihood == 'Equal Chance') {
      return 'Correct Answer';
    } else if (calculatedPercentage > 50 && calculatedPercentage < 100 && selectedLikelihood == 'More Likely') {
      return 'Correct Answer';
    } else if (calculatedPercentage == 100 && selectedLikelihood == 'Certain') {
      return 'Correct Answer';
    } else {
      return 'Incorrect Answer, Please try again';
    }
  }
}



