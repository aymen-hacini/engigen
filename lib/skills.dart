import 'package:flutter/material.dart';

class Skills extends StatelessWidget {
  final List<Map<String, String>> skills = [
    {"icon": "🖥️", "title": "Web Developer"},
    {"icon": "🎨", "title": "UI Designer"},
    {"icon": "📱", "title": "Mobile Developer"},
  ];
  Skills({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: skills.map((skill) {
        return Container(
            width: 200,
            height: 80,
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text(
                  skill["icon"]!,
                  style: const TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w300),
                ),
                const SizedBox(
                  width: 7,
                ),
                Text(
                  skill["title"]!,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.w300),
                ),
              ]),
            ));
      }).toList(),
    );
  }
}
