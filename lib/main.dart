<<<<<<< HEAD
<<<<<<< HEAD
import 'package:engigen/LinkingHub/link_hub.dart';
=======
=======
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:engigen/Auth/company_profile.dart';
>>>>>>> c7619a56a8179685fffdd19376817b34b3cb96d1
import 'package:engigen/Auth/signup_page.dart';
>>>>>>> 6d89535999140e207b0ea94bf1220f564fc84b33

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
<<<<<<< HEAD
    return const MaterialApp(
      home: LinkedHub(),
      debugShowCheckedModeBanner: false,
    );
=======
    return MaterialApp(title: 'Engigen App', home: SignupPage());
>>>>>>> 6d89535999140e207b0ea94bf1220f564fc84b33
  }
}
