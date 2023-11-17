import 'package:engigen/investors.dart';
import 'package:engigen/needs.dart';
import 'package:flutter/material.dart';

class FindInvestors extends StatelessWidget {
  const FindInvestors({super.key});

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
              "Trending Needs:",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Needs(),
        ),
        const SizedBox(
          height: 10,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 12.0),
          child: Row(mainAxisAlignment: MainAxisAlignment.start, children: [
            Text(
              "Featured Investors",
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.bold),
            )
          ]),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Investors(),
        ),
      ],
    );
  }
}
