import 'package:flutter/material.dart';
// import 'package:bikeloca/welcome.dart';
// import 'package:bikeloca/fireLogin.dart';
import 'package:bikeloca/authentication.dart';
import 'package:bikeloca/root_page.dart';

void main() {
  runApp(MaterialApp(
    title: 'BikeSites',
    home: new RootPage(auth: new Auth()),
    // home: LoginSignUpPage(),
    // home: WelcomePage(),
    debugShowCheckedModeBanner: false,
  ));
}