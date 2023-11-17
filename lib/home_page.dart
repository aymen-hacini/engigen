import 'package:engigen/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar:
          BottomNavigationBar(backgroundColor: Colors.black, items: [
        const BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.home,
              size: 40,
              color: Color(0xffFFC700),
            )),
        BottomNavigationBarItem(
            label: "", icon: SvgPicture.asset(hublinkimage)),
        const BottomNavigationBarItem(
            label: "",
            icon: Icon(
              Icons.person,
              size: 40,
              color: Color(0xffFFC700),
            )),
      ]),
      appBar: AppBar(
        flexibleSpace: Container(
            decoration: const BoxDecoration(
                gradient: LinearGradient(
          begin: Alignment(0.00, -1.00),
          end: Alignment(0, 1),
          colors: [Color(0xFF2B3481), Color(0xff2B3481)],
        ))),
        title: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: SvgPicture.asset(Logohor),
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(
              Icons.search_rounded,
              size: 30,
              color: Color(0xffD78F09),
            ),
          )
        ],
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: const Alignment(0.00, -1.00),
            end: const Alignment(0, 1),
            colors: [
              const Color(0xFF2B3481),
              const Color.fromARGB(255, 0, 0, 0).withOpacity(1)
            ],
          ),
        ),
        child:
            ListView(physics: const BouncingScrollPhysics(), children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 360,
                height: 120,
                padding: const EdgeInsets.symmetric(horizontal: 12),
                clipBehavior: Clip.antiAlias,
                decoration: const BoxDecoration(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 336,
                      height: 120,
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: ShapeDecoration(
                        gradient: const LinearGradient(
                          begin: Alignment(0.00, -1.00),
                          end: Alignment(0, 1),
                          colors: [
                            Color(0xFF2B3481),
                            Color.fromARGB(255, 35, 42, 106)
                          ],
                        ),
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6)),
                      ),
                      child: const Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 304,
                            height: 16,
                            child: Text(
                              'The Way to Start Up',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Color(0xEEEEEEEE),
                                fontSize: 30,
                                fontFamily: 'Mukta',
                                fontWeight: FontWeight.w500,
                                height: 0.09,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 15),
                child: Section_Title(
                  title: "Services",
                ),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    ServiceCard(
                      imagename: financeimage,
                      title: 'Finance',
                      Desc: "Get the financial status",
                    ),
                    ServiceCard(
                        imagename: hrimage,
                        title: "Human Resources",
                        Desc: "Organise HR Harmony"),
                    ServiceCard(
                        imagename: consultimage,
                        title: "Consultation",
                        Desc: "Schedule a meeting")
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(15),
                child: Section_Title(title: "Partners Reviews"),
              ),
              const SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 10),
                      child: partner_review_card(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 10),
                      child: partner_review_card(),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 5, left: 10),
                      child: partner_review_card(),
                    ),
                  ],
                ),
              ),
              const partner_review_card()
            ],
          ),
        ]),
      ),
    );
  }
}

class partner_review_card extends StatelessWidget {
  const partner_review_card({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 200,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 15.0,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Text(
                  "Jane Smith",
                  style: TextStyle(color: Color(0xffeeeeee)),
                ),
              ),
              Spacer(),
              RatingSys()
            ],
          ),
          Partner_Review(
            review:
                "This is a great app ! I found a ton of investors and great talent",
          )
        ],
      ),
    );
  }
}

class Partner_Review extends StatelessWidget {
  final String review;
  const Partner_Review({
    super.key,
    required this.review,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        review,
        style: const TextStyle(
            fontFamily: "Mukta",
            fontWeight: FontWeight.w400,
            color: Color(0xffeeeeee)),
      ),
    );
  }
}

class Section_Title extends StatelessWidget {
  final String title;
  const Section_Title({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(title,
            style: const TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              fontFamily: 'Mukta',
              color: Color(0xffeeeeee),
            )),
        const Spacer(),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: const Color(0x002B3481),
              padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 20),
              shape: RoundedRectangleBorder(
                  side: const BorderSide(width: 1, color: Color(0xffeeeeee)),
                  borderRadius: BorderRadius.circular(5))),
          onPressed: () {},
          child: const Text("View All",
              style: TextStyle(
                fontSize: 20,
                fontFamily: "Mukta",
                fontWeight: FontWeight.w300,
                color: Color(0xffeeeeee),
              )),
        )
      ],
    );
  }
}

class ServiceCard extends StatelessWidget {
  final String imagename;
  final String title;
  final String Desc;
  const ServiceCard({
    super.key,
    required this.imagename,
    required this.title,
    required this.Desc,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SizedBox(
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 8),
            child: SizedBox(
              height: 150,
              width: 150,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  imagename,
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 4),
            child: Text(
              title,
              style: const TextStyle(
                  fontFamily: "Mekta",
                  fontWeight: FontWeight.w600,
                  fontSize: 14,
                  color: Color(0xffeeeeee)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3),
            child: Text(
              Desc,
              style: const TextStyle(
                  fontFamily: "Mekta",
                  fontWeight: FontWeight.w400,
                  fontSize: 12,
                  color: Color(0xffeeeeee)),
            ),
          ),
        ]),
      ),
    );
  }
}

class RatingSys extends StatelessWidget {
  const RatingSys({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Icon(
          Icons.star,
          size: 10,
          color: Color(0xffFFC700),
        ),
        Icon(
          Icons.star,
          size: 10,
          color: Color(0xffFFC700),
        ),
        Icon(
          Icons.star,
          size: 10,
          color: Color(0xffFFC700),
        ),
        Icon(
          Icons.star,
          size: 10,
          color: Color(0xffFFC700),
        ),
        Icon(
          Icons.star_border,
          size: 10,
          color: Color(0xffFFC700),
        ),
      ],
    );
  }
}
