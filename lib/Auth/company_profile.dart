import 'package:engigen/constants.dart';
import 'package:engigen/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CompanyProfile extends StatelessWidget {
  const CompanyProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: double.infinity,
        clipBehavior: Clip.antiAlias,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment(0.00, -1.00),
            end: Alignment(0, 1),
            colors: [Color(0xFF2B3481), Colors.black],
          ),
        ),
        child: ListView(children: const [
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                "Profil",
                style: TextStyle(
                    fontFamily: "Mukta",
                    fontWeight: FontWeight.bold,
                    color: Color(0xffeeeeee),
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25,
                    backgroundColor: Color(0xffeeeeee),
                    child: Icon(Icons.person),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "My Company",
                        style: TextStyle(
                            fontSize: 20,
                            color: Color(0xffeeeeee),
                            fontFamily: "Mukta",
                            fontWeight: FontWeight.w600),
                      ),
                      Text(
                        "Leading The Industry",
                        style: TextStyle(
                            color: Color(0x88eeeeee),
                            fontFamily: "Mukta",
                            fontWeight: FontWeight.w600),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: ProfileCard(
                        imagename: aboutimage,
                        title: "About",
                      ),
                    ),
                    Expanded(
                      child: ProfileCard(
                        imagename: contactimage,
                        title: "Contact",
                      ),
                    ),
                    Expanded(
                      child: ProfileCard(
                        imagename: websiteimage,
                        title: "Website",
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Expanded(
                      child: ProfileCard(
                        imagename: investimage,
                        title: "Investors",
                      ),
                    ),
                    Expanded(
                      child: ProfileCard(
                        imagename: workersimage,
                        title: "Workers",
                      ),
                    ),
                  ],
                )
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 5),
              child: Section_Title(title: "Your Work"),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
              child: Text(
                "Track your progress",
                style: TextStyle(color: Color(0x88eeeeee)),
              ),
            ),
            Row(
              children: [
                metrics_card(),
                SizedBox(
                  width: 8,
                ),
                metrics_card()
              ],
            )
          ]),
        ]));
  }
}

class metrics_card extends StatelessWidget {
  const metrics_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Container(
      height: 130,
      decoration: BoxDecoration(
          border: Border.all(color: const Color(0xffeeeeee)),
          borderRadius: BorderRadius.circular(20)),
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            "Investements Raised",
            style: TextStyle(
                color: Color(0x88eeeeee),
                fontFamily: "Mukta",
                fontSize: 18,
                fontWeight: FontWeight.w400),
          ),
          Text(
            "150000.00DA",
            style: TextStyle(
                color: Color(0xffeeeeee),
                fontFamily: "Mukta",
                fontSize: 22,
                fontWeight: FontWeight.w600),
          ),
          Text(
            "+25%",
            style: TextStyle(
                color: Color(0xffeeeeee),
                fontFamily: "Mukta",
                fontSize: 15,
                fontWeight: FontWeight.w300),
          ),
        ]),
      ),
    ));
  }
}

class ProfileCard extends StatelessWidget {
  final String title;
  final String imagename;
  const ProfileCard({
    super.key,
    required this.title,
    required this.imagename,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: const Color(0x88eeeeee),
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: 150,
          height: 100,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              border: Border.all(width: 1, color: const Color(0xffeeeeee))),
          child: Column(children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(imagename),
              ),
            ),
            Text(
              title,
              style: const TextStyle(
                  color: Color(0xffeeeeee), fontFamily: "mukta", fontSize: 16),
            )
          ]),
        ),
      ),
    );
  }
}
