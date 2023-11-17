import 'package:engigen/skills.dart';
import 'package:engigen/workers.dart';
import 'package:flutter/material.dart';

class HireTalents extends StatelessWidget {
  const HireTalents({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Trending Skills:",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Skills(),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Featured Talents:",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Workers(),
        ),
      ],
    );
  }
}
