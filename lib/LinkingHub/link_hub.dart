import 'package:engigen/find_investors.dart';
import 'package:engigen/hire_talent.dart';

import 'package:flutter/material.dart';

class LinkedHub extends StatefulWidget {
  const LinkedHub({super.key});

  @override
  State<LinkedHub> createState() => _LinkedHubState();
}

class _LinkedHubState extends State<LinkedHub> {
  @override
  Widget build(BuildContext context) {
    return const linkedhubs_body();
  }
}

class linkedhubs_body extends StatelessWidget {
  const linkedhubs_body({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
      length: 2,
      child: Column(
        children: [
          TabBar(
            indicatorColor: Color(0xffD78F09),
            tabs: [
              Tab(text: 'Hire Talent'),
              Tab(text: 'Investors'),
            ],
          ),
          Expanded(
            child: TabBarView(
              children: [
                HireTalents(),
                FindInvestors(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}




/*TabBarView(children: [
              // Content for 'Hire Talent' tab
              Column(
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Trending Skills:",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                                fontWeight: FontWeight.bold),
                          )
                        ]),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Skills(),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "Featured Talents:",
                            style: TextStyle(
                                color: Colors.black,
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
              ),
              const Text("1"),
              // Content for 'Investors' tab
            ] 
                ),*/