import 'package:flutter/material.dart';
// import './login.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.all(36.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                Text("Welcome to BikeLocation APP"),
                SizedBox(width: 25),
                SizedBox(
                  child: Image.asset(
                    "assets/images/flutter-icon.png",
                    fit: BoxFit.contain,
                  ),
                ),
                SizedBox(width: 25),
                Row(
                  children: <Widget>[
                    Expanded(child: RaisedButton(
                        child: Text('Sign in'),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => LoginPage()),
                          // );
                        },
                      ),
                    ),
                    SizedBox(width: 25),
                    Expanded(child: RaisedButton(
                        child: Text('Sign up'),
                        onPressed: () {
                          // Navigator.push(
                          //   context,
                          //   MaterialPageRoute(builder: (context) => LoginPage()),
                          // );
                        },
                      ),
                    )
                  ],
                ),
                
              ],
            ),
          ),
        ),
      ),
    );
  }
}