import 'package:flutter/material.dart';

class Workers extends StatelessWidget {
  final List<Map<String, String>> workers = [
    {"image": "assets/images/Worker.png", "title": "Rayane Moumine"},
    {"image": "assets/images/Worker2.png", "title": "Hacini Aymen"},
    {"image": "assets/images/Worker3.png", "title": "Sebti Yamena"},
  ];
  Workers({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: workers.map((worker) {
        return Container(
          width: 200,
          height: 250,
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(worker["image"]!),
              const SizedBox(height: 10.0),
              Text(
                worker["title"]!,
                style: const TextStyle(color: Colors.white, fontSize: 18),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}




/*CarouselSlider.builder(
            itemCount: workers.length,
            itemBuilder: (BuildContext context, int index, int realIndex) {
              return Container(
                padding: const EdgeInsets.all(4.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                        width: 100,
                        height: 100,
                        child: Image.asset(
                          workers[index]["image"]!,
                          fit: BoxFit.fill,
                        )),
                    Text(
                      workers[index]["title"]!,
                      style: const TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              );
            },
            options: CarouselOptions(
              height: 200,
              scrollDirection: Axis.horizontal,
            ))*/