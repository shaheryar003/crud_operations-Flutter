import 'dart:async';

import 'package:crud_operations/Screens/Auth/loginPage.dart';
import 'package:crud_operations/Screens/home.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final auth = FirebaseAuth.instance;

  Timer? _timer;

  @override
  void initState() {
    final user = auth.currentUser;
    if (user != null) {
      _timer = Timer(const Duration(seconds: 2), () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => HomePage()));
      });
    } else {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => LoginScreen()));
    }

    // TODO: implement initState
    super.initState();
  }

  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Center(
            child: Icon(
          Icons.fire_truck,
          size: 50,
        )),
      ),
    );
  }
}
