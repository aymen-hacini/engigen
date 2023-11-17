import 'package:engigen/workers.dart';
import 'package:flutter/material.dart';

class LinkedHub extends StatefulWidget {
  const LinkedHub({super.key});

  @override
  State<LinkedHub> createState() => _LinkedHubState();
}

class _LinkedHubState extends State<LinkedHub> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF2B3481), Colors.black],
          ),
        ),
        child: SingleChildScrollView(
          child: Workers(),
        ),
      ),
    );
  }
}
