import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engigen/Auth/login_page.dart';
import 'package:engigen/Auth/signup_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'firebase_options.dart';

void main() async {
  //Firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  //Running the root of the app hi rayane

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Engigen App', home: LoginPage());
  }
}
