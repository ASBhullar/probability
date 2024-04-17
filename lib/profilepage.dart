import 'dart:convert';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final String profileDataPath = 'assets/textdata/profile_data.txt';
  final Color textColor =
      const Color.fromARGB(255, 8, 0, 0); // Define text color here
  Color _getTextColor(BuildContext context) {
    final backgroundColor = Theme.of(context).backgroundColor;
    // Use a simple formula to determine contrast
    // You can adjust the threshold value for your preference
    return backgroundColor.computeLuminance() > 0.5
        ? Colors.black
        : Colors.white;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: DefaultAssetBundle.of(context).loadString(profileDataPath),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          if (snapshot.hasError) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Your Profile Details'),
              ),
              body: Center(
                child: Text('Error loading profile data'),
              ),
            );
          }

          try {
            Map<String, dynamic> profileData =
                json.decode(snapshot.data.toString());
            String userName = profileData['userName'];
            String email = profileData['email'];
            String globalScore = profileData['globalScore'];
            String probabilityScore = profileData['probabilityScore'];
            Map<String, String> languages =
                Map<String, String>.from(profileData['languages']);
            String userImage = profileData['userImage'];

            return Scaffold(
              appBar: AppBar(
                title: Text('Your Profile Details'),
                actions: [
                  IconButton(
                    icon: Icon(Icons.settings),
                    onPressed: () {
                      // Navigate to settings page
                    },
                  ),
                ],
              ),
              body: SingleChildScrollView(
                child: Container(
                  color:
                      Color.fromARGB(255, 238, 145, 69), // Set background color
                  padding: EdgeInsets.all(20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20),
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: Color.fromARGB(255, 16, 229, 229),
                        backgroundImage: AssetImage(userImage),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "Hi! $userName",
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Roboto', // Improved font family
                          color: textColor, // Set text color
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        email,
                        style: TextStyle(
                          fontSize: 18,
                          fontFamily: 'Roboto', // Improved font family
                          color: textColor, // Set text color
                        ),
                      ),
                      SizedBox(height: 20),
                      Divider(height: 2, color: Colors.grey),
                      ListTile(
                        title: Text(
                          'Global Score',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto', // Improved font family
                            color: textColor, // Set text color
                          ),
                        ),
                        trailing: Text(
                          globalScore,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto', // Improved font family
                            color: textColor, // Set text color
                          ),
                        ),
                      ),
                      Divider(height: 2, color: Colors.grey),
                      ListTile(
                        title: Text(
                          'Probability Score',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto', // Improved font family
                            color: textColor, // Set text color
                          ),
                        ),
                        trailing: Text(
                          probabilityScore,
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto', // Improved font family
                            color: textColor, // Set text color
                          ),
                        ),
                      ),
                      Divider(height: 2, color: Colors.grey),
                      ListTile(
                        title: Text(
                          'Languages',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Roboto', // Improved font family
                            color: textColor, // Set text color
                          ),
                        ),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Native: ${languages['nativeLanguage']}',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto', // Improved font family
                                color: textColor, // Set text color
                              ),
                            ),
                            Text(
                              'Learn in: ${languages['secondaryLanguage']}',
                              style: TextStyle(
                                fontSize: 18,
                                fontFamily: 'Roboto', // Improved font family
                                color: textColor, // Set text color
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                      Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            // Navigate to previous screen
                            Navigator.pop(context);
                          },
                          child: Text(
                            'Go Back',
                            style: TextStyle(
                              color: _getTextColor(
                                  context), // Set text color dynamically
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
              ),
            );
          } catch (e) {
            print('Error parsing profile data: $e');
            return Scaffold(
              appBar: AppBar(
                title: Text('Profile'),
              ),
              body: Center(
                child: Text('Error parsing profile data'),
              ),
            );
          }
        } else {
          return Scaffold(
            appBar: AppBar(
              title: Text('Profile'),
            ),
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        }
      },
    );
  }
}
