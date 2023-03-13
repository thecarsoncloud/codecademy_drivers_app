import 'dart:async';
import 'package:codecademy_drivers_app/authentication/signup_screen.dart';
import 'package:flutter/material.dart';
import 'package:codecademy_drivers_app/mainScreens/main_screen.dart';

class MySplashScreen extends StatefulWidget {
  const MySplashScreen({Key? key}) : super(key: key);

  @override
  State<MySplashScreen> createState() => _MySplashScreenState();
}

class _MySplashScreenState extends State<MySplashScreen> {
  startTimer() {
    Timer(const Duration(seconds: 3), () async {
      //send user to home screen
      Navigator.push(context, MaterialPageRoute(builder: (c) => SignUpScreen()));
    });
  }

  @override
  void initState() {
    super.initState();

    startTimer();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
        color: Colors.black,
        child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Image.asset('images/Ciellie.png'),

                const SizedBox(height: 10,),

                const Text(
                  "",
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            )));
  }
}
