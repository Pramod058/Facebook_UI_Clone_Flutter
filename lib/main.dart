import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:facebook_clone/screens/landing_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const facebook_clone());
}

class facebook_clone extends StatelessWidget {
  const facebook_clone({Key? key}) : super(key: key);
  static const IconData facebook =
      IconData(0xe255, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AnimatedSplashScreen(
        duration: 2000,
        splash: Center(
            child: Icon(
          Icons.facebook,
          size: 100,
          color: Colors.blue,
        )),
        nextScreen: landing_page(),
        splashTransition: SplashTransition.fadeTransition,
      ),
    );
  }
}