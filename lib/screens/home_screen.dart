import 'package:anirudhs_portfolio/screens/components/contact%20screen/contact_screen.dart';
import 'package:anirudhs_portfolio/screens/components/experience%20screen/experience_screen.dart';
import 'package:anirudhs_portfolio/screens/components/endscreen/closing_credits.dart';
import 'package:anirudhs_portfolio/utils/constants.dart';
import 'package:anirudhs_portfolio/screens/main_screen.dart';
import 'package:flutter/material.dart';

import 'components/banner/banner_screen.dart';
import 'components/project screen/project_cards.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final homeKey = GlobalKey();
  final projectKey = GlobalKey();
  final contactKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return MainScreen(
      mainChildren: [
        Container(
          child: HomeBanner(),
          key: homeKey,
        ),
        SizedBox(height: defaultPadding / 2),
        ExperienceScreen(),
        SizedBox(height: defaultPadding / 2),
        Container(
          child: ProjectScreen(),
          key: projectKey,
        ),
        SizedBox(height: defaultPadding / 2),
        Container(
          child: ContactScreen(),
          key: contactKey,
        ),
        SizedBox(height: defaultPadding / 2),
        ClosingCredits(),
      ],
    );
  }
}
