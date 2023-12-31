import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:crud_operations/Screens/Auth/loginPage.dart';
import 'package:crud_operations/Screens/home.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:crud_operations/Screens/splash_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.deepPurple,
        ),
        home: SplashScreen());
  }
}
