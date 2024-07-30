
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'home_page.dart';
import 'dart:math';

class Connections1 extends StatefulWidget {
  @override
  _Connections1State createState() => _Connections1State();
}

class _Connections1State extends State<Connections1> {
  
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance?.addPostFrameCallback((_) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return Dialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFC5EBAA),
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10.0,
                    offset: Offset(0, 10),
                  ),
                ],
              ),
              padding: EdgeInsets.all(16.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'FIND AND GROUP WORDS INTO FOUR PROBABILITY CATEGORIES!',
                    style: GoogleFonts.getFont(
                      'Calistoga',
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color:  Color(0xFFe2a0ff),
                      letterSpacing: 8,
                    ),
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text('OK'),
                  ),
                ],
              ),
            ),
          );
        },
      );
    });
  }


  final List<String> reasons = [
    "All Outcomes are Certain",
    "All Outcomes are Impossible",
    "All Outcomes have Probability of 1/2",
    "All Outcomes have  Probability of 1/4",
  ];

  final List<String> words = [
    "Pick 1 apple in a jar of 2 apples",
    "Pick 1 apple in a jar of 1 banana",
    "Pick all fruits in a jar",
    "Pick no fruits",
    "Pick a blue ball in a bag of 1 blue and 1 red ball",
    "Pick a blue ball in a bag of red balls",
    "Get heads when you toss a coin",
    "Pick a mango when there are 1 mango and 3 apples",
    "Not get heads or tails when you flip a coin",
    "Pick a yellow ball in a bag of yellow balls",
    "Pick a red ball in a jar of 3 blue balls and 1 red ball",
    "Pick a fruit in a bag full of balls",
    "Pick a strawberry in a jar of 1 strawberry and 1 blueberry",
    "Get even number when you roll a dice",
    "Get 2 heads when you toss the coin twice",
    "Get 2 tails when you toss the coin twice"
  ];

  final List<List<String>> connections = [
    [
      "Pick 1 apple in a jar of 2 apples",
      "Pick all fruits in a jar",
      "Pick no fruits",
      "Pick a yellow ball in a bag of yellow balls"
    ],
    [
      "Pick 1 apple in a jar of 1 banana",
      "Pick a blue ball in a bag of red balls",
      "Not get heads or tails when you flip a coin",
      "Pick a fruit in a bag full of balls"
    ],
    [
      "Pick a blue ball in a bag of 1 blue and 1 red ball",
      "Get heads when you toss a coin",
      "Pick a strawberry in a jar of 1 strawberry and 1 blueberry",
      "Get even number when you roll a dice"
    ],
    [
      "Pick a mango when there are 1 mango and 3 apples",
      "Pick a red ball in a jar of 3 blue balls and 1 red ball",
      "Get 2 heads when you toss the coin twice",
      "Get 2 tails when you toss the coin twice"
    ]
  ];

  List<String> selectedWords = [];
  List<List<String>> completedSets = [];
  List<String> reasonsForSets = [];
  List<Color> setColors = [
    Color(0xFFC1FBA4),
    Color(0xFFFFEF9F),
    Color(0xFFFFD6E0),
    Color(0xFF90F1EF)
  ];
  void showExplanationDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        backgroundColor: Color(0xFF7ae582),
        title: Center(
          child:Text(
          'HINTS',
          style: GoogleFonts.getFont(
            'Calistoga',
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Color(0xFF004e64),
          ),
        ),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'FIND ALL THE CERTAIN OUTCOMES',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
                color: Color(0xFF00a5cf)
              ),
            ),
            Text(
              'FIND ALL THE IMPOSSIBLE OUTCOMES',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
                  color: Color(0xFF00a5cf)
              ),
            ),
            Text(
              'FIND THE OUTCOMES WITH PROBABILITY OF 1/2',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
                  color: Color(0xFF00a5cf)
              ),
            ),
            Text(
              'FIND THE OUTCOMES WITH PROBABILITY OF 1/4',
              style: GoogleFonts.getFont(
                'Calistoga',
                fontSize: 16,
                  color: Color(0xFF00a5cf)
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
                color: Color(0xFF25a18e)
              ),
            ),
          ),
        ],
      ),
    );
  }


  int checkConnectionIndex(List<String> words) {
    var wordSet = Set<String>.from(words);

    for (int i = 0; i < connections.length; i++) {
      var connectionSet = Set<String>.from(connections[i]);
      if (wordSet.length == connectionSet.length && wordSet.containsAll(connectionSet)) {
        return i;
      }
    }

    return -1;
  }


  void checkConnection() {
    bool correct = false;
    for (var connection in connections) {
      if (connection.every((word) => selectedWords.contains(word))) {
        correct = true;
        break;
      }
    }

    if (correct) {
      int conIndex = checkConnectionIndex(selectedWords);
      String reason = conIndex >= 0 ? reasons[conIndex] : 'unknown reason';
      setState(() {
        completedSets.add([...selectedWords]);
        selectedWords.forEach((word) => words.remove(word));
        reasonsForSets.add(reason);
        selectedWords.clear();
      });

      // showDialog(
      //   context: context,
      //   builder: (context) => AlertDialog(
      //     title: Text(
      //       "Correct!",
      //       style: GoogleFonts.getFont(
      //         'Calistoga',
      //         fontSize: 15,
      //         fontWeight: FontWeight.bold,
      //         color: Colors.green,
      //         letterSpacing: 5,
      //       ),
      //     ),
      //     actions: [
      //       TextButton(
      //         onPressed: () {
      //           Navigator.of(context).pop();
      //         },
      //         child: Text(
      //           "OK",
      //           style: GoogleFonts.getFont(
      //             'Calistoga',
      //             fontSize: 15,
      //             fontWeight: FontWeight.bold,
      //             color: Colors.green,
      //             letterSpacing: 5,
      //           ),
      //         ),
      //       ),
      //     ],
      //   ),
      // );
    } else {
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text(
            "Try Again!",
            style: GoogleFonts.getFont(
              'Calistoga',
              fontSize: 15,
              fontWeight: FontWeight.bold,
              color: Colors.green,
              letterSpacing: 5,
            ),
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
                setState(() {
                  selectedWords.clear();
                });
              },
              child: Text(
                "OK",
                style: GoogleFonts.getFont(
                  'Calistoga',
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                  letterSpacing: 5,
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


    return Scaffold(
      body: Container(
        width: screenSize.width,
        height: screenSize.height,
        padding: EdgeInsets.all(16.0),
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF7BE28B), Color(0xFFABE66B)],
            stops: [0.1, 0.9],
            transform: GradientRotation(90 * pi / 180),
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: screenSize.width * 0.029,
              top: screenSize.height * 0.003,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.09,
                  height: screenSize.height * 0.051,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/rhomeiconblurr.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            //hint
            Positioned(
              left: screenSize.width * 0.075,
              top: screenSize.height * 0.01,
              child: GestureDetector(
                onTap: () {
                  showExplanationDialog(context);
                },
                child: Container(
                  width: screenSize.width *1.65 ,                  height: screenSize.height * 0.051,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/hint.png"),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              right: screenSize.width * 0.029,
              bottom: screenSize.height * 0.027,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
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
            Positioned(
              left: screenSize.width * 0.1,
              bottom: screenSize.height * 0.027,
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Homepage()),
                  );
                },
                child: Container(
                  width: screenSize.width * 0.1,
                  height: screenSize.height * 0.04,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/firebaseImages/backbeaf5.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
            ),
            Column(
              children: [
                if (completedSets.isNotEmpty)
            Container(
              margin: const EdgeInsets.only(top: 50.0),
               // Adjust the height based on content size
              child: Column(
                children: [
                  ...List.generate(
                    completedSets.length,
                        (index) => Container(
                          margin: EdgeInsets.all(8.0),

                      padding: EdgeInsets.all(8.0),
                          decoration: BoxDecoration(
                            color: setColors[index % setColors.length], // Background color
                            borderRadius: BorderRadius.circular(12.0), // Rounded edges
                          ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            reasonsForSets[index],
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF7fc844),
                            ),
                          ),
                          SizedBox(height: 3.0),
                          Wrap(
                            spacing: 2.0,
                            runSpacing: 2.0,
                            children: completedSets[index].map((word) => Container(
                              padding: EdgeInsets.all(5.0),
                              decoration: BoxDecoration(
                                color: Colors.black12,
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: Text(
                                word,
                                style: GoogleFonts.getFont(
                                  'Calistoga',
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            )).toList(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),


    Expanded(
    child: Padding(
    padding: EdgeInsets.only(top: screenSize.height * 0.055),
    child: Builder(
    builder: (context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    double aspectRatio;

    // Choose a reasonable width threshold, e.g., 600 pixels
    if (screenWidth <= screenHeight) {
    aspectRatio = 1.1;
    } else {
    aspectRatio = 2.2;
    }

    return GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
    crossAxisCount: 4,
    childAspectRatio: aspectRatio,
    crossAxisSpacing: 10,
    mainAxisSpacing: 10,
    ),
    itemCount: words.length,
    itemBuilder: (context, index) {
    return GestureDetector(
    onTap: () {
    setState(() {
    if (selectedWords.contains(words[index])) {
    selectedWords.remove(words[index]);
    } else {
    selectedWords.add(words[index]);
    }
    });
    },
    child: Container(
    alignment: Alignment.center,
    decoration: BoxDecoration(
    color: selectedWords.contains(words[index])
    ? Colors.lightGreen
        : Colors.green,
    borderRadius: BorderRadius.circular(10),
    ),
    child: Text(
    words[index],
    style: GoogleFonts.getFont(
    'Calistoga',
    fontSize: screenSize.width * 0.02,
    fontWeight: FontWeight.bold,
    color: Colors.white,
    ),
    textAlign: TextAlign.center,
    ),
    ),
    );
    },
    );
    },
    ),
    ),
    ),

    SizedBox(height: screenSize.height *0.002),
                ElevatedButton(
                  onPressed: () {
                    if (selectedWords.length == 4) {
                      checkConnection();
                    } else {
                      showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                          title: Text(
                            "Select 4 words",
                            style: GoogleFonts.getFont(
                              'Calistoga',
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.green,
                              letterSpacing: 5,
                            ),
                          ),
                          actions: [
                            TextButton(
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                              child: Text(
                                "OK",
                                style: GoogleFonts.getFont(
                                  'Calistoga',
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green,
                                  letterSpacing: 5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      );
                    }
                  },
                  child: Text(
                    "Check Connection",
                    style: GoogleFonts.getFont(
                      'Calistoga',
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.green,
                      letterSpacing: 5,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
