import 'package:flutter/material.dart';

class Investors extends StatelessWidget {
  final List<Map<String, String>> investors = [
    {
      "images": "assets/images/Chiali.png",
    },
    {
      "images": "assets/images/sonatrach.png",
    },
    {
      "images": "assets/images/Comp.png",
    },
  ];
  Investors({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: investors.map((investor) {
        return CircleAvatar(
            backgroundColor: Colors.white,
            radius: 100,
            child: ClipOval(
                child: Image.asset(
              investor["images"]!,
              width: 200,
              height: 200,
            )));
      }).toList(),
    );
  }
}




/*investors.map((investor) {
          return Container(
            width: 100.0, // Set the desired width of the circle
            height: 100.0, // Set the desired height of the circle
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.white,
            ),
            child: Image.asset(need["images"]!),
          );
        })*/