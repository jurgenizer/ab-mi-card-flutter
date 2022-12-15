import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Colors.teal, Colors.teal.shade900],
            )),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 50.0,
                  backgroundColor: Colors.white,
                  backgroundImage: AssetImage('images/male.png'),
                ),
                Text(
                  'Jurgen Geitner',
                  style: TextStyle(
                      fontFamily: 'RedHatDisplay',
                      fontSize: 34.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  'ALL-PLATFORM DEVELOPER',
                  style: TextStyle(
                      fontFamily: 'Source Sans Pro',
                      fontSize: 17.0,
                      letterSpacing: 2.0,
                      color: Colors.teal[100],
                      fontWeight: FontWeight.normal),
                ),
                SizedBox(
                  width: 180.0,
                  height: 18,
                  child: Divider(
                    color: Colors.teal.shade100,
                  ),
                ),
                // phone
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+27 082 123 4567',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
                // email
                Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.email,
                      color: Colors.teal,
                    ),
                    title: Text(
                      'jurgen@geitner.com',
                      style: TextStyle(
                        fontFamily: 'Source Sans Pro',
                        fontSize: 20.0,
                        color: Colors.teal.shade900,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
