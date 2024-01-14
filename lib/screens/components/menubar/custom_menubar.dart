import 'package:anirudhs_portfolio/screens/components/menubar/indicator.dart';
import 'package:anirudhs_portfolio/screens/components/project%20screen/photo_cards.dart';
import 'package:anirudhs_portfolio/screens/components/project%20screen/project_cards.dart';
import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:flutter/material.dart';

class MyMenuBar extends StatefulWidget {
  MyMenuBar({super.key});

  @override
  State<MyMenuBar> createState() => _MyMenuBarState();
}

class _MyMenuBarState extends State<MyMenuBar> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController _tabcontroller = TabController(length: 2, vsync: this);
    return Column(
      children: [
        Container(
          child: TabBar(
            labelColor: primaryColor,
            unselectedLabelColor: Colors.grey,
            controller: _tabcontroller,
            indicator: CircleTabIndicator(color: primaryColor, radius: 5),
            tabs: [
              Tab(
                icon: Icon(Icons.laptop_chromebook),
                text: "Coding Portfolio",
              ),
              Tab(
                icon: Icon(Icons.camera_alt),
                text: "Photography Portfolio",
              ),
            ],
          ),
        ),
        Container(
          width: double.maxFinite,
          height: 750,
          child: TabBarView(
            controller: _tabcontroller,
            children: [
              ListView.builder(
                itemCount: 1,
                itemBuilder: (_, index) {
                  return Container(
                    height: 700,
                    child: const ProjectScreen(),
                  );
                },
              ),
              ListView.builder(
                itemCount: 1,
                itemBuilder: (_, index) {
                  return Container(
                    height: 700,
                    child: const PhotoScreen(),
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
