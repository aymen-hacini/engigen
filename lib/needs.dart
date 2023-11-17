import 'package:flutter/material.dart';

class Needs extends StatelessWidget {
  final List<Map<String, String>> needs = [
    {"images": "assets/images/budget.png", "title": "Financial Capital"},
    {
      "images": "assets/images/flexibility.png",
      "title": "Flexibility & \n Patience"
    },
    {"images": "assets/images/selection.png", "title": "Risk Taking"},
  ];
  Needs({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: needs.map((need) {
        return Container(
            width: 200,
            height: 80,
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.white),
                borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  SizedBox(
                      width: 30,
                      height: 30,
                      child: Image.asset(need["images"]!)),
                  const SizedBox(
                    width: 15,
                  ),
                  Text(
                    need["title"]!,
                    style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w300),
                  ),
                ]),
              ),
            ));
      }).toList(),
    );
  }
}
